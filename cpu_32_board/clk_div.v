`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:18 12/23/2013 
// Design Name: 
// Module Name:    clk_div 
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
module sys_clk_div (q,clk,reset); //   输出q，输入时钟CLK，同步复位信号RESET.
    output q;
    input reset;
    input clk;
    reg q;
    always @ (posedge clk or posedge reset)
    if (reset)
      q<=1'b0; // 复位置零
      else
      q<=~q; // 否则q信号翻转
endmodule
