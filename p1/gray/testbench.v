`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:36 10/25/2020
// Design Name:   gray
// Module Name:   E:/gray/testbench.v
// Project Name:  gray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
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
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		En = 1;
		#205;
		Reset = 1;
		#10;
		Reset = 0;
		// Wait 100 ns for global reset to finish
		// Add stimulus here
	end
	always #10 Clk = ~Clk;
endmodule

