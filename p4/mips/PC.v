`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:54 11/24/2020 
// Design Name: 
// Module Name:    IM 
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
 module IM(
    input [31:0] PC,
    output [31:0] instr
    );
	 reg [31:0]ROM[1023:0];
	 integer i;
	 initial
	 begin
		for(i=0;i<=1023;i=i+1)
		begin
			ROM[i] = 0;
		end
		$readmemb("tempp.txt",ROM);
	 end
	 assign instr = ROM[PC[11:2]];

endmodule



