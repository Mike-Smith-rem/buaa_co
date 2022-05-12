`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:46 12/04/2020
// Design Name:   control
// Module Name:   E:/mips/testofcontrol.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testofcontrol;

	// Inputs
	reg [5:0] op;
	reg [5:0] fun;

	// Outputs
	wire regdst;
	wire j26;
	wire ALUsrc;
	wire Jal;
	wire memtoreg;
	wire Jr;
	wire regw;
	wire memw;
	wire memr;
	wire Beq;
	wire signop;
	wire zeroop;
	wire [2:0] ALU;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.op(op), 
		.fun(fun), 
		.regdst(regdst), 
		.j26(j26), 
		.ALUsrc(ALUsrc), 
		.Jal(Jal), 
		.memtoreg(memtoreg), 
		.Jr(Jr), 
		.regw(regw), 
		.memw(memw), 
		.memr(memr), 
		.Beq(Beq), 
		.signop(signop), 
		.zeroop(zeroop), 
		.ALU(ALU)
	);

	initial begin
		// Initialize Inputs
		op = 6'b111111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

