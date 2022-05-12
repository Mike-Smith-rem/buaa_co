`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:20 11/26/2020
// Design Name:   PC
// Module Name:   E:/mips/test_IFU.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_IFU;

	// Inputs
	reg [31:0] PC;
	reg clr;
	reg clk;

	// Outputs
	wire [31:0] instr;
	wire [31:0] PCplus;
	wire [31:0] PCout;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.PC(PC), 
		.clr(clr), 
		.clk(clk), 
		.instr(instr), 
		.PCplus(PCplus), 
		.PCout(PCout)
	);

	initial begin
		// Initialize Inputs
		clr = 0;
		clk = 0;
		PC = 8'h0000_3000;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 
	begin
		clk = ~clk;
	end
	always@(posedge clk)
	begin
		PC <= PCplus;
	end
	
		
      
endmodule

