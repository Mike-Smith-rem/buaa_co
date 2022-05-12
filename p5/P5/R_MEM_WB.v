`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:14 12/16/2020 
// Design Name: 
// Module Name:    R_MEM_WB 
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
module R_MEM_WB(
    input [31:0] rdataM,
    input [31:0] addM,
    input [4:0] rt_rdM,
    input clk,
	 input clr,
	 input [31:0] PCM,
    output [31:0] rdataW,
    output [31:0] addW,
    output [4:0] rt_rdW,
	 output [31:0] PCW
    );
	 
	 
	 reg [31:0]add,rdata,PC;
	 reg [4:0] rt_rd;
	 
	 initial 
	 begin
		add = 0;
		rdata = 0;
		PC = 0;
		rt_rd = 0;
	 end
	 
	 always@(posedge clk)
	 begin
		if(clr)
		begin
			add <= 0;
			rdata <= 0;
			PC <= 0;
			rt_rd <= 0;
		end
		else 
		begin
			add <= addM;
			rdata <= rdataM;
			rt_rd <= rt_rdM;
			PC <= PCM;
		end
	 end
	 
	 assign rdataW = rdata;
	 assign rt_rdW = rt_rd;
	 assign addW = add;
	 assign PCW = PC;

endmodule
