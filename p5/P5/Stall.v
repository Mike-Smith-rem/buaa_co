`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:35:22 12/17/2020 
// Design Name: 
// Module Name:    Stall 
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
module Stall(
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
	input [2:0]T_use_rs,
	input [2:0]T_use_rt,
	input [2:0]T_new_E,
	input [2:0]T_new_M,
	input [2:0]T_new_W,
	output flushD,
	output flushE,
	output stallF
//	input regwE,
//	input regwM,
//	input regwW,
//	output
    );
	 
	assign flushD = (T_use_rs < T_new_E && rsD == rt_rdE && rsD != 0 && regwE == 1)?1:
						 (T_use_rs < T_new_M && rsD == rt_rdM && rsD != 0 && regwM == 1)?1:
						 (T_use_rs < T_new_W && rsD == rt_rdW && rsD != 0 && regwW == 1)?1:
					    (T_use_rt < T_new_E && rtD == rt_rdE && rtD != 0 && regwE == 1)?1:
						 (T_use_rt < T_new_M && rtD == rt_rdM && rtD != 0 && regwM == 1)?1:
						 (T_use_rt < T_new_W && rtD == rt_rdW && rtD != 0 && regwW == 1)?1:0;

	assign flushE = (T_use_rs < T_new_E && rsD == rt_rdE && rsD != 0 && regwE == 1)?1:
						 (T_use_rs < T_new_M && rsD == rt_rdM && rsD != 0 && regwM == 1)?1:
						 (T_use_rs < T_new_W && rsD == rt_rdW && rsD != 0 && regwW == 1)?1:
					    (T_use_rt < T_new_E && rtD == rt_rdE && rtD != 0 && regwE == 1)?1:
						 (T_use_rt < T_new_M && rtD == rt_rdM && rtD != 0 && regwM == 1)?1:
						 (T_use_rt < T_new_W && rtD == rt_rdW && rtD != 0 && regwW == 1)?1:0;

	assign stallF = (T_use_rs < T_new_E && rsD == rt_rdE && rsD != 0 && regwE == 1)?1:
						 (T_use_rs < T_new_M && rsD == rt_rdM && rsD != 0 && regwM == 1)?1:
						 (T_use_rs < T_new_W && rsD == rt_rdW && rsD != 0 && regwW == 1)?1:
					    (T_use_rt < T_new_E && rtD == rt_rdE && rtD != 0 && regwE == 1)?1:
						 (T_use_rt < T_new_M && rtD == rt_rdM && rtD != 0 && regwM == 1)?1:
						 (T_use_rt < T_new_W && rtD == rt_rdW && rtD != 0 && regwW == 1)?1:0;



endmodule
