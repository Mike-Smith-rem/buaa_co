`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:23 12/16/2020 
// Design Name: 
// Module Name:    MUX_RD1 
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
module MUX_RD1(
    input [31:0] RD1,
    input [31:0] RD2,
    input flag,
    output [31:0] WD
    );
	 
	 assign WD = (flag == 0)?RD1:RD2;


endmodule
