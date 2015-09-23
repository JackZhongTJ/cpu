`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:29 10/15/2013 
// Design Name: 
// Module Name:    g_p 
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
module g_p(
    input [1:0] g,
    input [1:0] p,
    input [0:0] c_in,
    output [0:0] c_in_o,
    output [0:0] c_out,
    output [0:0] g_out,
    output [0:0] p_out
    );
	 assign g_out = g[1]|p[1]&g[0];
	 assign p_out = p[1]&p[0];
	 assign c_out = g[0]|p[0]&c_in;
	 assign c_in_o=c_in;

endmodule
