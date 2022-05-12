`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:34 11/24/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [2:0] ALUop,
    input [31:0] data_in_rs,
    input [31:0] data_in_rt,
    output beq_flag,
    output [31:0] result,
	 output bzeal
    );
	 integer i;
	 reg [31:0]counter1;
	 reg flag1;
	 reg flag2;
	 reg [31:0]counter2;
	 initial
	 begin
		for(i=0;i<=31;i=i+1)begin
			counter1 <=0;
			counter2 <=0;
		end
		flag1 <= 0;
		flag2 <= 0;
	 end
	 
	 always@(ALUop or data_in_rs or data_in_rt)
	 begin
		for(i=0;i<=31;i=i+1)begin
			counter1 =0;
			counter2 =0;
		end
		flag1 = 0;
		flag2 = 0;
		for(i=0;i<=31;i=i+1)
		begin
			if(data_in_rs[i] == 0 && flag1 == 0)counter1 = counter1 + 1;
			else if(data_in_rs[i] == 1)flag1 = 1;
			if(data_in_rt[i] == 0 && flag2 == 0)counter2 = counter2 + 1;
			else if(data_in_rt[i] == 1)flag2 = 1;	
		end
	 end
	 
	 assign result = (ALUop == 3'b000) ? data_in_rs & data_in_rt:
						  (ALUop == 3'b001) ? data_in_rs | data_in_rt:
		              (ALUop == 3'b010) ? data_in_rs + data_in_rt:
		              (ALUop == 3'b011) ? data_in_rs - data_in_rt:
		              (ALUop == 3'b100) ? data_in_rs ^ data_in_rt:
		              (ALUop == 3'b101) ? data_in_rs / data_in_rt:
		              (ALUop == 3'b110) ? data_in_rt << 16:0;
	 assign bzeal = (counter1 == counter2)?1:0;

	 assign beq_flag = (ALUop == 3'b011 && result == 0)?1:0;
endmodule
