`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:27 12/16/2020 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input memw,
    input clk,
    input memr,
    input clr,
    input [31:0] add,
    input [31:0] wdata,
	 input [31:0] PC,
    output [31:0] rdata
    );
	 reg [31:0]RAM[1023:0];
//	 wire [31:0]ADD;
	 integer i;
	 
	 initial
	 begin
		for(i=0;i<=1023;i=i+1)RAM[i] = 0;
	 end
	 
	 
	 assign rdata = (memr == 1)?RAM[add[11:2]]:32'hxxxxxxxx;
//	 assign ADD = add << 2;
		 
	 always@(posedge clk)
	 begin
		if(clr)
		begin
			for(i=0;i<=1023;i=i+1)RAM[i] <= 0;
		end
		else
		begin
			if(memw)
			begin
				$display("%d@%h: *%h <= %h", $time,PC, add, wdata);
				RAM[add[11:2]] <= wdata;
			end
		end
	 end
		



endmodule
