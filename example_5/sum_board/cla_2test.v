`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:56:36 10/21/2013
// Design Name:   cla_2
// Module Name:   D:/Xilinx/workshop/ex5sum/cla_2test.v
// Project Name:  ex5sum
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_2test;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;
	reg c_in;

	// Outputs
	wire g_out;
	wire p_out;
	wire [1:0] s;

	// Instantiate the Unit Under Test (UUT)
	cla_2 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.g_out(g_out), 
		.p_out(p_out), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 2'b10;
		b = 2'b11;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 2'b01;
		b = 2'b01;
      c_in = 0;
		
		#100;
		// Add stimulus here

	end
      
endmodule

