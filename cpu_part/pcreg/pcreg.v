`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:18 10/14/2013 
// Design Name: 
// Module Name:    pcreg 
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
module pcreg(
    input pc_clk,
    input rst,
    input [31:0] data_in,
    output reg[31:0] data_out
    );
	 
	 
	 always @ (posedge pc_clk or posedge rst)
	 if(rst)
		begin
			data_out<=0;
		end
	 
	 else
			begin
					begin
						data_out<=data_in;
					end
			end	

endmodule	
