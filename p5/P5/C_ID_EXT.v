`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:21 12/16/2020 
// Design Name: 
// Module Name:    C_ID_EXT 
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
`include "DEFINE.v"
module C_ID_EXT(
	 input [5:0]op,
	 input [5:0]fun,
    input regwD,
    input memtoregD,
    input memwD,
	 input memrD,
    input [2:0]ALUD,
    input ALUsrcD,
	 input jjalD,
    input regdstD,
	 input clk,
	 input clr,
	 input flushE,
    output regwE,
    output memtoregE,
    output memwE,
	 output memrE,
    output [2:0]ALUE,
    output ALUsrcE,
	 output jjalE,
    output regdstE,
	 output [2:0]T_new_E
    );
	 reg regw,memtoreg,memw,memr,ALUsrc,regdst,jjal;
	 reg [2:0]ALU;
	 reg [5:0]ops,funs;
	 
	 initial
	 begin
	   ops <= 0;
		funs <= 0;
		regw <= 0;
		memtoreg <= 0;
		memw <= 0;
		memr <= 0;
		ALUsrc <= 0;
		regdst <= 0;
		ALU <= 0;
		jjal <= 0;
	 end
	 
	 always@(posedge clk)
	 begin
	   if(flushE || clr)
		begin
			ops <= 0;
			funs <= 0;
			regw <= 0;
			memtoreg <= 0;
			memw <= 0;
			memr <= 0;
			ALUsrc <= 0;
			regdst <= 0;
			ALU <= 0;
			jjal <= 0;
		end
	   else if(flushE != 1)
		begin
		   ops <= op;
			funs <= fun;
			regw <= regwD;
			memtoreg <= memtoregD;
			memw <= memwD;
			memr <= memrD;
			ALU <= ALUD;
			ALUsrc <= ALUsrcD;
			regdst <= regdstD;
			jjal <= jjalD;
		end
	 end
	 
	 assign regwE = regw;
	 assign memtoregE = memtoreg;
	 assign memwE = memw;
	 assign memrE = memr;
	 assign ALUE = ALU;
	 assign ALUsrcE = ALUsrc;
	 assign regdstE = regdst;
	 assign jjalE = jjal; 
	 
	 assign T_new_E = (ops == `R && funs == `addu)?1:
						   (ops == `R && funs == `subu)?1:
						   (ops == `ori)?1:
						   (ops == `lw)? 2:
						   (ops == `sw)? 0:
						   (ops == `beq)?0:
						   (ops == `lui)?1:
						   (ops == `j)?  0:
						   (ops == `jal)?2:
						   (ops == `R && funs == `jr)?0:0;


endmodule
