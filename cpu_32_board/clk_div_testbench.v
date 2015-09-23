`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:47 12/23/2013
// Design Name:   clk_div
// Module Name:   D:/Xilinx/workshop/cpu_32_board/clk_div_testbench.v
// Project Name:  cpu_32_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;
    reg clk;
    reg reset;
    div_2 d2 (q,clk,reset);// 调用我们设计的功能模块div_2
    always #20 clk=~clk;// 产生周期为40个时间单位的时钟脉冲信号

// initial块只执行一次，此处让CLK的起始电平为低，RESET为高
    initial    
    begin
        clk=1'b0;
        reset=1'b1;
        #24 reset =1'b0;
    end
	 
end module 