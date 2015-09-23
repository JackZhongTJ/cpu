`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:43 12/23/2013 
// Design Name: 
// Module Name:    key_anti_shake_3 
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
module key_anti_shake_3(
	input BJ_clk,
	input rst,
	input button_in,
	output button_out,
	output reg button_in_q,
	output reg button_in_2q,
	output reg button_in_3q
    );
	 //reg button_in_q;
	 //reg button_in_2q;
	 //reg button_in_3q;
	 always @(posedge BJ_clk or negedge rst)
	 begin
	 if(rst)
	 begin
	 button_in_q <= 1'b1;
	 button_in_2q <= 1'b1;
	 button_in_3q <= 1'b1;
	 end
	 
	 else 
	 begin
	 button_in_q <= button_in;
	 button_in_2q <= button_in_q;
	 button_in_3q <= button_in_2q;
	 end
	 
	 end

	 assign button_out = button_in_2q|button_in_3q;
 
endmodule
