`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:45 10/25/2020 
// Design Name: 
// Module Name:    gray 
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
`define s2 3'b011
`define s3 3'b010
`define s4 3'b110
`define s5 3'b111
`define s6 3'b101
`define s7 3'b100
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output Overflow
    );
	 reg [2:0] out;
	 reg over;
	 initial
	 begin
	 out = `s0;
	 over = 0;
	 end
	 always@(posedge Clk)
	 begin
		if(Reset == 1)
		begin
			out <= 0;
			over <= 0;
		end
		else if(!Reset)
		begin
			if(En == 1)
			begin
			case(out)
			`s0:out <= `s1;
			`s1:out <= `s2;
			`s2:out <= `s3;
			`s3:out <= `s4;
			`s4:out <= `s5;
			`s5:out <= `s6;
			`s6:out <= `s7;
			`s7:begin
					over <= 1;
					out <= `s0;
				 end
			default: out <= `s0;
			endcase
			end
		end
	end
	assign Output = out;
	assign Overflow = over;
endmodule
