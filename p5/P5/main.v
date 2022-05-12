`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:35:34 12/17/2020 
// Design Name: 
// Module Name:    main 
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
`define RS 25:21
`define RT 20:16
`define RD 15:11
`define imm16 15:0
`define imm26 25:0
`define OP 31:26
`define FUN 5:0
module main(
	 input clk,
	 input clr
    );
	 
	 
////section in IF
    wire [31:0]PC_in;
	 wire stallF;
	 wire [31:0]PC_out;
	 
	 wire [31:0]PCplus;
	 wire [31:0]PCextern;
	 wire [31:0]PCjump;
	 wire [31:0]PCtemp;
	 wire [1:0]sel;

	 wire [31:0]instr;
	 MUX_PC MUX_PC (
    .PCplus(PCplus), 
    .PCextern(PCextern), 
    .PCjump(PCjump), 
	 .PCtemp(PCtemp),
    .sel(sel),
    .out(PC_in)
    );
	 		
	 PC PC (
    .PC_in(PC_in),
    .clk(clk),
    .clr(clr),
    .en(stallF), 
    .PC_out(PC_out)
    );
	 
	 IM IM (
    .PC(PC_out),
    .instr(instr)
    );
	 
	 assign PCplus = PC_out + 4;
////R_IF_ID


	 wire [31:0]instrD;
	 wire [31:0]PCD;

	 wire FlushD;
	 R_IF_ID R_IF_ID (
    .instr_in(instr), 
    .PCplus_in(PC_out), 
    .clk(clk), 
	 .clr(clr),
    .instr_out(instrD), 
    .PCplus_out(PCD), 
    .FlushD(FlushD)
    );

////////////////////////////////////////////////////////////////////////	 
////section in ID
////CONTROL
	 wire [5:0]op;
	 wire [5:0]fun;
	 wire regdstD;
	 wire jumpD;
	 wire ALUsrcD;
	 wire memtoregD;
	 wire regwD;
	 wire memwD;
	 wire memrD;
	 wire Branch;//////////
	 wire jjalD;
	 wire jjr;/////////////
	 wire j26;/////////////
	 wire signop;//////////
	 wire zeroop;//////////
	 wire [2:0]ALUD;
	 wire [2:0]T_use_rs;///
	 wire [2:0]T_use_rt;///
	 
	 assign op = instrD[`OP];
	 assign fun = instrD[`FUN];
	 C_IF_ID C_IF_ID (
    .op(op), 
    .fun(fun), 
    .regdst(regdstD), 
    .ALUsrc(ALUsrcD), 
    .memtoreg(memtoregD), 
    .regw(regwD), 
    .memw(memwD), 
    .memr(memrD), 
    .Branch(Branch), 
    .jjal(jjalD), 
    .jjr(jjr), 
    .j26(j26), 
    .signop(signop), 
    .zeroop(zeroop), 
    .ALU(ALUD), 
    .T_use_rs(T_use_rs), 
    .T_use_rt(T_use_rt)
    );
	 
/////GRF	 
	 wire [31:0]wdataW;
	 wire [4:0]rsD;
	 wire [4:0]rtD;
	 wire [4:0]rt_rdD;
	 wire [4:0]rt_rdW;
//	 wire [31:0]PCD;
    wire regwW;
    wire [31:0] data_in_rs;
	 wire [31:0] data_in_rt;
	 wire [31:0]PCW;
	 assign rsD = instrD[`RS];
	 assign rtD = instrD[`RT];
//	 assign rdD = instrD[`RD];
	 assign rt_rdD = (jjalD == 1)?31:
						  (regdstD == 1)?instrD[`RD]:rtD;
	 
/////

	 GRF GRF (
    .data(wdataW), 
    .rs(rsD), 
    .rt(rtD), 
    .rd(rt_rdW), 
    .PC(PCW), 
    .clr(clr), 
    .clk(clk), 
    .Regw(regwW), 
    .data_in_rs(data_in_rs), 
    .data_in_rt(data_in_rt)
    );
	 
////////////EXT	 
	 wire [15:0]im;
	 wire [31:0]externD;
	 
	 assign im = instrD[`imm16];
	 EXT EXT (
    .im(im), 
    .zero_extern(zeroop), 
    .sign_extern(signop), 
    .extern(externD)
    );

	 wire [31:0]RD1D;
	 wire [31:0]RD2D;
	 wire equal;

