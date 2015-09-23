`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:01 10/21/2013 
// Design Name: 
// Module Name:    cla_16 
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
module cla_16(
    input [15:0] a,
    input [15:0] b,
    input c_in,
    output [15:0] s,
    output g_out,
    output p_out
    );
	 wire [1:0] g,p;
	 wire c_out;
	 wire c_in_o;
	 cla_8 cla_80(a[7:0],b[7:0],c_in_o,s[7:0],g[0],p[0]);
	 cla_8 cla_81(a[15:8],b[15:8],c_out,s[15:8],g[1],p[1]);
	 g_p g_p8(g,p,c_in,c_in_o,c_out,g_out,p_out);


endmodule
