`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:52 11/25/2020
// Design Name:   mips
// Module Name:   E:/mips/testbench.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg reset;
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 1;
				end
		// Wait 100 ns for global reset to finish
		// Add stimulus here
	always #5 clk = ~clk;

      
endmodule

