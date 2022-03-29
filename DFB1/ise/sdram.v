`timescale 1ns / 1ps
/*
    Copyright (C) 2019, Stephen J. Leary
    All rights reserved.
    
    This file is part of  TF330 (Terrible Fire 030 Accelerator).

    TF330 is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    TF530 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with TF330. If not, see <http://www.gnu.org/licenses/>.
*/


module sdram(

           input        RESET,
           input        CLKCPU,
           input        CLK, 
           input        ACCESS,

           input [31:0] A,
           input [1:0]  SIZ,

           input        AS30,
           input        RW30,
           input        DS30,

           // cache and burst control
           output       CBACK,
           output       CIIN,
           input        CBREQ,
           output       STERM, 
           output       WAIT,

           // ram chip control
           //  SDRAM Control
           output			CLKRAME,
           output [12:0]    ARAM,
           output [1:0] 	BA,
           output			CAS,
           output [3:0] 	DQM,
           output			RAMWE,
           output			RAS,
           output			RAMCS,
           output			RAMOE,
           output READY


    );

`include "sdram_defines.v"

wire        ready;

wire        init_clke;
wire [3:0]  init_command;
wire [12:0] init_address;

reg STERM_D;
reg WAITSTATE;

reg [3:0]   command = CMD_NOP;
reg [3:0]   cycle   = 'd0;
reg [1:0]   bank    = 0;
reg [12:0]  address = 0;

wire refresh;

assign COMMANDNAME = cmd_name(ready ? init_command : command);

