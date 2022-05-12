`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:07 11/24/2020 
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
module control(
    input [5:0]op,
    input [5:0]fun,
    output regdst,
    output j26,
    output ALUsrc,
    output Jal,
    output memtoreg,
    output Jr,
    output regw,
    output memw,
    output memr,
    output Beq,
    output signop,
    output zeroop,
    output [2:0] ALU,
	 output BZEAL
    );
	 
	 wire addu;
	 wire subu;
	 wire jr;
	 wire beq;
	 wire lui;
	 wire lw;
	 wire ori;
	 wire sw;
	 wire j;
	 wire jal;
	 wire xor_s;
	 wire Bzeal;//////////////////////////////////////////
	 and_logic and_logic (
    .op(op), 
    .fun(fun), 
    .addu(addu), 
    .subu(subu), 
    .jr(jr), 
    .beq(beq), 
    .lui(lui), 
    .lw(lw), 
    .ori(ori), 
    .sw(sw), 
    .j(j), 
    .jal(jal),
	 .xor_s(xor_s),
	 .Bzeal(Bzeal)/////////////////////////////////////////
    );
	 or_logic or_logic (
    .addu(addu), 
    .subu(subu), 
    .jr(jr), 
    .beq(beq), 
    .lui(lui), 
    .lw(lw), 
    .ori(ori), 
    .sw(sw), 
    .j(j), 
    .jal(jal), 
	 .xor_s(xor_s),
	 .Bzeal(Bzeal),
    .regdst(regdst), 
    .j26(j26), 
    .ALUsrc(ALUsrc), 
    .Jal(Jal), 
    .memtoreg(memtoreg), 
    .Jr(Jr), 
    .regw(regw), 
    .memw(memw), 
    .memr(memr), 
    .Beq(Beq), 
    .signop(signop), 
    .zeroop(zeroop), 
    .ALU(ALU),
	 .BZEAL(BZEAL)////////////////////////////////////////////
    );



endmodule
