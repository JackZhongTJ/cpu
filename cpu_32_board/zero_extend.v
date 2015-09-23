`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:04 04/16/2014 
// Design Name: 
// Module Name:    zero_extend 
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
module zero_extend(
    input [15:0] a,
    output reg [31:0] b
    );
	always @(a)
	begin:LABEL
		begin 
			b[31:0] = 32'h00000000;
			b[15:0] = a[15:0];
		end
	end

endmodule

