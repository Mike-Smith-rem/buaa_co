`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:48 10/25/2020
// Design Name:   string
// Module Name:   E:/string/testbench.v
// Project Name:  string
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
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
	reg clk;
	reg clr;
	reg [8:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		in = "2";
		#10;
		in = "*";
		#10;
		in = "1";
		#10;
		in = "+";
		#10;
		in = "3";
		#7;
		clr = 1;
		#10;
		clr = 0;
		#10;
		in = "2";

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	always #5 clk = ~clk;
endmodule

