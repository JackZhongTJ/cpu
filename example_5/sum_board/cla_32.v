`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:04 10/21/2013 
// Design Name: 
// Module Name:    cla_32 
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
module cla_32(
    input [31:0] a,
    input [31:0] b,
    input c_in,
    output [31:0] s,
    output g_out,
    output p_out
    );
	 wire [1:0] g,p;
	 wire c_out;
	 wire c_in_o;
	 cla_16 cla_160(a[15:0],b[15:0],c_in_o,s[15:0],g[0],p[0]);
	 cla_16 cla_161(a[31:16],b[31:16],c_out,s[31:16],g[1],p[1]);
	 g_p g_p16(g,p,c_in,c_in_o,c_out,g_out,p_out);
	 


endmodule
