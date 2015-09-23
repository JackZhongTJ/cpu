`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:54 10/13/2013 
// Design Name: 
// Module Name:    mux24a 
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
module mux24a(input[31:0] a,input[31:0] b,input select,output reg[31:0] y);
always @(select or a or b)
if(select==0) 
  y=a;
else y=b;

endmodule
