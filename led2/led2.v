`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:28 09/24/2013 
// Design Name: 
// Module Name:    led2 
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
module led2(dip,led
    );
	 input [7:0] dip;
	 output [7:0] led;
	 
	 assign led = dip;

endmodule
