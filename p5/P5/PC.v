`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:22 12/16/2020 
// Design Name: 
// Module Name:    PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC(
    input [31:0] PC_in,
	 input clk,
	 input clr,
	 input en,
    output [31:0] PC_out
    );
	 reg [31:0]registerPC;
	 initial 
	 begin
		registerPC = 32'h0000_3000;
	 end
	 
	 
	 always@(posedge clk)
	 begin
		if(clr == 1)
			begin
				registerPC <= 32'h0000_3000;
			end
		else if(en == 1)//freeze the clk
			begin
				registerPC <= registerPC;
			end
		else 
			begin
				registerPC <= PC_in;
			end
	 end
	 
	 assign PC_out = registerPC;


endmodule
