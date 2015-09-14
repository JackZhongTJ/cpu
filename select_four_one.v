`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:11 11/17/2013 
// Design Name: 
// Module Name:    select_four_one 
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
module select_four_one(
	 input [31:0] a0,
    input [31:0] a1,
    input [31:0] a2,
    input [31:0] a3,
    input [1:0] s,
    output reg [31:0] y
    );
	 always@(a0,a1,a2,a3,s)
	 begin
	 case(s)
	     2'b00: y=a0;
		  2'b01: y=a1;
		  2'b10: y=a2;
		  2'b11: y=a3;
	 endcase
	 end
	 


endmodule

