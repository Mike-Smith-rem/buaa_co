`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:36 12/04/2020
// Design Name:   EXT
// Module Name:   E:/mips/testofEXT.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofEXT;

	// Inputs
	reg [15:0] im;
	reg zero_extern;
	reg sign_extern;

	// Outputs
	wire [31:0] extern;

	// Instantiate the Unit Under Test (UUT)
	EXT uut (
		.im(im), 
		.zero_extern(zero_extern), 
		.sign_extern(sign_extern), 
		.extern(extern)
	);

	initial begin
		// Initialize Inputs
		im = 16'h8001;
		zero_extern = 0;
		sign_extern = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 begin
		zero_extern = ~zero_extern;
		sign_extern = ~sign_extern;
		end
      
endmodule

