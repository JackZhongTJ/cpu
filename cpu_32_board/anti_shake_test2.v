`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:41:07 12/23/2013
// Design Name:   key_anti_shake_2
// Module Name:   D:/Xilinx/workshop/cpu_32_board/anti_shake_test2.v
// Project Name:  cpu_32_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: key_anti_shake_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module anti_shake_test2;

	// Inputs
	reg clk;
	reg key_in;

	// Outputs
	wire key_out;

	// Instantiate the Unit Under Test (UUT)
	key_anti_shake_2 uut (
		.clk(clk), 
		.key_in(key_in), 
		.key_out(key_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		key_in = 0;
		#12500000;
		
		key_in = 1;
		#20000000;
		key_in = 0;
		#3000000;
		key_in = 1;
		#10000000;
		
		key_in = 0;
		#5000000;
		
		key_in = 1;
		#30000;
		key_in = 0;
		#50000;
		key_in = 1;
		#30000;
		key_in = 0;
		#500000;
		
		key_in = 1;
		#60000000;
		
		key_in = 0;
		
		
	end
      
	always #20000000 clk=~clk;
	
      
endmodule

