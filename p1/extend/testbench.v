`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:36:09 10/24/2020
// Design Name:   ext
// Module Name:   E:/extend/testbench.v
// Project Name:  extend
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
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
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = -5;
		EOp = 0;
		#10;
		EOp = 1;
		#10;
		EOp = 2;
		#10;
		EOp = 3;
		#10;
		EOp = 4;
		#10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

