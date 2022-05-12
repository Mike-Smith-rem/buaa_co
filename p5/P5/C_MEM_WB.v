`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:03:24 12/17/2020 
// Design Name: 
// Module Name:    C_MEM_WB 
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
module C_MEM_WB(
    input regwM,
    input memtoregM,
	 input jjalM,
    input clk,
	 input clr,
	 input [2:0] T_new_M,
    output regwW,
    output memtoregW,
	 output jjalW,
	 output [2:0]T_new_W
    );
	 reg regw,memtoreg,jjal;
	 reg [2:0] T_new;
	 
	 initial 
	 begin
		regw = 0;
		memtoreg  = 0;
		T_new = 0;
		jjal = 0;
	 end
	 
	 always@(posedge clk)
	 begin
		if(clr)
		begin
			regw <= 0;
			memtoreg  <= 0;
			T_new <= 0;
			jjal <= 0;
		end
		else 
		begin
			regw <= regwM;
			memtoreg <= memtoregM;
			jjal <= jjalM;
			if(T_new_M >= 1)T_new <= T_new_M - 1;
			else T_new <= 0;
		end
	 end
	 
	 assign T_new_W = T_new;
	 assign regwW = regw;
	 assign memtoregW = memtoreg;
	 assign jjalW = jjal;



endmodule
