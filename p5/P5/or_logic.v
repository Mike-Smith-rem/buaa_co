`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:11 11/24/2020 
// Design Name: 
// Module Name:    or_logic 
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
module or_logic(
    input addu,
    input subu,
    input jr,
    input beq,
    input lui,
    input lw,
    input ori,
    inout sw,
    input j,
    input jal,
    output regdst,
    output j26,
    output ALUsrc,
    output Jal,
    output memtoreg,
    output Jr,
    output regw,
    output memw,
    output memr,
    output Beq,
    output signop,
    output zeroop,
    output [2:0] ALU,
    );
	 assign regdst = addu | subu;
	 assign ALUsrc = lui | lw | ori | sw;
	 assign memtoreg = lw;
	 assign regw = addu | subu | lui | lw | ori | jal;//write in the grf
	 assign memw = sw;
	 assign memr = lw;
	 assign Beq = beq;
	 assign signop = lw | beq | sw ;//extern
	 assign zeroop = ori;
	 assign ALU[0] = subu | beq | ori;
	 assign ALU[1] = lw | addu | subu | beq | sw | lui;
	 assign ALU[2] = lui;//no need for alu_count
	 assign j26 = j | jal;
	 assign Jal = jal;
	 assign Jr = jr;


endmodule
