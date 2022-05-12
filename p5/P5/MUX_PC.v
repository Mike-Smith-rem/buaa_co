`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:56 12/16/2020 
// Design Name: 
// Module Name:    MUX_PC 
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
module MUX_PC(
    input [31:0] PCplus,
    input [31:0] PCextern,
    input [31:0] PCjump,
	 input [31:0] PCtemp,
    input [1:0] sel,
    output [31:0] out
    );
	 assign out = (sel == 0)?PCplus:
					  (sel == 1)?PCextern:
					  (sel == 2)?PCjump:
					  (sel == 3)?PCtemp:0;


endmodule
