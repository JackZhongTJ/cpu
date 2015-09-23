`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:46 10/14/2013 
// Design Name: 
// Module Name:    ram 
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
module ram(
    input clk,
    input ram_ena,
    input wena,
    input [4:0] addr,
    input [31:0] data_in,
    output reg[31:0] data_out
    );
	 reg [31:0] array_reg [31:0];
	 always @(posedge clk)
	 begin
	 if(ram_ena==1)
	 begin
		if (wena==1)
			begin
				array_reg[addr]=data_in;
				data_out = array_reg[addr];
			end
		end
	 end
endmodule
