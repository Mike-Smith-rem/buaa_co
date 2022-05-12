`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:06 12/10/2020
// Design Name:   ALU
// Module Name:   E:/mips/testofALU.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofALU;

	// Inputs
	reg [2:0] ALUop;
	reg [31:0] data_in_rs;
	reg [31:0] data_in_rt;

	reg [31:0] memory1 [1023:0];
	reg [31:0] memory2 [1023:0];
	// Outputs
	wire beq_flag;
	wire [31:0] result;
	wire bzeal;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUop(ALUop), 
		.data_in_rs(data_in_rs), 
		.data_in_rt(data_in_rt), 
		.beq_flag(beq_flag), 
		.result(result), 
		.bzeal(bzeal)
	);

	initial begin
		// Initialize Inputs
		$readmemh("1.txt",memory1);
		$readmemh("2.txt",memory2);
		#5;
		ALUop = 0;
		for(i =0;i<=31;i=i+1)
		begin
			data_in_rs = memory1[i];
			data_in_rt = memory2[i];
			#5;
		end
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

