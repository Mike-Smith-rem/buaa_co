`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:01 12/16/2020 
// Design Name: 
// Module Name:    R_IF_ID 
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
module R_IF_ID(
    input [31:0] instr_in,
    input [31:0] PCplus_in,
	 input clk,
	 input clr,
    output [31:0] instr_out,
    output [31:0] PCplus_out,
    input FlushD
    );
	 
	 reg [31:0]register1;
	 reg [31:0]register2;
	 
	 initial
	 begin
		register1 = 0;
		register2 = 0;
	 end
	 
	 always@(posedge clk)
	 begin
	   if(clr == 1)
		begin
			register1 <= 0;
			register2 <= 0;
		end
		else
		begin		
			if(FlushD != 1)
			begin
				register1 <= instr_in;
				register2 <= PCplus_in;
			end
			else if(FlushD == 1)
			begin
				register1 <= register1;
				register2 <= register2;
			end
		end
	 end
	 assign instr_out = register1;
	 assign PCplus_out = register2;


endmodule
