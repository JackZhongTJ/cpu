`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:20 12/23/2013
// Design Name:   clk_div
// Module Name:   D:/Xilinx/workshop/clk_div/clk_div_test.v
// Project Name:  clk_div
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_div_test;

	// Inputs
	reg clk;
	reg rst;
	// Outputs
	wire clkout;

	// Instantiate the Unit Under Test (UUT)
	clk_div uut (
		.clk(clk), 
		.rst(rst), 
		.clkout(clkout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		
		#5;
		rst=1;
		
		#5;
		rst=0;
		
        
		// Add stimulus here

	end
	
	always #5 clk=~clk;
      
endmodule

