`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:59 10/21/2013 
// Design Name: 
// Module Name:    cla_1 
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
module cla_1(
     input a,
	  input b,
	  input c_in,
	  output s,
	  output g,
	  output p
    );
	 assign s=a^b^c_in;
	 assign g=a&b;
	 assign p=a|b;
	 

endmodule
