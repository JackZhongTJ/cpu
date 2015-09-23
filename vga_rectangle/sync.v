`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:02 06/03/2014
// Design Name:   sync_module
// Module Name:   D:/Xilinx/workshop/vga_rectangle/sync.v
// Project Name:  vga_rectangle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sync_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sync;

	// Inputs
	reg VGA_CLK;
	reg RST_N;

	// Outputs
	//wire [9:0] Count_H;
	//wire [9:0] Count_V;
	wire VGA_HS;
	wire VGA_VS;
	wire [9:0] X;
	wire [9:0] Y;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	sync_module uut (
		.VGA_CLK(VGA_CLK), 
		.RST_N(RST_N), 
		//.Count_H(Count_H), 
		//.Count_V(Count_V), 
		.VGA_HS(VGA_HS), 
		.VGA_VS(VGA_VS), 
		.X(X), 
		.Y(Y), 
		.valid(valid)
	);

	initial begin
		// Initialize Inputs
		VGA_CLK = 0;
		RST_N = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RST_N = 1;
		#100;
		RST_N = 0;
        
		// Add stimulus here

	end
	always #100 VGA_CLK=~VGA_CLK;
      
endmodule

