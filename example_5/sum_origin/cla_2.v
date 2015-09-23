`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:25 10/19/2013 
// Design Name: 
// Module Name:    cla_2 
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
module cla_2(
    input [1:0] a,
    input [1:0] b,
    input c_in,
    output [1:0] s,
	 output g_out,
	 output p_out
    );
	 wire [1:0] g,p;
	 wire c_out;
	 wire c_in_o;
cla_1 cla_10(a[0],b[0],c_in_o,s[0],g[0],p[0]);
cla_1 c1a_11(a[1],b[1],c_out,s[1],g[1],p[1]);
g_p g_p1(g,p,c_in,c_in_o,c_out,g_out,p_out);

endmodule
