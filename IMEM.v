`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:39 11/25/2013 
// Design Name: 
// Module Name:    IMEM 
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
module IMEM(
    input [31:0] addr,
    output [31:0] data_out
    );
	 reg [31:0] array_reg [31:0];
	 
	 initial 
	 begin
		$readmemh("file_test.txt",array_reg);
	 end
	
		assign data_out = array_reg[addr[31:2]];	
	 
endmodule 