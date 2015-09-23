`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:27 10/15/2013
// Design Name:   cla_1
// Module Name:   D:/Xilinx/workshop/ex5sum/cla_1_test.v
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

module cla_1_test;

	// Inputs
	reg [0:0] a;
	reg [0:0] b;
	reg c_in;

	// Outputs
	wire [0:0] c_out;
	wire [0:0] s;
	wire [0:0] g;
	wire [0:0] p;

	// Instantiate the Unit Under Test (UUT)
	cla_1 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.c_out(c_out), 
		.s(s),
		.g(g),
		.p(p)
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

