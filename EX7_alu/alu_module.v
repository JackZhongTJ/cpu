`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:38 11/07/2013 
// Design Name: 
// Module Name:    alu_module 
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
module alu_module(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output [31:0] r,
    output zero,
    output carry,
    output negative,
    output overflow
    );
	 wire carry_1,carry_2,carry_3,carry_4,carry_5; // carry1:加法  carry2:减法  carry3:移位  carry4加减法选择
	 
	 // 模块一，加减法 
      wire [32:0] alu_add=a+b;    
		wire [32:0] alu_sub=a+~b+1'b1;
		assign carry_1 = alu_add[32];
		assign carry_2 = alu_sub[32];
	   wire [31:0] alu_logic_first;
		assign alu_logic_first = aluc[0]?alu_sub[31:0] : alu_add[31:0];
		assign carry_4 =(aluc[1]==0&&aluc[0]==1)?carry_2:carry_1;
		
	
	 // 模块二 与，或，异或，或非选择
		wire [31:0] alu_and = a&b;  
		wire [31:0] alu_or  = a|b;  
		wire [31:0] alu_xor = a^b;
		wire [31:0] alu_nor = ~(a|b);
		wire [31:0] alu_logic_second;
		wire [31:0] alu_and_or = aluc[0]?alu_or : alu_and;
		wire [31:0] alu_xor_nor = aluc[0]?alu_nor : alu_xor;
		assign alu_logic_second = aluc[1]?alu_xor_nor : alu_and_or;
		
		
	 //模块三
		wire [31:0] compare_1= (a<b) ? 1:0;
		wire [31:0] compare_2 = ($signed(a)<$signed(b))? 1:0;
		wire [31:0] alu_compare = aluc[0] ? compare_2:compare_1;
		wire [31:0] alu_lui = {b[15:0],16'h0};
		wire [31:0] alu_logic_third;
		assign alu_logic_third = aluc[1]?alu_compare:alu_lui;
		

	 //模块四
	   wire [31:0] alu_logic_fourth;
		barrelshifter select_logic_fourth(b,a[4:0],aluc[1:0],carry_3,alu_logic_fourth);
		

	
		//总模块，选择第一轮选择模块中的功能
		
		mux4x32 select_final(alu_logic_first,alu_logic_second,alu_logic_third,alu_logic_fourth,aluc[3:2],r);
		
		assign zero = ~|r;
		assign carry5 = aluc[3]? carry_3:carry_4;
		assign carry = (aluc[3:2]==0||aluc[3:2]==1)? carry5:carry;
		assign negative = (aluc[3:2]==0&&aluc[1]==1)? r[31]:negative;
		assign overflow = (alu_logic_first[31]&~a[31]&~b[31])|(~alu_logic_first[31]&a[31]&b[31]);
		


endmodule
