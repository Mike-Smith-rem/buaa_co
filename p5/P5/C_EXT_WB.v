`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:32 12/16/2020 
// Design Name: 
// Module Name:    C_EXT_WB 
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
module C_EXT_WB(
    input regwM,
    input memtoregM,
    input clk,
    output regwW,
    output memtoregW
    );
	 reg regw,memtoreg;
	 
	 always@(posedge clk)
	 begin
		regw <= regwM;
		memtoreg <= memtoregM;
	 end
	 
	 assign regwW = regw;
	 assign memtoregW = memtoreg;


endmodule
