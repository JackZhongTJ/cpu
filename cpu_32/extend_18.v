`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:03:15 11/23/2013 
// Design Name: 
// Module Name:    extend_18 
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
module extend_18(
    input [17:0] a,
    output reg [31:0] b
    );
	always @(a)
	begin:LABEL
		if(a[17] == 1)
		begin 
			b[31:0] = 32'hffffffff;
			b[17:0] = a[17:0];
		end
		else
		begin 
			b[31:0] = 32'h00000000;
			b[17:0] = a[17:0];
		end
	end

endmodule
