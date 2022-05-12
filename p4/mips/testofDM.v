`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:35 12/04/2020
// Design Name:   DM
// Module Name:   E:/mips/testofDM.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofDM;

	// Inputs
	reg memw;
	reg clk;
	reg memr;
	reg clr;
	reg [9:0] add;
	reg [31:0] wdata;
	reg [31:0] PC;

	// Outputs
	wire [31:0] rdata;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.memw(memw), 
		.clk(clk), 
		.memr(memr), 
		.clr(clr), 
		.add(add), 
		.wdata(wdata), 
		.PC(PC), 
		.rdata(rdata)
	);

	initial begin
		// Initialize Inputs
		memw = 0;
		clk = 0;
		memr = 1;
		clr = 0;
		add = 0;
		wdata = 0;
		PC = 32'h0000_3000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 clk = ~clk;
	always@(posedge clk)
	begin
		PC <= PC + 4;
		wdata <= wdata + 32;
		add <= add + 1;
		memw <= ~memw;
		memr <= ~memr;
	end
		
      
endmodule

