`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:04 11/25/2020 
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
module main(
    input reset,
    input clk
    );
	 
	 
//PC_input_design
	 wire [31:0]PC;
	 wire [31:0]instr;
	 wire [31:0]PCplus;
	 wire [31:0]PCout;
	 //PC
	 PC IFU(
    .PC(PC), 
    .clr(reset), 
    .clk(clk), 
    .instr(instr), 
    .PCplus(PCplus),
	 .PCout(PCout)
    );
	 
//control_input_design
	 wire [5:0]op;
	 wire [5:0]fun;
	 wire Regdst;
	 wire j26;
	 wire ALUsrc;
	 wire Jal;
	 wire memtoreg;
	 wire Jr;
	 wire Regw;
	 wire memw;
	 wire memr;
	 wire Beq;
	 wire signop;
	 wire zeroop;
	 wire [2:0]ALUop;
	 wire BZEAL;////////////////////////////////////////////////////////////////////////
	 //control
	 control control (
    .op(op), 
    .fun(fun), 
    .regdst(Regdst), 
    .j26(j26), 
    .ALUsrc(ALUsrc), 
    .Jal(Jal), 
    .memtoreg(memtoreg), 
    .Jr(Jr), 
    .regw(Regw), 
    .memw(memw), 
    .memr(memr), 
    .Beq(Beq), 
    .signop(signop), 
    .zeroop(zeroop), 
    .ALU(ALUop),
	 .BZEAL(BZEAL)//////////////////////////////////////////////////////////////////////
    );
	 
//grf_input_design
	 wire [31:0]wdata;
	 wire [4:0]rs;
	 wire [4:0]rt;
	 wire [4:0]rd_rt;
//  wire [31:0]PCout;
	 wire [31:0]data_in_rs;
	 wire [31:0]data_in_rt;
//	 wire Regw;
	 //grf
	 grf grf(
    .data(wdata), 
    .rs(rs), 
    .rt(rt), 
    .rd(rd_rt), 
    .PC(PCout), 
    .clr(reset), 
    .clk(clk), 
    .Regw(Regw), 
    .data_in_rs(data_in_rs), 
    .data_in_rt(data_in_rt)
    );

//EXT_input_design
	 wire [15:0]im;
//	 wire signop;
//	 wire zeroop;
	 wire [31:0]immdata;
	 wire [31:0]PCextern;
	 //EXT
	 EXT EXT (
    .im(im), 
    .zero_extern(zeroop), 
    .sign_extern(signop), 
    .extern(immdata)
    );
	 
//j
	 wire [31:0]PCjump;
	 
//ALU_input_design
//	 wire [2:0]ALUop;
//	 wire [31:0]data_in_rs;
	 wire [31:0]data_rt;
	 wire beq_flag;
	 wire [31:0]ALUresult;
	 wire [31:0]Wdata1;
	 wire beq;
	 wire bzeal;//////////////////////////////////////////////////////
	 //ALU
	 ALU ALU (
    .ALUop(ALUop), 
    .data_in_rs(data_in_rs), 
    .data_in_rt(data_rt), 
    .beq_flag(beq_flag), 
    .result(ALUresult),
	 .bzeal(bzeal)/////////////////////////////////////////////////////
    );
	 
//DM_input_design
//	 wire memw;
//	 wire memr;
	 wire [9:0]add;
//	 wire [31:0]data_in_rt;
	 wire [31:0]Wdata2;
	 //DM
	 DM DM (
    .memw(memw), 
    .clk(clk), 
    .memr(memr), 
    .clr(reset), 
    .add(add), 
    .wdata(data_in_rt), 
	 .PC(PCout),
    .rdata(Wdata2)
    );
	

	 wire bs;//////////////////////////////////////////////////////////////////////////////////////////////// for bzeal and BZEAL
    assign bs = BZEAL & bzeal;//////////////////////////////////////////////////////////////////////////////				 
//Control_section
	 assign fun = instr[5:0];
	 assign op = instr[31:26];
	
	
//grf_section
	 assign rs = instr[25:21];
	 assign rt = instr[20:16];
	 assign rd_rt = (Jal == 1 || bs == 1) ? 31://////////////////////////////////////////////////////////////
											(Regdst == 1)? instr[15:11] : instr[20:16];
	 assign wdata = (Jal == 1) ? PCplus :
											(memtoreg == 1)? Wdata2 : Wdata1;

//EXT_section
	 //EXT_beq
	 assign im = instr[15:0];
	 assign PCextern = PCplus + (immdata << 2);
	 //EXT_j
	 assign PCjump = {PCplus[31:28],instr[25:0],2'b00};
	 
//ALU_section
	 //ALUin
	 assign data_rt = (ALUsrc == 0) ? data_in_rt : immdata;
	 assign beq = beq_flag && Beq;
	 //ALUout
	 assign Wdata1 = ALUresult;
	 assign add = ALUresult[11:2];
	
//DM_section
	 
	 
//PC_section 
	 assign PC = (beq == 1 || bs == 1)? PCextern :
					 (j26 == 1)? PCjump :////////////////////////////////////////////////////////////
					 (Jr == 1)? data_in_rs : PCplus;


endmodule