`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:00 10/21/2013 
// Design Name: 
// Module Name:    cla_8 
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
module cla_8(
    input [7:0] a,
    input [7:0] b,
    input c_in,
    output [7:0] s,
    output g_out,
    output p_out
    );
	 wire [1:0] g,p;
	 wire c_out;
	 wire c_in_o;
	 cla_4 cla_40(a[3:0],b[3:0],c_in_o,s[3:0],g[0],p[0]);
	 cla_4 cla_41(a[7:4],b[7:4],c_out,s[7:4],g[1],p[1]);
	 g_p g_p2(g,p,c_in,c_in_o,c_out,g_out,p_out);


endmodule
