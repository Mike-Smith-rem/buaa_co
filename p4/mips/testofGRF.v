`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:48:30 12/04/2020
// Design Name:   grf
// Module Name:   E:/mips/testofGRF.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: grf
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofGRF;

	// Inputs
	reg [31:0] data;
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [31:0] PC;
	reg clr;
	reg clk;
	reg Regw;

	// Outputs
	wire [31:0] data_in_rs;
	wire [31:0] data_in_rt;

	// Instantiate the Unit Under Test (UUT)
	grf uut (
		.data(data), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.PC(PC), 
		.clr(clr), 
		.clk(clk), 
		.Regw(Regw), 
		.data_in_rs(data_in_rs), 
		.data_in_rt(data_in_rt)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		rs = 4;
		rt = 4;
		rd = 0;
		PC = 32'h0000_3000;
		clr = 0;
		clk = 0;
		Regw = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 clk = ~ clk;
	always@(posedge clk)
	fork
		Regw = ~Regw;
		PC = PC + 4;
		data = data + 4;
		#5 rs = rs + 1;
		#5 rt = rt + 1;
		rd = rd + 1;
	join
      
endmodule

