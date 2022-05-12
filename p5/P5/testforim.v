`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:56:12 12/17/2020
// Design Name:   IM
// Module Name:   E:/P5/testforim.v
// Project Name:  P5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testforim;

	// Inputs
	reg [31:0] PC;

	// Outputs
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	IM uut (
		.PC(PC), 
		.instr(instr)
	);

	initial begin
		PC = 32'h0000_3000;
		// Add stimulus here

	end
	always #5 PC = PC + 4;
      
endmodule

