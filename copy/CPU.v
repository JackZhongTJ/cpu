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
	 wire data_out,z,PC_CLK,M3,M4,ALUC3,ALUC2,ALUC1,ALUC0,M2,RF_W,RF_CLK,M5,M1;//controlģ�� wire����
	 wire [4:0] RSC;
	 wire [4:0] RTC;
	 wire [4:0] RDC;
	 wire [31:0] NPC_output;         //NPC�����
	 wire [31:0] RS_output;			  //RS��
	 wire [31:0] add_output;			//����ӷ��������
	 wire [31:0] ext_5_output; 
	 wire [31:0] ext_16_output;
	 wire [31:0] ext_18_output;	
	 wire [31:0] m5_output;	//ѡ����5
	 wire [31:0] m1_output;	 
	 wire [31:0] m2_output; 
	 wire [31:0] m3_output;
	 wire [31:0] m4_output;
	 wire oflow,neg,carry;//����
	 
	 
	 control con(IMEM_data_out[31:0],clk,z,PC_CLK,IM_R,RSC[4:0],RTC[4:0],M3,M4,ALUC3,ALUC2,ALUC1,ALUC0,M2,RDC[4:0],RF_W,RF_CLK,M5,M1,DM_CS,DM_R,DM_W);   //control 
	 
	 wire [31:0] joint_output = {pc_out[31:28],IMEM_data_out[25:0],2'b00};      //-------ƴ����չ�� 
	 
	 //5λ��չΪ32λģ��
	 extend_5 ext_5(IMEM_data_out[10:6],ext_5_output); //5λ��չΪ32λģ��
	 
	 //16λ��չ��32λģ��
	 extend_16 ext_16(IMEM_data_out[15:0],ext_16_output);  //16λ��չ��32λģ��
	 
	  //18λ��չ��32λģ��
	 extend_18 ext_18(IMEM_data_out[17:0]<<2,ext_18_output);  //18λ��չ��32λģ��  
	    
	  
	 mux24a m1(joint_output,m5_output,M1,m1_output);  //ѡ����1
	 
	 mux24a m2(DMEM_data_out,aluc_output,M2,m2_output);   //ѡ����2
	 
	 mux24a m3(ext_5_output,RS_output,M3,m3_output);  //ѡ����3
	 
	 mux24a m4(RT_output,ext_16_output,M4,m4_output); //ѡ����4

	 mux24a m5(NPC_output,add_output,M5,m5_output);  //ѡ����5
	 
	 
	 pcreg pc(PC_CLK,reset,m1_output,pc_out);  //pcreg

	 regfile regfile0(RF_CLK,reset,RF_W,RSC,RTC,RDC,m2_output,RS_output,RT_output); //regfile
	 
	 
	 alu_module cpu_alu(m3_output,m4_output,{ALUC3,ALUC2,ALUC1,ALUC0},aluc_output[31:0],z,carry,neg,oflow);// alu
	 
	 cla_32_final ADD(ext_18_output,pc_out,1'b0,add_output);   //ADD
	 
	 cla_32_final NPC_add(pc_out,32'h4,1'b0,NPC_output);      // NPC_ADD 


endmodule
