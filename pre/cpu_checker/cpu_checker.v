`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:06 10/16/2020 
// Design Name: 
// Module Name:    cpu_checker 
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

`define s0 5'b00000
`define s1 5'b00001
`define s2 5'b00010
`define s3 5'b00011
`define s4 5'b00100
`define x1 5'b00101
`define x2 5'b00110
`define x3 5'b00111
`define x4 5'b01000
`define x5 5'b01001
`define x6 5'b01010
`define y1 5'b01011
`define y2 5'b01100
`define y3 5'b01101
`define y4 5'b01110
`define y5 5'b01111
`define y6 5'b10000
`define x7 5'b10001
`define x8 5'b10010
`define y7 5'b10011
`define x9 5'b10100
`define t1 5'b10101
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output [1:0] format_type
    );
	 reg [2:0] states1;
	 reg [3:0] states2;
	 reg [3:0] statex5,statey1,statey4;
	 reg [4:0] current_state;
	 reg [7:0] statex1;
initial
	 begin
	 states1 = 0;
	 states2 = 0;
	 statex1 = 0;
	 statex5 = 0;
	 statey1 = 0;
	 statey4 = 0;
	 current_state = `s0;
	 end
always@(posedge clk)
	 begin
	   if(reset)
		begin
			states1 = 0;
			states2 = 0;
			statex1 = 0;
			statex5 = 0;
			statey1 = 0;
			statey4 = 0;
			current_state <= `s0;
		end
		else if(!reset)
			begin
			case(current_state)
		   `s0:if(char == "^")
			      current_state <= `t1;
			`t1:begin
					if(char <= "9" && char >= "0" && states1 <= 3'b011)
					begin
						states1 <= states1 + 1;
						current_state <= `s1;
					end
					else if(char == "^")
						current_state <= `t1;
					else 
						current_state <= `s0;
						
				 end
			`s1:begin
			      if(char <= "9" && char >= "0" && states1 <= 3'b011)
						states1 <= states1 + 1;
					else if(char == "@" && states1 <= 3'b100 && states1 >= 3'b001)//大于1小于4个
						begin
						   states1 <= 3'b000;
							current_state <=`s2;
						end
					else if(char == "^")
					   begin
						   states1 <= 3'b000;
							current_state <=`t1;
						end
					else
						begin
							states1 <= 3'b000;
							current_state <= `s0;
						end
				 end
			`s2:begin
					if((char <= "f" && char >= "a" || char <= "9" && char >= "0") && states2 < 4'b0111)
						states2 <= states2 + 1;
					else if((char == "8" || char == "0" || char == "c" || char == "4") && states2 == 4'b0111)//已经输入七个而且再输入一次
						begin
							current_state <= `s3;
							states2 <= 4'b0000;
						end
					else if(char == "^")
					   begin
						   current_state <= `t1;
							states2 <= 4'b0000;
						end
					else
						begin
						   current_state <= `s0;
							states2 <= 4'b0000;
						end
				 end
			`s3:begin
					if(char == ":")
						current_state <= `s4;
					else if(char == "^")
						current_state <= `t1;
					else
						current_state <= `s0;
				 end
			`s4:begin
			   	if(char == " ")
						current_state <= `s4;//不限制空格
					else if(char == "$")
					   current_state <= `x1;
					else if(char == "*")
					   current_state <= `y1;
					else if(char == "^")
						current_state <= `t1;
					else
					   current_state <= `s0;
				 end
			`x1:begin
			      if(char <= "9" && char >= "0")
					begin
						current_state <= `x9;
						statex1 <= char - "0";
					end
					else if(char == "^")
					begin
						statex1 <= 0;
						current_state <= `t1;
					end
					else
					begin
						statex1 <= 0;
						current_state <= `s0;
					end
				 end
			`x9:begin
					if(char <= "9" && char >= "0")
					begin
						if(statex1 <= 31)
							statex1 <= statex1 <<3 + statex1 << 1 + char - "0";
						else if(statex1 > 31)
						begin
							statex1 <= 0;
							current_state <= `s0;
						end
				   end
					else if(statex1 <= 31 && (char == " " || char == "<"))
					begin
						statex1 <= 0;
						if(char == " ")current_state <= `x3;
						else if(char == "<")current_state <= `x4;
					end
					else if(char == "^")
					begin
						current_state <= `t1;
						statex1 <= 0;
					end
					else
					begin
						current_state <= `s0;
						statex1 <= 0;
					end
				 end
			`x3:begin
			      if(char == " ")
					   current_state <= `x3;//控制空格
					else if(char == "<")
					   current_state <= `x4;
					else if(char == "^")
					   current_state <= `t1;
					else
					   current_state <= `s0;
				 end
			`x4:begin
					if(char == "=")
					   current_state <= `x5;
					else if(char == "^")
					   current_state <= `t1;
					else 
					   current_state <= `s0;
				 end
			`x5:begin
			      if(char == " ")
					   current_state <= `x5;
					else if(char >= "0" && char <= "9" || char <= "f" && char >= "a")
						begin
						statex5 <= statex5 + 1;
						current_state <= `x6;
						end
					else if(char == "^")
					   begin
						  current_state <= `t1;
						  statex5 <= 0;
						end 
					else 
					   begin
						  current_state <= `s0;
						  statex5 <= 0;
						end
			    end
			`x6:begin
					if((char >= "0" && char <= "9" || char <= "f" && char >= "a") && statex5 < 4'b0111)
					   begin
						  statex5 <= statex5 + 1;
						end
					else if((char >= "0" && char <= "9" || char <= "f" && char >= "a") && statex5 == 4'b0111)
						begin
						  statex5 <= 0;
						  current_state <= `x7;
						end
					else if(char == "^")
						begin
						  statex5 <= 0;
						  current_state <= `t1;
						end
					else
						begin
						  statex5 <= 0;
						  current_state <= `s0;
						end
				 end
			`x7:begin
			      if(char == "#")
					begin
					  current_state <= `x8;
					end
					else if(char == "^")
					begin
					  current_state <= `t1;
					end
					else
					begin
					  current_state <= `s0;
					end
				 end
			`x8:begin
			      if(char == "^")
					  current_state <= `t1;
					else
					  current_state <= `s0;
				 end
			`y1:begin
			      if((char <= "9" && char >= "0" || char <= "f" && char >= "a") && statey1 < 4'b0111)
					begin		
					   statey1 <= statey1 + 1;
					end
					else if((char == "8" || char >= "0" || char == "c" || char == "4") && statey1 == 4'b0111 )
					begin
					   statey1 <= 0;
						current_state <= `y2;
					end
					else if(char == "^")
					begin
						current_state <= `t1;
						statey1 <= 0;
					end
					else
					begin
						current_state <= `s0;
						statey1 <= 0;
					end
				 end
			`y2:begin
			      if(char == " ")
						current_state <= `y2;
					else if(char == "<")
						current_state <= `y3;
					else if(char == "^")
						current_state <= `t1;
					else
						current_state <= `s0;
				 end
			`y3:begin
			      if(char == "=")
						current_state <= `y4;
					else if(char == "^")
						current_state <= `t1;
					else
						current_state <= `s0;
				 end
			`y4:begin
			      if(char == " ")
						current_state <= `y4;
					else if((char <= "9" && char >= "0" || char <= "f" && char >= "a"))
					begin
						current_state <= `y5;
						statey4 <= statey4 + 1;
					end
					else if(char == "^")
					begin
						statey4 <= 0;
						current_state <= `t1;
					end
					else 
					begin 
						statey4 <= 0;
					   current_state <= `s0;
					end
				 end
			`y5:begin
			      if((char <= "9" && char >= "0" || char <= "f" && char >= "a") && statey4 < 4'b0111)
					begin
						statey4 <= statey4 + 1;
					end
					else if((char <= "9" && char >= "0" || char >= "a" && char <= "f") && statey4 == 4'b0111)
					begin
						current_state <= `y6;
						statey4 <= 0;
					end
					else if(char == "^")
					begin
						statey4 <= 0;
						current_state <= `t1;
					end
					else 
					begin 
						statey4 <= 0;
					   current_state <= `s0;
					end
			    end
			`y6:begin
			      if(char == "#")
						current_state <= `y7;
					else if(char == "^")
						current_state <= `t1;
				   else 
						current_state <= `s0;
				 end
			`y7:begin
			      if(char == "^")
						current_state <= `t1;
					else
						current_state <= `s0;
				 end
			 default: current_state <= `s0;
			 endcase
			 end
		end
		assign format_type =(current_state == `x8)? 2'b01 :
	                       ((current_state == `y7)? 2'b10 : 
		   			                                        2'b00);
		
endmodule
