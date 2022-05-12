`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:43:43 12/17/2020
// Design Name:   main
// Module Name:   E:/P5/testbench.v
// Project Name:  P5
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

module testbench;

	// Inputs
	reg clk;
	reg clr;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.clr(clr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish

        
		// Add stimulus here

	end
	always begin
		#2;
		clk = ~clk;
	end
/*	always@(posedge clk)
	begin
		if(uut.PC.PC_in + 4 >= 32'h00004000)$finish;
	end
*/      
endmodule

