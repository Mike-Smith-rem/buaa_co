`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:06 11/23/2020 
// Design Name: 
// Module Name:    and_logic 
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
module and_logic(
    input [5:0] op,
    input [5:0] fun,
	 output addu,
	 output subu,
	 output jr,
	 output beq,
	 output lui,
	 output lw,
	 output ori,
	 output sw,
	 output j,
	 output jal
    );
	 wire R;
	 and (R,~op[0],~op[1],~op[2],~op[3],~op[4],~op[5]);
	 
	 and (beq,~op[0],~op[1],op[2],~op[3],~op[4],~op[5]);
	 
	 and (lui,op[0],op[1],op[2],op[3],~op[4],~op[5]);
	 
	 and (lw,op[0],op[1],~op[2],~op[3],~op[4],op[5]);
	 
	 and (ori,op[0],~op[1],op[2],op[3],~op[4],~op[5]);
	 
	 and (sw,op[0],op[1],~op[2],op[3],~op[4],op[5]);
	 
	 and (addu,fun[0],~fun[1],~fun[2],~fun[3],~fun[4],fun[5],R);
	 
	 and (subu,fun[0],fun[1],~fun[2],~fun[3],~fun[4],fun[5],R);
	 
	 and (j,~op[0],op[1],~op[2],~op[3],~op[4],~op[5]);
	 
	 and (jal,op[0],op[1],~op[2],~op[3],~op[4],~op[5]);
	 
	 and (jr,~fun[0],~fun[1],~fun[2],fun[3],~fun[4],~fun[5],R);


endmodule
