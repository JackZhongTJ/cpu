`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:23 05/24/2014 
// Design Name: 
// Module Name:    vga_control_module 
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
module vga_control_module(
		input VGA_CLK,
		input RST_N,
		input[9:0] X,
		input[9:0] Y,
		input valid,
		output[2:0] VGA_R,
		output[2:0] VGA_G,
		output[1:0] VGA_B
);

		reg rectangle;
always@(posedge VGA_CLK or posedge RST_N)
    if(RST_N)
        rectangle<=1'b0;
    //else if(X>11'd0&&Y<11'd100)
   else if((X>10'd160&&X<10'd320&&Y>10'd160&&Y<10'd320)||(X>10'd480&&X<10'd640&&Y>10'd160&&Y<10'd320)||(X>10'd0&&X<10'd160&&Y>10'd0&&Y<10'd160)||(X>10'd320&&X<10'd480&&Y>10'd0&&Y<10'd160)||(X>10'd0&&X<10'd160&&Y>10'd320&&Y<10'd480)||(X>10'd320&&X<10'd480&&Y>10'd320&&Y<10'd480))
		rectangle=1'b0;
	 else
		rectangle=1'b1;
 
assign VGA_R=valid&&rectangle ? 8'b1111_1111 : 8'b0;
assign VGA_G=valid&&rectangle ? 8'b1111_1111 : 8'b0;
assign VGA_B=valid&&rectangle ? 8'b1111_1111 : 8'b0;
 
endmodule