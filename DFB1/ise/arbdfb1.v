`timescale 1ns / 1ps

/* DFB1 is Copyright 2019-21 D Henderson.
/* SDRAM controller is based on work Copyright S J Leary 
/* Released under the terms of the GPLv2
/* See LICENCE.TXT
*/

module ARBDFB1 (
	input DISABLED,
	input CLOCK,
	input _RST,
	input _XAS,
	input _XBG,
	inout _XBR,
	inout _XBGK,
	input _AS,
	input _BG,

	output _BR,
	output _BGK,
	output _HLT,
	output _XHALT,
	
	output HIGHZ,
	output [3:0] STATE
);

parameter START = 4'd0;
parameter REQ = 4'd1;
parameter ACCEPT = 4'd2;
parameter HELD = 4'd3;
parameter REL = 4'd4;

reg [3:0] state = 4'd0;
reg [3:0] nextstate = 4'd0;
reg xbr = 1'bz;
reg xbgk = 1'bz;
reg br = 1'bz;
reg bgk = 1'bz;

always @( posedge CLOCK  ) begin
	if( _RST & DISABLED ) begin
		case(state)
		START: begin	
			if( _XBGK && _XBR && _XAS ) begin
				nextstate <= REQ;
			end
			else begin
				nextstate <= state;
			end
		end
		REQ: begin
			if( ~_XBGK ) begin
				nextstate <= START;
			end
			else if( ~_XBG && _XAS ) begin
				nextstate <= ACCEPT;
			end
			else begin
				nextstate <= state;
			end
		end
		ACCEPT: begin
			nextstate <= HELD;
		end
		HELD: begin
			if( ~_XBR && ~_BG && _AS ) begin
				nextstate <= REL;		
			end
			else begin
				nextstate <= state;
			end
		end
		REL: begin
			if( _XBGK && _XAS && _XBR && _XBG ) begin
				nextstate <= START;		
			end
			else begin
				nextstate <= state;
			end
		end
		default: begin
			nextstate <= REL;
		end
		endcase
	end
	else begin
			nextstate <= START;
	end

	state <= nextstate;
end

always @(state) begin
	case(state)
		REQ: begin	
			xbr <= 1'b0;
			xbgk <= 1'bz;
			br <= 1'b1;
			bgk <= 1'b0;
		end
		ACCEPT: begin
			xbr <= 1'b0;
			xbgk <= 1'b0;
			br <= 1'b1;
			bgk <= 1'b0;
		end
		HELD: begin
			xbr <= 1'bz;
			xbgk <= 1'b0;
			br <= _XBR;
			bgk <= 1'b1;
		end
		REL: begin
			xbr <= 1'bz;
			xbgk <= 1'bz;
			br <= _XBR;
			bgk <= 1'b0;
		end
		default: begin
			xbr <= 1'bz;
			xbgk <= 1'bz;
			br <= 1'b1;
			bgk <= 1'b0;
		end
	endcase
end

assign _XBR = DISABLED && ~xbr ? 1'b0 : 1'bz; // special format as it's bidir
assign _XBGK = DISABLED && ~xbgk ? 1'b0 : 1'bz;  // special format as it's bidir
assign _BR = DISABLED ? br : 1'b0;
assign _BGK = DISABLED ? bgk : 1'b0;
assign HIGHZ = state == HELD;
assign _HLT = _RST ? DISABLED : 1'b0;
assign _XHALT = _RST ? ~DISABLED : 1'bz;

assign STATE = state;
endmodule
