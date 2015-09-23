`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:14:14 11/08/2013 
// Design Name: 
// Module Name:    addsub32 
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
module addsub32(
    input [31:0] a,
    input [31:0] b,
    input sub,
	 input c_in,
    output c_out,
    output reg [31:0] s
    );
	 
	 cla_32_final cla_32_final_ex(a,b^,c_in,c_out,s)


endmodule
