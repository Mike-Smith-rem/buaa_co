`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:41 12/16/2020 
// Design Name: 
// Module Name:    control 
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
`include "DEFINE.v"
module control(
    input [5:0]op,
    input [5:0]fun,
    output regdst,//M1
    output jump,
    output ALUsrc,//M2
    output memtoreg,//M3
    output regw,
    output memw,
	 output memr,
    output Branch,
	 output jjal,
	 output jjr,
	 output j26,
    output signop,
    output zeroop,
    output [2:0] ALU,
	 output [2:0] T_use_rs,
	 output [2:0] T_use_rt
    );
	 
	 assign regdst = (op == `R && fun == `addu)?1:
						  (op == `R && fun == `subu)?1:0;
	 
	 assign ALUsrc = (op == `lui || op == `lw || op == `ori || op == `sw)?1:0;
	 assign memtoreg = (op == `lw)?1:0;
	 assign regw = (op == `R && fun == `addu)?1:
						(op == `R && fun == `subu)?1:
						(op == `lui)?1:
						(op == `lw)? 1:
						(op == `ori)?1:
						(op == `jal)?1:0;
	 
	 assign memw = (op == `sw)? 1:0;
	 assign memr = (op == `lw)? 1:0;
	 
	 assign Branch = (op == `beq)?1:0;
	 assign j26 = (op == `j)?  1:
					  (op == `jal)?1:0;
					  
	 assign jjal = (op == `jal)?1:0;
	 
	 assign jjr =  (`Jr)?1:0;
	 
	 assign signop = (op == `lw)? 1:
						  (op == `beq)?1:
						  (op == `sw)? 1:0;
	 
	 assign zeroop = (op == `ori)?1:0;
	 
	 assign ALU = (op == `ori)? 1:// or for 1
					  (op == `R && fun == `addu)?2:
					  (op == `lw)?					  2:
					  (op == `sw)?					  2:  //add  for 2
					  (op == `R && fun == `subu)?3:  //subu for 3
					  (op == `lui)?				  6:0;// lui for 6
					  
	 assign T_use_rs = (`Addu)?     1:
							 (`Subu)?	  1:
							 (op == `ori)?1:
							 (op == `lw)? 1:
							 (op == `sw)? 1:
							 (op == `beq)?0:
							 (op == `lui)?3:
							 (op == `j)?  3:
							 (op == `jal)?3:
							 (`Jr)?       3:4;
	 
	 assign T_use_rt = (`Addu)?     1:
							 (`Subu)?     1:
							 (op == `ori)?3:
							 (op == `lw)? 3:
							 (op == `sw)? 2:
							 (op == `beq)?0:
							 (op == `lui)?3:
							 (op == `j)?  3:
							 (op == `jal)?3:
							 (`Jr)?       3:4;
							 
							 
							 
	 
	 
	 
	 
			
	 
	 
	 




endmodule
