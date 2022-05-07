`timescale 1ns / 1ps

/* DFB1 is Copyright 2019-21 D Henderson.
/* SDRAM controller is based on work Copyright S J Leary 
/* Released under the terms of the GPLv2
/* See LICENCE.TXT
*/

module dfb1r5(

	input [31:0]    	A,
	input [2:0] 	FC,
	inout	BERR,
	input   			XCPUCLK,
	output FPUCLK,
	input OPTION1,
	input OPTION2,
	output XHALT,
	input EN_FLASH,
	input ENABLE,
	input			XBG,
	inout			XBR,
	output BMODE,
	inout			XBGK,
	input				BG,
	output			BR,
	output			BGK,
	output  			HLT,
	input P142,
	input				RST,
	output   		CPUCLK,
	inout XDTACK,
	input XRW,
	output  			CLKRAM,
	output			UDS,
	output			LDS,
	inout				XAS,
	output AVEC,
	inout [1:0] 	DSACK,
	input [1:0] FPUDSACK,
	input				AS,
	input [1:0] 	SIZ,
	input				DS,
	output ROM_A19,
	input [7:0] D,
	output [1:5] LED,

	input P50,
	input P61,
	input P106,
	input P110,

	input   			CLKOSC,
	input KHZ500,
	input CBREQ,
	output			CBACK,
	output [3:0] 	DQM,
	output [12:0]  MA,
	output FPUCS,
	output			STERM,
	output			RAMWE,
	output			CAS,
	output			RAS,
	output [1:0] 	BA,
	output BOE,
	output ROMOE,
	output ROMCE

);


// EmuTOS doesn't seem to like booting at full speed -- give it time to get started.
reg [20:0] resetcounter = 'd0;
always @( negedge KHZ500) begin
	if( ~RST ) begin
		resetcounter <= 'd0;
	end else begin
		resetcounter <= resetcounter + 'd1;
	end
end

wire speedallowtrigger = resetcounter[20];
wire resetblock; // active low
FDCP latch_resetblock( .D( 1'b1 ), .C( ~speedallowtrigger ), .CLR( ~RST ), .PRE( 1'b0 ), .Q( resetblock ) );

/* config section */

reg DISABLE = 1'b1;
reg DISABLE_FLASH_ROM = 1'b1;
reg DISABLE_ALTRAM = 1'b1;
reg DISABLE_FAST = 1'b1;
always @(posedge RST) begin
	DISABLE <= ENABLE;
	DISABLE_FLASH_ROM <= EN_FLASH;
	DISABLE_FAST <= OPTION2;
end

wire HIGHZ;

wire [3:0] state;

wire hlt;
/* optimise */
ARBDFB1 arbdfb1 (
	.DISABLED( DISABLE ),
	.CLOCK(~XCPUCLK),
	._RST(RST),
	._XAS(XAS),
	._XBR(XBR),
	._XBG(XBG),
	._XBGK(XBGK),
	._AS(AS),
	._BG(BG),

	._BR(BR),
	._BGK(BGK),
	._HLT(HLT),
	._XHALT(XHALT),
	.HIGHZ(HIGHZ),
	
	.STATE(state)
);

wire fpu = {FC,A[19:16]} != 7'b1110010; // co-processor decode
wire ttram_access = ~DISABLE_ALTRAM | ( A[27:24] == 'hF | A[27:24] == 'h0 );
wire rom_access =  ~DISABLE_FLASH_ROM | A[27:20] != 8'h0E; // Flash ROM
wire dsp_access = A[27:8] != 20'h0FFA2;
wire berr_ram = OPTION1 ? A[26:24] != 3'b101 : A[27:24] != 4'b1001; // 128MB / 64 switch
wire reg_access = A[31:16] != 16'h00F1; // our register F1xxxx

reg flash_access = 1'b1;
always @(negedge XAS ) begin
	flash_access <= ~( ( A[23:20] == 4'hF ) & ( ( A[19:17] == 3'b100 ) | ( { A[19], |A[18:17] } == 2'b01 ) ) ); // F20000-F9FFFF -- F && ( 8/9 || 2-7 )
end


reg CLKOSC_2 = 1'b1;
always @( posedge CLKOSC ) begin
	CLKOSC_2 <= ~CLKOSC_2;
end

// we don't allow switching from slow back to fast for two clock cycles after XDTACK -- this gives full ST ram access speed for negligible TTRAM overhaed
wire [1:0] xdtack_delay;
FDCP ff_xdtack1( .D( XDTACK ), .C( ~XCPUCLK), .CLR( 1'b0 ), .PRE( 1'b0 ), .Q(xdtack_delay[0]) );
FDCP ff_xdtack2( .D( xdtack_delay[0] ), .C( ~XCPUCLK  ), .CLR( 1'b0 ), .PRE( 1'b0 ), .Q(xdtack_delay[1]) );
wire clockholdoff = &xdtack_delay[1:0];
wire lowspeed = DISABLE_FAST & resetblock & ( AS | ~ttram_access | ~rom_access | ~fpu ) & clockholdoff ; // low active (rom access here too)


wire CPUCLK_D;
wire clock_block;

clockmux cm1 ( .clk0( CLKOSC ), 
	.clk1( XCPUCLK  ), 
	.select( lowspeed ),
	.active1( clock_block ),
	.out_clock( CPUCLK_D ) 
);

/* RAM */

sdram SDRAM (
	// inputs
	.RESET(RST),

	.CLKCPU (CPUCLK),
	.CLK    (CLKRAM),

	.A(A),
	.SIZ(SIZ),

	.AS30(AS),
	.RW30(XRW),
	.DS30(DS),
	.CBREQ(CBREQ),

	// outputs
	.ACCESS(ttram_access),
	.CBACK(CBACK),
	.STERM(STERM),

	.ARAM(MA),
	.BA(BA),

	.CAS(CAS),
	.RAS(RAS),

	.DQM(DQM),

	.RAMWE(RAMWE)
);

/*******/


wire [5:0] AS_DELAY;
FDCP ff_asdly0( .D(AS), .C( ~CPUCLK ), .CLR(1'b0), .PRE( AS ), .Q(AS_DELAY[0]) );          // timings as per 50MHz
FDCP ff_asdly1( .D(AS_DELAY[0]), .C( ~CPUCLK ), .CLR(1'b0), .PRE( AS ), .Q(AS_DELAY[1]) ); // 20ns
FDCP ff_asdly2( .D(AS_DELAY[1]), .C( ~CPUCLK ), .CLR(1'b0), .PRE( AS ), .Q(AS_DELAY[2]) ); // 40ns
FDCP ff_asdly3( .D(AS_DELAY[2]), .C( ~CPUCLK ), .CLR(1'b0), .PRE( AS ), .Q(AS_DELAY[3]) ); // 60ns // this might be being a bit naughty -- change to [4] if unstable
FDCP ff_asdly4( .D(AS_DELAY[3]), .C( ~CPUCLK ), .CLR(1'b0), .PRE( AS ), .Q(AS_DELAY[4]) ); // 80ns
FDCP ff_asdly5( .D(AS_DELAY[4]), .C( ~CPUCLK ), .CLR(1'b0), .PRE( AS ), .Q(AS_DELAY[5]) ); // 100ns


// synthesise flash xdtack
wire [1:0] flash_xas_delay;
FDCP ff_flash_xas_delay1( .D(  XAS | flash_access ), 				.C( ~XCPUCLK ), .PRE( XAS ), .CLR( 1'b0 ), .Q( flash_xas_delay[0] ) );
FDCP ff_flash_xas_delay2( .D(  flash_xas_delay[0] ), 				.C( ~XCPUCLK ), .PRE( XAS ), .CLR( 1'b0 ), .Q( flash_xas_delay[1] ) );
wire FLASH_DTACK = flash_xas_delay[1];

assign BOE = 1'b0; //ttram_access | AS;


reg AVECCYCLE = 1'b1;
always @(negedge AS) begin
	AVECCYCLE <= ( FC[2:0] != 3'b111 | A[19:16] != 4'b1111 ) | ( A[3:1] != 'd2 && A[3:1] != 'd4 );
end

wire [2:0] oldxdtack;
FDCP ff_xdtackdly1( .D( XDTACK ), .C( XCPUCLK ), .CLR(1'b0), .PRE( 1'b0 ), .Q(oldxdtack[0]) );
FDCP ff_xdtackdly2( .D(oldxdtack[0]), .C( XCPUCLK ), .CLR(1'b0), .PRE( 1'b0 ), .Q(oldxdtack[1]) );
FDCP ff_xdtackdly3( .D(oldxdtack[1]), .C( XCPUCLK ), .CLR(1'b0), .PRE( 1'b0 ), .Q(oldxdtack[2]) );
wire xas_holdoff_dsp = ~dsp_access & ~oldxdtack[1] & XAS;


wire [1:0] RAM_DTACK = { XDTACK | ~dsp_access | ~AVECCYCLE, 1'b1 };
wire [1:0] ROM_DTACK = { rom_access | ( lowspeed ? AS_DELAY[4] : AS_DELAY[1] ), 1'b1 };
wire [1:0] DSP_DTACK = { 1'b1, XDTACK | dsp_access };
wire [1:0] FPU_DSACK_INT = fpu | { FPUDSACK[1], FPUDSACK[0] };
wire [1:0] REG_DSACK = { reg_access | ( AS_DELAY[4] & flash_xas_delay[1] ), 1'b1 }; // only really an 8 bit port, but pretend to be 16 to keep compatibility when being read from the Falcon's motherboard in disabled state

assign DSACK = ( RAM_DTACK & ROM_DTACK & DSP_DTACK & FPU_DSACK_INT & { FLASH_DTACK, 1'b1 } );


// assignments
assign FPUCS = fpu;

wire xas =  AS | xas_holdoff_dsp | ~ttram_access | ~rom_access | ~fpu;

wire	fuds = xas | ( dsp_access ? ( ~XRW & A[0] ) : A[0] );
wire	flds = xas | ( dsp_access ? ( ~XRW & ({A[0], SIZ[1:0]} == 3'b001) ) : ~A[0] );
wire fuds_d;
wire flds_d;
FDCP ff_uds( .D( fuds ), .C( XCPUCLK ), .CLR(~fuds), .PRE( XAS & dsp_access ), .Q(fuds_d) );
FDCP ff_lds( .D( flds ), .C( XCPUCLK ), .CLR(~flds), .PRE( XAS & dsp_access ), .Q(flds_d) );


assign XAS = HIGHZ ? xas 			: 1'bz;
assign UDS = HIGHZ ? fuds_d 	: 1'bz;
assign LDS = HIGHZ ? flds_d 	: 1'bz;
assign AVEC = ~DISABLE | AVECCYCLE | XDTACK;

assign XDTACK = DISABLE ? 1'bz : ( FLASH_DTACK ? 1'bz : 1'b0 ); // inactive when accelerator enabled, becomes a bus slave when disabled

assign CPUCLK = CPUCLK_D;
assign FPUCLK = CLKOSC_2;


assign CLKRAM = CPUCLK_D;

reg [6:0] berrcnt = 'd1;
always @( posedge CPUCLK ) begin
	if( AS | ~HIGHZ | fpu ) begin
		berrcnt <= 'd0;
	end
	else begin
		berrcnt <= berrcnt + 'd1;
	end
end


assign BMODE =  HIGHZ ? 1'b0 : 1'bz;
wire BERR_D = AS | ( berr_ram & ~berrcnt[6] ); // berrcnt[6] == no answer in 64 rings
assign BERR = HIGHZ ? ( BERR_D ? 1'bz : 1'b0 ) : 1'bz;

assign ROMCE = DISABLE ? rom_access : flash_access;
assign ROMOE = DISABLE ? rom_access | ~XRW : flash_access | ~XRW;


assign ROM_A19 = 1'b0;// A[19];

assign LED[1] = BGK; 	// board master
assign LED[2] = lowspeed; // speed
assign LED[3] = ~DSACK[0];		// dsp & part FPU
assign LED[4] = ~STERM; // AltRAM
assign LED[5] = ~(RST & FPUCS);	// reset active or FPU

endmodule
