`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:08 12/16/2020 
// Design Name: 
// Module Name:    R_EXT_MEM 
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
module R_EXT_MEM(
    input [31:0] addE,
    input [31:0] wdataE,
    input [4:0] rd_rsE,
    input clk,
	 input clr,
	 input [31:0] PCE,
    output [31:0] addM,
    output [31:0] wdataM,
    output [4:0] rd_rsM,
	 output [31:0] PCM
    );
	 
	 reg [31:0]add;
	 reg [31:0] wdata,PC;
	 reg [4:0] rd_rs;
	 
	 initial 
	 begin
		add = 0;
		wdata = 0;
		PC = 0;
		rd_rs = 0;
	 end
	 
	 always@(posedge clk)
	 begin
		if(clr)
		begin
			add <= 0;
			wdata <= 0;
			PC <= 0;
			rd_rs <= 0;
		end
		else 
		begin
			add <= addE;
			wdata <= wdataE;
			rd_rs <= rd_rsE;
			PC <= PCE;
		end
	 end
	 
	 assign addM = add;
	 assign wdataM = wdata;
	 assign rd_rsM = rd_rs;
	 assign PCM = PC;


endmodule
