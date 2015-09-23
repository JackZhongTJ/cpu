`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:01:24 06/03/2014
// Design Name:   time_divided
// Module Name:   D:/Xilinx/workshop/vga_rectangle/timedivide.v
// Project Name:  vga_rectangle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: time_divided
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module timedivide;

	// Inputs
	reg clk;
	reg rst;
	// Outputs
	wire clkout;

	// Instantiate the Unit Under Test (UUT)
	time_divided uut (
		.clk(clk), 
		.rst(rst),
		.clkout(clkout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
        
		// Add stimulus here

	end
	always #100 clk=~clk;
      
endmodule

