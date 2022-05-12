`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:48:30 12/04/2020
// Design Name:   main
// Module Name:   E:/mips/testofmain.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofmain;

	// Inputs
	reg reset;
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	always #5 clk = ~clk;
      
endmodule

