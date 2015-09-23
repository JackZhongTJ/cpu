`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:46 12/23/2013 
// Design Name: 
// Module Name:    key_anti_shake_2 
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
module key_anti_shake_2(
	input clk,
	input key_in,
	output key_out
    );
	 reg  count_high;
	 reg  count_low;
	 reg key_reg;

	 assign key_out = key_reg;

	 always@( posedge clk )
		if( key_in == 1'b0 )
			count_low <= count_low + 1;
		else
			count_low <= 0;
 
	 always@( posedge clk )
		if( key_in == 1'b1 ) 
			count_high <= count_high +1;
		else
			count_high <= 0;

	 always@( posedge clk )
	 begin
		if( count_high == 1 )
			key_reg <= 1'b1;
		else
		
		if( count_low == 1 )
			key_reg <= 1'b0;
		//else
			//key_reg <= key_reg;
	 end


endmodule
