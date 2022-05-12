`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:44 10/24/2020 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );
	 reg [31:0] im;
	 integer i;
	 always@(EOp or imm)
	 begin 
	 if(EOp == 2'b00)
	 begin
		im[15:0] = imm[15:0];
		for(i=16;i<32;i=i+1)
			im[i] = imm[15];
	 end
	 else if(EOp == 2'b01)
	 begin
		im[15:0] = imm[15:0];
		for(i=16;i<32;i=i+1)
			im[i] = 0;
	 end
	 else if(EOp == 2'b10)
	 begin
		im[31:16] = imm[15:0];
		for(i=0;i<16;i=i+1)
			im[i] = 0;
	 end
	 else if(EOp == 2'b11)
	 begin 
		im[15:0] = imm[15:0];
		for(i=16;i<32;i=i+1)
			im[i] = imm[15];
		im = im << 2;
	 end
	 end
	 assign ext = im;
endmodule
