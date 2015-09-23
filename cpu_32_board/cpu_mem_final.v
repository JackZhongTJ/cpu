`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:23 11/25/2013 
// Design Name: 
// Module Name:    cpu_mem_final 
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
module cpu_mem_final(
	input clk,
	input rst,
	output [31:0]inst,
	output [31:0]pc,
	output [31:0]aluc,
	output [31:0]data,
	output [31:0] array_reg_2,//下板引出管脚
	output [31:0] array_reg_3,//下板引出管脚
	output [31:0] array_reg_4,//下板引出管脚
	output [31:0] array_reg_29,//下板引出管脚
	output [7:0] array_dmem_1 //引出dmem
	
    );
	 wire [31:0] rt;       
	 wire IM_R,DM_W,DM_R,DM_CS;
	 CPU cpu_0(rst,clk,inst,data,pc,aluc,rt,DM_CS,DM_R,DM_W,IM_R,array_reg_2,array_reg_3,array_reg_4,array_reg_29);
	 IMEM imem_0(pc,inst);
	 //IPCORE1 imem_0(pc[11:2],inst);
	 DMEM dmem_0(clk,DM_CS,DM_R,DM_W,aluc,rt,data,array_dmem_1);
	 


endmodule
