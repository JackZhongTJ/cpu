`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:47 11/23/2013 
// Design Name: 
// Module Name:    extend_5 
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
module extend_5(
    input [4:0] a,
    output reg [31:0] b
    );
	always @(a)
	begin:LABEL
		if(a[4] == 1)
		begin 
			b[31:0] = 32'hffffffff;
			b[4:0] = a[4:0];
		end
		else
		begin 
			b[31:0] = 32'h00000000;
			b[4:0] = a[4:0];
		end
	end

endmodule
