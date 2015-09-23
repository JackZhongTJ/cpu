`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:23 10/14/2013 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2,
	 output [31:0] array_reg_2,//下板引出管脚
	 output [31:0] array_reg_3,//下板引出管脚
	 output [31:0] array_reg_4,//下板引出管脚
	 output [31:0] array_reg_29//下板引出管脚
    );
 reg [31:0] array_reg[31:0];  
 
 integer i;
	 always @(posedge clk,posedge rst)
	 begin
	 if(rst==1)
	 begin
	 i=0;
	 while(i<32)
	 begin
	 array_reg[i]=0;
	 i=i+1;
	 end
	 end
	 else if(we==1)
	 array_reg[waddr]=wdata;
	 end
	 
assign rdata1=array_reg[raddr1];
assign rdata2=array_reg[raddr2];
assign array_reg_2=array_reg[2]; //下板引出管脚
assign array_reg_3=array_reg[3];//下板引出管脚
assign array_reg_4=array_reg[4];//下板引出管脚
assign array_reg_29=array_reg[29];//下板引出管脚

file_write#(32,"regfiles2")fw_rf2(clk,array_reg[2]);
file_write#(32,"regfiles3")fw_rf3(clk,array_reg[3]);
file_write#(32,"regfiles4")fw_rf4(clk,array_reg[4]);
file_write#(32,"regfiles8")fw_rf8(clk,array_reg[8]);
file_write#(32,"regfiles29")fw_rf29(clk,array_reg[29]);
file_write#(32,"regfiles30")fw_rf30(clk,array_reg[30]);

endmodule
