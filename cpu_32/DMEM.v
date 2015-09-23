`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:05 11/25/2013 
// Design Name: 
// Module Name:    DMEM 
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
module DMEM #(parameter DEPTH=1024)(
    input clk,
	 input DM_CS,
    input DM_R,
    input DM_W,
    input [31:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );
	 reg [31:0] array_reg [DEPTH-1:0];
	 assign data_out = array_reg[addr[31:2]];
	 
	 always @(posedge clk)
	 if(DM_CS)
	 begin
	 
	 if(DM_W)
		begin
		array_reg[addr[31:2]] = data_in;
	   // if(DM_R)
		//data_out = array_reg[addr[31:2]];
		end
		 
	 end
	 
	 //file_write#(32,"ram920")fw_dmem920(clk,array_reg[398]);
	 //file_write#(32,"ram")fw_dmem921(clk,array_reg[399]);


endmodule
