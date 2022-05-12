`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:06 11/24/2020 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] im,
    input zero_extern,
    input sign_extern,
    output [31:0] extern
    );
	 reg [31:0] zero;
	 reg [31:0] sign;
	 integer i;
	 wire ops;
	 or (ops,~zero_extern,sign_extern);
	 
	 always@(im)
	 begin
			zero[15:0] = im[15:0]; 
		for(i=16;i<=31;i=i+1)
			zero[i] = 0;
			
			
			sign[15:0] = im[15:0];
		for(i=16;i<=31;i=i+1)
			sign[i] = im[15];
	 end
	 
	 assign extern = (ops == 0)?zero : sign;


endmodule
