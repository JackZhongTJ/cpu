`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:29:48 11/04/2013
// Design Name:   cla_1
// Module Name:   D:/Xilinx/workshop/ex5sum/test1.v
// Project Name:  ex5sum
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire g;
	wire p;
	wire s;

	// Instantiate the Unit Under Test (UUT)
	cla_1 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.g(g), 
		.p(p), 
		.s(s)
	);

	initial begin
			// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a=0;
		b=1;
		c_in=1;
		#100;
		
		a=1;
		b=1;
		c_in=0;
		#100;
		
		a=1;
		b=1;
		c_in=1;
		#100;
	end
      
endmodule

