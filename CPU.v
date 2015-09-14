`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:33 11/17/2013 
// Design Name: 
// Module Name:    CPU 
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
	 module CPU(
	 input reset,
	 input clk,
	 input [31:0] IMEM_data_out,
	 input [31:0] DMEM_data_out,
	 output [31:0] pc_out,
	 output [31:0] aluc_output,
	 output [31:0] RT_output,
	 output DM_CS,
	 output DM_R,
	 output DM_W,
	 output IM_R
    );
	 wire data_out,z,PC_CLK,M3,M4,ALUC3,ALUC2,ALUC1,ALUC0,M2,RF_W,RF_CLK,M5,M1;//control模块 wire定义
	 wire [4:0] RSC;
	 wire [4:0] RTC;
	 wire [4:0] RDC;
	 wire [31:0] NPC_output;         //NPC输出线
	 wire [31:0] RS_output;			  //RS线
	 wire [31:0] add_output;			//额外加法器输出线
	 wire [31:0] ext_5_output; 
	 wire [31:0] ext_16_output;
	 wire [31:0] ext_18_output;	
	 wire [31:0] m5_output;	//选择器5
	 wire [31:0] m1_output;	 
	 wire [31:0] m2_output; 
	 wire [31:0] m3_output;
	 wire [31:0] m4_output;
	 wire oflow,neg,carry;//不用
	 
	 
	 control con(IMEM_data_out[31:0],clk,z,PC_CLK,IM_R,RSC[4:0],RTC[4:0],M3,M4,ALUC3,ALUC2,ALUC1,ALUC0,M2,RDC[4:0],RF_W,RF_CLK,M5,M1,DM_CS,DM_R,DM_W);   //control 
	 
	 wire [31:0] joint_output = {pc_out[31:28],IMEM_data_out[25:0],2'b00};      //-------拼接扩展？ 
	 
	 //5位扩展为32位模块
	 extend_5 ext_5(IMEM_data_out[10:6],ext_5_output); //5位扩展为32位模块
	 
	 //16位扩展成32位模块
	 extend_16 ext_16(IMEM_data_out[15:0],ext_16_output);  //16位扩展成32位模块
	 
	  //18位扩展成32位模块
	 extend_18 ext_18(IMEM_data_out[17:0]<<2,ext_18_output);  //18位扩展成32位模块  
	    
	  
	 mux24a m1(joint_output,m5_output,M1,m1_output);  //选择器1
	 
	 mux24a m2(DMEM_data_out,aluc_output,M2,m2_output);   //选择器2
	 
	 mux24a m3(ext_5_output,RS_output,M3,m3_output);  //选择器3
	 
	 mux24a m4(RT_output,ext_16_output,M4,m4_output); //选择器4

	 mux24a m5(NPC_output,add_output,M5,m5_output);  //选择器5
	 
	 
	 pcreg pc(PC_CLK,reset,m1_output,pc_out);  //pcreg

	 regfile regfile0(RF_CLK,reset,RF_W,RSC,RTC,RDC,m2_output,RS_output,RT_output); //regfile
	 
	 
	 alu_module cpu_alu(m3_output,m4_output,{ALUC3,ALUC2,ALUC1,ALUC0},aluc_output[31:0],z,carry,neg,oflow);// alu
	 
	 cla_32_final ADD(ext_18_output,pc_out,1'b0,add_output);   //ADD
	 
	 cla_32_final NPC_add(pc_out,32'h4,1'b0,NPC_output);      // NPC_ADD 


endmodule
