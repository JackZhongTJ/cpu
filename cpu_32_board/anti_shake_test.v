`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:16 12/23/2013
// Design Name:   key_anti_shake_3
// Module Name:   D:/Xilinx/workshop/cpu_32_board/anti_shake_test.v
// Project Name:  cpu_32_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: key_anti_shake_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module anti_shake_test;

	// Inputs
	reg BJ_clk;
	reg rst;
	reg button_in;

	// Outputs
	wire button_out;
	wire button_in_q;
	wire button_in_2q;
	wire button_in_3q;

	// Instantiate the Unit Under Test (UUT)
	key_anti_shake_3 uut (
		.BJ_clk(BJ_clk), 
		.rst(rst), 
		.button_in(button_in), 
		.button_out(button_out),
		.button_in_q(button_in_q),
		.button_in_2q(button_in_2q),
		.button_in_3q(button_in_3q)
	);

	initial begin
		BJ_clk=0;
		rst = 0;
		#10;
	
		rst = 1;
		#10;
		
		rst = 0;
		
		button_in = 1;
		#12500000;
		
		button_in = 0;
		#30000000;
		
		button_in = 1;
		#5000000;
		
		button_in = 0;
		#60000000;
		
		button_in = 1;
		
		
	end
      
	always #12500000 BJ_clk=~BJ_clk;
	
	
endmodule

