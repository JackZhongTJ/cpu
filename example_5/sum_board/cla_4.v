`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:54 10/21/2013 
// Design Name: 
// Module Name:    cla_4 
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
module cla_4(
    input [3:0] a,
    input [3:0] b,
    input c_in,
	 output [3:0] s,
    output g_out,
    output p_out
    );
	 wire [1:0] g,p;
	 wire c_out;
	 wire c_in_o;
	 cla_2 cla_20(a[1:0],b[1:0],c_in_o,s[1:0],g[0],p[0]);
	 cla_2 cla_21(a[3:2],b[3:2],c_out,s[3:2],g[1],p[1]);
	 g_p g_p4(g,p,c_in,c_in_o,c_out,g_out,p_out);

endmodule
