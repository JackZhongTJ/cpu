`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:44 12/20/2013 
// Design Name: 
// Module Name:    key_anti_shake 
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
module key_anti_shake(
	input clk,
	input key_in,
	output key_out
    );
	 reg [19:0] cnt;
	 reg low_sw;
	 reg low_sw_r;
	 reg d1;
	 
	 always @(posedge clk)
	 begin	
		cnt<=cnt+1'b1;
	 end
	 
	 always @(posedge clk)
	 if(cnt==20'hfffff)
		low_sw <= key_in;
	
	 always @(posedge clk)
		low_sw_r <= low_sw;
		
	 wire button_ctrl = low_sw_r & (~low_sw);
	 
	 always@(posedge clk)
	 if(button_ctrl) d1<= ~d1;

	 assign key_out =d1? key_in : ~key_in;
		
endmodule


