`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:24:18 11/25/2020 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] PC,
    input clr,
    input clk,
    output [31:0] instr,
    output [31:0] PCplus,
	 output [31:0] PCout
    );
	 reg [31:0]rPC;
	 initial
	 begin
		rPC = 32'h0000_3000;
	 end
	 always@(posedge clk)
	 begin
		if(clr)rPC <= 32'h0000_3000;
		else rPC <= PC;
	 end
	 
	 assign PCout = rPC;
	 assign PCplus = PCout + 4;
	 
	 IM IM (
    .PC(PCout), 
    .instr(instr)
    );
	 

	 


endmodule 