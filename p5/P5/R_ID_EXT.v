`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:57 12/16/2020 
// Design Name: 
// Module Name:    R_ID_EXT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module R_ID_EXT(
    input [31:0] RD1D,
    input [31:0] RD2D,
    input [4:0] rsD,
    input [4:0] rtD,
    input [4:0] rdD,
    input [31:0] externD,
	 input clk,
	 input clr,
	 input flushE,
	 input [31:0] PCD,
    output [31:0] RD1E,
    output [31:0] RD2E,
    output [4:0] rsE,
    output [4:0] rtE,
    output [4:0] rdE,
    output [31:0] externE,
	 output [31:0] PCE
    );
	 
	 reg [31:0]RD1,RD2,extern,PC;
	 reg [4:0]rs,rt,rd;
	 
	 initial 
	 begin
		RD1 = 0;
		RD2 = 0;
		extern = 0;
		rs = 0;
		rt = 0;
		rd = 0;
		PC = 0;
	 end
	 
	 always@(posedge clk)
	 begin		
		if(flushE || clr)
		begin
			RD1 <= 0;
			RD2 <= 0;
			extern <= 0;
			rs <= 0;
			rt <= 0;
			rd <= 0;
			PC <= 0;
		end
		else
		begin
			RD1 <= RD1D;
			RD2 <= RD2D;
			extern <= externD;
			rs <= rsD;
			rt <= rtD;
			rd <= rdD;
			PC <= PCD;
		end
	 end
	 
	 assign RD1E = RD1;
	 assign RD2E = RD2;
	 assign externE = extern;
	 assign rsE = rs;
	 assign rtE = rt;
	 assign rdE = rd;
	 assign PCE = PC;

endmodule
