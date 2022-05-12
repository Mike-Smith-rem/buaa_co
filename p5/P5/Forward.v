`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:35:07 12/17/2020 
// Design Name: 
// Module Name:    Forward 
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
module Forward(
	input [4:0]rsD,
	input [4:0]rtD,
	input [4:0]rsE,
	input [4:0]rtE,
	input [4:0]rt_rdE,
	input [4:0]rt_rdM,
	input [4:0]rt_rdW,
	input regwE,
	input regwM,
	input regwW,
	input Branch,
	input jjr,
	input [2:0]T_new_E,
	input [2:0]T_new_M,
	input [2:0]T_new_W,
	output [1:0]forwardAD,
	output [1:0]forwardBD,
	output [1:0]forwardAE,
	output [1:0]forwardBE
    );
	 
	assign forwardAD = (rsD == rt_rdM && rsD != 0 && T_new_M == 0 && regwM == 1)?1:
							 (rsD == rt_rdW && rsD != 0 && T_new_W == 0 && regwW == 1)?2:0;
	assign forwardBD = (rtD == rt_rdM && rtD != 0 && T_new_M == 0 && regwM == 1)?1:
							 (rtD == rt_rdW && rtD != 0 && T_new_W == 0 && regwW == 1)?2:0;
	assign forwardAE = (rsE	== rt_rdM && rsE != 0 && T_new_M == 0 && regwM == 1)?2:
							 (rsE == rt_rdW && rsE != 0 && T_new_W == 0 && regwW == 1)?1:0;
	assign forwardBE = (rtE	== rt_rdM && rtE != 0 && T_new_M == 0 && regwM == 1)?2:
							 (rtE == rt_rdW && rtE != 0 && T_new_W == 0 && regwW == 1)?1:0;
	 


endmodule
