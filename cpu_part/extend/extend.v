`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:37 10/14/2013 
// Design Name: 
// Module Name:    extend 
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
module extend_16(
    input [15:0] a,
    output reg [31:0] b
    );
	always @(a)
	begin:LABEL
		if(a[15] == 1)
		begin 
			b[31:0] = 32'hffffffff;
			b[15:0] = a[15:0];
		end
		else
		begin 
			b[31:0] = 32'h00000000;
			b[15:0] = a[15:0];
		end
	end

endmodule
