`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:32 06/11/2014
// Design Name:   vga_control_module
// Module Name:   D:/Xilinx/workshop/vga_rectangle/static_vreg_vga.v
// Project Name:  vga_rectangle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_control_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module static_vreg_vga;

	// Inputs
	reg VGA_CLK;
	reg RST_N;
	reg [9:0] X;
	reg [9:0] Y;
	reg valid;

	// Outputs
	wire [2:0] VGA_R;
	wire [2:0] VGA_G;
	wire [1:0] VGA_B;

	// Instantiate the Unit Under Test (UUT)
	vga_control_module uut (
		.VGA_CLK(VGA_CLK), 
		.RST_N(RST_N), 
		.X(X), 
		.Y(Y), 
		.valid(valid), 
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B)
	);

	initial begin
		// Initialize Inputs
		VGA_CLK = 0;
		RST_N = 0;
		X = 0;
		Y = 0;
		valid = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

