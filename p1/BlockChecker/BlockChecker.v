`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// 
// Create Date:    20:37:09 10/25/2020 
// Design Name: 
// Module Name:    BlockChecker 
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
`define s0 4'b0000
`define s1 4'b0001
`define sb 4'b0010
`define se 4'b0011
`define sg 4'b0100
`define si 4'b0101
`define sn 4'b0110
`define sE 4'b0111 
`define sN 4'b1000
`define sd 4'b1001
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
	 
	 reg [31:0] counter;
	 reg [3:0] state; 
	 initial
	 begin
	 counter = 0;
	 state = `s0;
	 end
	 always@(posedge clk or posedge reset)
	 begin 
		if(reset)
	   begin 
		counter <= 0;
		state <= `s0;
		end
		else if(!reset)
		begin
			case(state)
			`s0:begin
			   if(in == "b" || in == "B")
					state <= `sb;
				else if(in == "e" || in == "E")
					state <= `sE;
				else if(in == " ")
					state <= `s0;
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				end
			`s1:begin
				if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`sb:begin
				if(in == "e" || in == "E")
					state <= `se;
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`se:begin
				if(in == "g" || in == "G")
					state <= `sg;
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`sg:begin
				if(in == "i" || in == "I")
					state <= `si;
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`si:begin
				if(in == "n" || in == "N")
				begin
					if($signed(counter) >= 0)counter <= counter + 1;
					state <= `sn;
				end
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`sn:begin
				if(in == " ")
					begin
				   state <= `s0;
				   end
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					begin
						state <= `s1;
						if($signed(counter) >= 0)counter <= counter - 1;
					end
				end
			`sE:begin
			   if(in == "n" || in == "N")
					state <= `sN;
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`sN:begin
			   if(in == "d" || in == "D")
				begin
					state <= `sd;
					counter <= counter - 1;
				end
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
					state <= `s1;
				else if(in == " ")
					state <= `s0;
				end
			`sd:begin
				if(in == " ")
				begin
					state <= `s0;
				end
				else if(in <= "z" && in >= "a" || in <= "Z" && in >= "A")
				begin
					counter <= counter + 1;//输出的不是end
					state <= `s1;
				end
				end
			default:state <= `s0;
		   endcase
		end
	end	
	assign result = (counter == 0)? 1: 0;
	
endmodule
