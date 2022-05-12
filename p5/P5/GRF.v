`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:53 12/16/2020 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [31:0] data,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
	 input [31:0] PC,
	 input clr,
    input clk,
    input Regw,
    output [31:0] data_in_rs,
    output [31:0] data_in_rt
    );
	 reg [31:0] GRF[31:0];
	 reg [31:0] data_rs,data_rt;
	 integer i;
	 initial
	 begin
		for(i=0;i<=31;i=i+1)GRF[i] <= 0;
		data_rs = 0;
		data_rt = 0;
	 end
    
	 always@(posedge clk)
	 begin
		if(clr)
		begin
			for(i=0;i<=31;i=i+1)GRF[i] <= 0;
		end
		else 
		begin
			if(Regw == 1&&rd != 0)
			begin
				GRF[rd] <= data;
				$display("%d@%h: $%d <= %h", $time,PC,rd,data);
			end
		end
	end
	
	always@(negedge clk)
	begin
		data_rs <= GRF[rs];
		data_rt <= GRF[rt];
	end
	assign data_in_rs = data_rs;  //get out1
	assign data_in_rt = data_rt;	 //get out2
endmodule



