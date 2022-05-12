`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:15 10/25/2020 
// Design Name: 
// Module Name:    string 
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
`define s0 3'b000
`define s1 3'b001
`define s2 3'b010
`define s3 3'b100
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 reg [2:0] state;
	 initial 
	 begin 
	 state = `s0;
	 end
	 always@(*)
		if(clr == 1)state <= `s0;
	 always@(posedge clk)
	 begin
		if(clr)state <= `s0;
	   else if(!clr)
		begin
			case(state)
			`s0:begin
					if(in <= "9" && in >= "0")state <= `s1;
					else state <= `s3;
				 end
			`s1:begin
					if(in == "+" || in == "*")state <= `s2;
					else state <= `s3;
				 end
			`s2:begin
					if(in <= "9" && in >= "0")state <= `s1;
					else state <= `s3;
				 end
			`s3:state <= `s3;
		   default:state <= `s3;
			endcase
		end
	 end
	 assign out = (state == `s1)? 1:0;
endmodule
