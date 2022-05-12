`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:36 11/24/2020 
// Design Name: 
// Module Name:    grf 
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
module grf(
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
	 integer i;
	 initial
	 begin
		for(i=0;i<=31;i=i+1)GRF[i] <= 0;
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
				$display("@%h: $%d <= %h", PC,rd,data);
			end
		end
	end
	assign data_in_rs = GRF[rs];  //get out1
	assign data_in_rt = GRF[rt];	 //get out2
endmodule