////////mux_ALUinput	 
	 assign RD1D = (forwardAD == 2)? wdataW:
						(forwardAD == 1)? resultM:data_in_rs;
	 assign RD2D = (forwardBD == 2)? wdataW:
						(forwardBD == 1)? resultM:data_in_rt;
//////////

///////beq
	 CMP CMP (
    .RD1(RD1D), 
    .RD2(RD2D), 
    .equal(equal)
    );
/////////


///////mux_PC
	 assign PCextern = PCD + 4 + (externD << 2);
	 assign PCjump = {PCD[31:28],instrD[`imm26],2'b00};///////////////a little problem
	 assign PCtemp = RD1D;
	 wire beq;
	 assign beq = equal&Branch;
	 assign sel = (jjr == 1)?3:
					  (j26 == 1)?2:
					  (beq == 1)?1:0;
///////


////R_ID_EXT

    wire flushE;
	 wire [31:0]RD1E;
	 wire [31:0]RD2E;
	 wire [4:0]rsE;
	 wire [4:0]rtE;
	 wire [4:0]rt_rdE;
	 wire [31:0]externE;
	 wire [31:0]PCE;
	 R_ID_EXT R_ID_EXT(
    .RD1D(RD1D), 
    .RD2D(RD2D), 
    .rsD(rsD), 
    .rtD(rtD), 
    .rdD(rt_rdD), 
    .externD(externD), 
    .clk(clk), 
	 .clr(clr),
	 .PCD(PCD),
    .flushE(flushE), 
    .RD1E(RD1E), 
    .RD2E(RD2E), 
    .rsE(rsE), 
    .rtE(rtE), 
    .rdE(rt_rdE), 
    .externE(externE),
	 .PCE(PCE)
    );
	 
////C_ID_EXT

	 wire regwE;
	 wire memtoregE;
	 wire memwE;
	 wire memrE;
	 wire [2:0]ALUE;
	 wire ALUsrcE;
	 wire regdstE;
	 wire [2:0]T_new_E;
	 wire jjalE;
	 C_ID_EXT C_ID_EXT (
    .op(op), 
    .fun(fun),
    .flushE(flushE),	 
    .regwD(regwD), 
    .memtoregD(memtoregD), 
    .memwD(memwD),
    .memrD(memrD),	 
    .ALUD(ALUD), 
    .ALUsrcD(ALUsrcD),
	 .jjalD(jjalD),
//  .regdstD(regdstD), 
    .clk(clk), 
	 .clr(clr),
    .regwE(regwE), 
    .memtoregE(memtoregE), 
    .memwE(memwE), 
	 .memrE(memrE),
    .ALUE(ALUE), 
    .ALUsrcE(ALUsrcE), 
	 .jjalE(jjalE),
//  .regdstE(regdstE), 
    .T_new_E(T_new_E)
    );
////////////////////////////////////////////////////////////////////////////////	 
////section_in_EXT

	 wire [31:0]SrcAE;
	 wire [31:0]SrcBE;
	 wire [31:0]resultE;
	 wire [31:0]wdataE;
	 ALU ALU (
    .ALUop(ALUE), 
    .data_in_rs(SrcAE), 
    .data_in_rt(SrcBE), 
    .result(resultE)
    );
	
////mux_ALUinput	
	 assign SrcAE = (forwardAE == 0)?RD1E:
						 (forwardAE == 1)?wdataW://the data is the final data of wb
						 (forwardAE == 2)?resultM:0;
	 
	 assign wdataE =(forwardBE == 0)?RD2E:
						 (forwardBE == 1)?wdataW:
						 (forwardBE == 2)?resultM:0;
	 assign SrcBE = (ALUsrcE == 1)?externE:wdataE;
	 
						 
						 
////R_EXT_MEM
//	 wire [4:0]rt_rdE;
	 wire [31:0]resultM;
	 wire [4:0]rt_rdM;
	 wire [31:0]wdataM;
	 wire [31:0]PCM;
	 
//	 assign rt_rdE = (regdstE == 1)?rdE:rtE;
	 
	 R_EXT_MEM R_EXT_MEM (
    .addE(resultE), 
    .wdataE(wdataE), 
    .rd_rsE(rt_rdE), 
    .clk(clk),
	 .clr(clr),
	 .PCE(PCE),
    .addM(resultM), 
    .wdataM(wdataM), 
    .rd_rsM(rt_rdM),
	 .PCM(PCM)
    );
	 
	 
////C_EXT_MEM

	 wire regwM;
	 wire memtoregM;
	 wire memwM;
	 wire memrM;
	 wire [2:0]T_new_M;
	 wire jjalM;
	 C_EXT_MEM C_EXT_MEM (
    .regwE(regwE), 
    .memtoregE(memtoregE), 
    .memwE(memwE), 
	 .memrE(memrE),
	 .jjalE(jjalE),
    .clk(clk),
	 .clr(clr),
    .T_new_E(T_new_E), 
    .regwM(regwM), 
    .memtoregM(memtoregM), 
    .memwM(memwM),
    .memrM(memrM),
    .jjalM(jjalM),	 
    .T_new_M(T_new_M)
    );
	 
////section in MEM
	 wire [31:0]rdataM;
	 DM DM (
    .memw(memwM), 
    .clk(clk), 
    .memr(memrM), 
    .clr(clr), 
    .add(resultM), 
    .wdata(wdataM), 
    .PC(PCM), 
    .rdata(rdataM)
    );

////R_MEM_WB
	 wire [31:0]rdataW;
	 wire [31:0]resultW;
	 
	 R_MEM_WB R_MEM_WB (
    .rdataM(rdataM), 
    .addM(resultM), 
    .rt_rdM(rt_rdM), 
    .clk(clk),
	 .clr(clr),
	 .PCM(PCM),
    .rdataW(rdataW), 
    .addW(resultW), 
    .rt_rdW(rt_rdW),
	 .PCW(PCW)
    );

////C_MEM_WB 
	 wire memtoregW;
	 wire [2:0]T_new_W;
	 wire jjalW;
	 C_MEM_WB C_MEM_WB (
    .regwM(regwM), 
    .memtoregM(memtoregM), 
	 .jjalM(jjalM),
    .clk(clk), 
	 .clr(clr),
    .T_new_M(T_new_M), 
    .regwW(regwW), 
    .memtoregW(memtoregW), 
    .T_new_W(T_new_W),
	 .jjalW(jjalW)
    );
	 
	 assign wdataW = (jjalW == 1)?(PCW+8):
				 		  (memtoregW == 1)?rdataW:resultW;
	 
	 
////section for IF

////Forward
    wire [1:0]forwardAD;
	 wire [1:0]forwardBD;
	 wire [1:0]forwardAE;
	 wire [1:0]forwardBE;
	
	 Forward Forward (
    .rsD(rsD), 
    .rtD(rtD), 
    .rsE(rsE), 
    .rtE(rtE),
//	 .rt_rdD(rt_rdD),
    .rt_rdE(rt_rdE), 
    .rt_rdM(rt_rdM), 
    .rt_rdW(rt_rdW), 
	 .regwE(regwE),
	 .regwM(regwM),
	 .regwW(regwW),
	 .Branch(Branch),
	 .jjr(jjr),
    .T_new_E(T_new_E), 
    .T_new_M(T_new_M), 
    .T_new_W(T_new_W), 
    .forwardAD(forwardAD), 
    .forwardBD(forwardBD), 
    .forwardAE(forwardAE), 
    .forwardBE(forwardBE)
    );
	 
////stall

	 Stall Stall (
	 .rsD(rsD), 
    .rtD(rtD), 
    .rsE(rsE), 
    .rtE(rtE),
//	 .rt_rdD(rt_rdD),
    .rt_rdE(rt_rdE), 
    .rt_rdM(rt_rdM), 
    .rt_rdW(rt_rdW), 
	 .regwE(regwE),
	 .regwM(regwM),
	 .regwW(regwW),
    .T_use_rs(T_use_rs), 
    .T_use_rt(T_use_rt), 
    .T_new_E(T_new_E), 
    .T_new_M(T_new_M), 
    .T_new_W(T_new_W), 
    .flushD(FlushD), 
	 .flushE(flushE),
    .stallF(stallF)
    );
	 

	 
	 

	 
	 


endmodule