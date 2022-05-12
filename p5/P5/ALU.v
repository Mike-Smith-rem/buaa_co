`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:32:19 12/17/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [2:0] ALUop,
    input [31:0] data_in_rs,
    input [31:0] data_in_rt,
    output [31:0] result
    );
	 
	 assign result = (ALUop == 3'b000) ? data_in_rs & data_in_rt:
						  (ALUop == 3'b001) ? data_in_rs | data_in_rt:
		              (ALUop == 3'b010) ? data_in_rs + data_in_rt:
		              (ALUop == 3'b011) ? data_in_rs - data_in_rt:
		              (ALUop == 3'b100) ? data_in_rs ^ data_in_rt:
		              (ALUop == 3'b101) ? data_in_rs / data_in_rt:
		              (ALUop == 3'b110) ? data_in_rt << 16:0;

endmodule
