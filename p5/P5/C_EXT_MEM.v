`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:47 12/16/2020 
// Design Name: 
// Module Name:    C_EXT_MEM 
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
module C_EXT_MEM(
    input regwE,
    input memtoregE,
    input memwE,
	 input memrE,
    input clk,
	 input clr,
	 input jjalE,
	 input [2:0] T_new_E,
    output regwM,
    output memtoregM,
    output memwM,
	 output memrM,
	 output jjalM,
	 output [2:0]T_new_M
    );
	 reg regw,memtoreg,memw,memr,jjal;
	 reg [2:0] T_new;
	 
	 initial
	 begin
		regw = 0;
		memtoreg = 0;
		memw = 0;
		memr = 0;
		T_new = 0;
		jjal = 0;
	 end
	 
	 always@(posedge clk)
	 begin
	   if(clr)
		begin
			regw <= 0;
			memtoreg <= 0;
			memw <= 0;
			memr <= 0;
			T_new <= 0;
			jjal <= 0;
		end
		else
		begin
			regw <= regwE;
			memtoreg <= memtoregE;
			memw <= memwE;
			memr <= memrE;
			jjal <= jjalE;
			if(T_new_E >= 1)T_new <= T_new_E-1;
			else T_new <= 0;
		end
	 end
	 
	 assign T_new_M = T_new;
	 assign regwM = regw;
	 assign memtoregM = memtoreg;
	 assign memwM = memw;
	 assign memrM = memr;
	 assign jjalM = jjal;


endmodule
