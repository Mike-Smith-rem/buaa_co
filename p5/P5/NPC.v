`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:48 12/16/2020 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0] nPC_in,
    input [25:0] IMM,
    input [15:0] RA,
	 input [1:0] PC_flag,
	 output [31:0] nPC_out,
	 output [31:0] PCplus
    );
	 
	 wire [31:0]PC_beq;
	 wire [31:0]PC_j;
	 
	 assign PCplus = nPC_in + 4;
	 assign PC_beq = PCplus + ({16*{RA[15]},RA}<<2);
	 assign PC_j = {nPC_in[31:28],instr[25:0],2'b00};
	 assign nPC_out = (PC_flag == 0)?PCplus:
							(PC_flag == 1)?PC_beq:
							(PC_flag == 2)?PC_j:32'h0000_3000;
	 


endmodule
