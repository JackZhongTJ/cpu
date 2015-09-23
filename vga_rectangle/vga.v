`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:47 05/25/2014
// Design Name:   vga_module
// Module Name:   D:/Xilinx/workshop/vga_rectangle/vga.v
// Project Name:  vga_rectangle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vga;

	// Inputs
	reg sys_clk;
	reg rst;
	reg clk_rst;

	// Outputs
	wire VGA_CLK;
	wire [2:0] VGA_R;
	wire [2:0] VGA_G;
	wire [1:0] VGA_B;
	wire VGA_HS;
	wire VGA_VS;
	wire VGA_BLANK_N;
	wire VGA_SYNC_N;

	// Instantiate the Unit Under Test (UUT)
	vga_module uut (
		.sys_clk(sys_clk), 
		.rst(rst), 
		.clk_rst(clk_rst),
		.VGA_CLK(VGA_CLK),
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B), 
		.VGA_HS(VGA_HS), 
		.VGA_VS(VGA_VS), 
		.VGA_BLANK_N(VGA_BLANK_N), 
		.VGA_SYNC_N(VGA_SYNC_N)
	);

	initial begin
		// Initialize Inputs
		sys_clk = 0;
		rst = 0;
		clk_rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		clk_rst = 0;
		#100;
		rst = 0;
		 
		// Add stimulus here

	end
		always #100 sys_clk=~sys_clk;
      
endmodule

