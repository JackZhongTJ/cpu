`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:45 10/21/2013 
// Design Name: 
// Module Name:    cla_32_final 
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
module cla_32_final(
   
	input [31:0] a,
	input [31:0] b,
	input c_in,
	output [31:0] s
    );
	 wire g,p;

	 cla_32 cla_320(a,b,c_in,s,g,p);
	 
endmodule