localparam MODE = { 3'b000, NO_WRITE_BURST, OP_MODE, CAS_LATENCY, ACCESS_TYPE, BURST_LENGTH};

sdram_init #
(
	.MODE(MODE)
)
INIT(

    .CLK    ( CLK           ),
    .CLKE   ( init_clke     ),
    .RESET  ( RESET         ),

    .CMD    ( init_command  ),
    .ARAM   ( init_address  ),
    .READY  ( ready         ),
    .REFRESH( refresh       )

);

reg refresh_d;
reg refresh_req;

localparam CYCLE_ACCESS = 'b0;
localparam CYCLE_REFRESH = 'b1;

localparam CYCLE_REFRESH_AUTOREFRESH1 = 5'b10011;
localparam CYCLE_REFRESH_AUTOREFRESH2 = 5'b10111;
localparam CYCLE_REFRESH_COMPLETE= 5'b11111;
localparam CYCLE_ACCESS_RW = 5'b00001;
localparam CYCLE_ACCESS_COMPLETE = 5'b00010;
localparam CYCLE_ACCESS_BW1 = 5'b00100;
localparam CYCLE_ACCESS_BW2 = 5'b00101;

reg BURSTING = 1'b0;
reg [1:0] BCOUNT = 2'b11;

// a read cycle at a tag aligned address. 
// disable bursting until speeds are sorted out
wire CAN_BURST = ({A[3:2]} != 2'b00) | CBREQ | ACCESS | ~RW30;
wire [1:0] RAMA = BURSTING ? {A[3:2]} : BCOUNT;

wire BURST_ENDING = (BCOUNT == 2'b11) | BURSTING;

reg cycle_type;
reg can_start;

reg WAIT_BLOCK = 1'b1;
reg [3:0] DQM_D;

always @(posedge CLK or negedge RESET) begin 

    if (RESET == 1'b0) begin 

        command     <= CMD_NOP;
        address     <= 'd0;
        bank        <= 'd0;
        refresh_req <= 'b1;
        refresh_d   <= 'b0;
        cycle       <= 'd0;
        cycle_type  <= 'd0;
		  
    end else begin 

        command <= CMD_NOP;

        DQM_D[0] <= ACCESS | ~RW30 & (A[1] | A[0]);
        DQM_D[1] <= ACCESS | ~RW30 & ((~SIZ[1] & SIZ[0] & ~A[0]) | A[1]);
        DQM_D[2] <= ACCESS | ~RW30 & ((SIZ[1] & ~SIZ[0] & ~A[1] & ~A[0]) | (~SIZ[1] & SIZ[0] & ~A[1]) |(A[1] & A[0]));
        DQM_D[3] <= ACCESS | ~RW30 & ((~SIZ[1] & SIZ[0] & ~A[1] ) | (~SIZ[1] & SIZ[0] & ~A[0] ) | (SIZ[1] & ~A[1] & ~A[0] ) | (SIZ[1] & ~SIZ[0] & ~A[1]));

        if (AS30 == 1'b1) begin 

            can_start <= 1'b0;

        end

        // is a refresh required?
        refresh_d <= refresh;
        if ({refresh, refresh_d} == 2'b01) refresh_req <= 1'b0;

        if (cycle == 'd0) begin 
            
            WAIT_BLOCK <= 1'b1;
            BURSTING <= 1'b1;
            BCOUNT <= 'd0;
            
            if ((ready | can_start) == 1'b0) begin 

                address <= { A[23:11] }; // 128/64MB
//                address <= { A[22:11] }; // 32MB

                if (refresh_req == 1'b0) begin 

                    cycle_type <= CYCLE_REFRESH;
                    cycle[0] <= 'd1;

                end else if ((ACCESS | AS30) == 1'b0) begin 
                    
                    BURSTING <= CAN_BURST;
                    cycle_type <= CYCLE_ACCESS;
                    can_start <= 1'b1; 
                    cycle[0] <= 'd1;

                    command <= CMD_ACTIVE;
                    bank <= A[25:24]; // 128/64MB
//                    bank <= A[24:23]; // 32MB
                
                end

            end

        end else begin 

            // process the in progress cycle.
            cycle <= cycle + 'd1;

            casez  ({cycle_type, cycle}) 

                CYCLE_REFRESH_AUTOREFRESH1: begin 
                    //command			<= CMD_PRECHARGE;
							address[10] 	<= 1'b1;      // precharge all banks
                end

                CYCLE_REFRESH_AUTOREFRESH2: begin 
                    command			<= CMD_AUTO_REFRESH;
                end
                
                CYCLE_ACCESS_RW: begin 
							address[1:0] <= RAMA;
                    address[9:2] <= { A[26], A[10:4] }; // 128/64/32MB
                    address[12:10] <= RW30 ?  3'b000 : 3'b001;
                    command <= RW30 ? CMD_READ : CMD_WRITE;
                    WAIT_BLOCK <= 'b0;
                    end                    

                CYCLE_ACCESS_COMPLETE: begin 
                    
							address[1:0] <= RAMA;
                    address[9:2] <= { A[26], A[10:4] }; // 128/64/32MB
                    address[12:10] <= BURST_ENDING ? 3'b001 : 3'b000; // AUTO PRECHARGE ?
                    command <= RW30 ? CMD_READ : CMD_NOP;
                    BCOUNT <= BCOUNT + 'd1;
                    cycle <= BURST_ENDING ? 'd0 : CYCLE_ACCESS_BW1[3:0];

                end

                CYCLE_REFRESH_COMPLETE: begin 
                    refresh_req <= 1'b1;
                    cycle <= 'd0;
                end

                CYCLE_ACCESS_BW1: begin 
                    WAIT_BLOCK <= 'b1;
                end

                CYCLE_ACCESS_BW2: begin 
                    cycle <= CYCLE_ACCESS_RW[3:0];
                end 

                default: begin 
                    command <= CMD_NOP;
                end 

            endcase

        end

    end

end

reg WRITECYCLE = 1'b1;
always @( negedge AS30 ) begin
	WRITECYCLE <= RW30;
end

wire [2:0] STERM_INT;
FDCP ff_sterm0( .D( WAIT_BLOCK ), 	.C( CLK ), .PRE( ~STERM_INT[1] ), 	.CLR( 1'b0 ), .Q( STERM_INT[0] ) ); 
FDCP ff_sterm1( .D( STERM_INT[0] ), .C( CLK ), .PRE( ~STERM_INT[2] ), 	.CLR( 1'b0 ), .Q( STERM_INT[1] ) ); 


assign RAMOE = ACCESS;
assign DQM = DQM_D;

assign CIIN = 1'b1;//ACCESS;
assign CBACK = BURSTING | CBREQ;

assign RAMCS    = 1'b0;
assign RAS      = ready ? init_command[2] : command[2];
assign CAS      = ready ? init_command[1] : command[1];
assign RAMWE    = ready ? init_command[0] : command[0];

assign ARAM     = ready ? init_address : address;
assign BA       = ready ? 2'b00 : bank;
assign CLKRAME  = 1'b1;

assign STERM = WRITECYCLE ? STERM_INT[1] : WAIT_BLOCK; 

assign READY = ready;

endmodule


