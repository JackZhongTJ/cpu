`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:40 10/14/2013 
// Design Name: 
// Module Name:    regfiles 
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
module regfiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2
    );
	 reg [31:0] array_reg[31:0];
	 always @(negedge clk)
	 if(rst==1)
	 begin
	 for(int i;i<32;i++)
	 begin
	 array_reg[i]=0;
	 end
	 end
	 else if(we==1)
	 array_reg[waddr]=wdata;
	 
rdata1=array_reg[raddr1];
rdata2=array_reg[raddr2];


endmodule
