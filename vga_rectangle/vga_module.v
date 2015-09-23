`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:31 05/24/2014 
// Design Name: 
// Module Name:    vga_module 
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
module vga_module(
			input sys_clk,
			input rst,
			input clk_rst,
			//input [7:0] data_in,
			output VGA_CLK,
			output[2:0] VGA_R,
			output[2:0] VGA_G,
			output[1:0] VGA_B,
			output VGA_HS,VGA_VS,
			output VGA_BLANK_N,
			output VGA_SYNC_N
);
		//wire VGA_CLK;
		wire[9:0] X,Y;  //address
		wire valid;
		wire RST_N;
		
		
		
		assign VGA_SYNC_N=1'b0; //If not SOG,Sync input should be tied to 0;
		assign VGA_BLANK_N=VGA_HS&&VGA_VS;
		assign RST_N = rst;

		time_divided u1(sys_clk,clk_rst,VGA_CLK);
		sync_module u2(VGA_CLK,RST_N,/*data_in,*/VGA_HS,VGA_VS,X,Y,valid/*,data_reg*/);
	   vga_control_module u3(VGA_CLK,RST_N,X,Y,valid,VGA_R,VGA_G,VGA_B);
		//vga_data_in u4(VGA_CLK,RST_N,X,Y,valid,VGA_R,VGA_G,VGA_B);

endmodule
