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
    div_2 d2 (q,clk,reset);// ����������ƵĹ���ģ��div_2
    always #20 clk=~clk;// ��������Ϊ40��ʱ�䵥λ��ʱ�������ź�

// initial��ִֻ��һ�Σ��˴���CLK����ʼ��ƽΪ�ͣ�RESETΪ��
    initial    
    begin
        clk=1'b0;
        reset=1'b1;
        #24 reset =1'b0;
    end
	 
end module 