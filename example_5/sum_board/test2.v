`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:33:10 11/04/2013
// Design Name:   cla_2
// Module Name:   D:/Xilinx/workshop/ex5sum/test2.v
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

module test2;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;
	reg c_in;

	// Outputs
	wire [1:0] s;
	wire g_out;
	wire p_out;

	// Instantiate the Unit Under Test (UUT)
	cla_2 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.s(s), 
		.g_out(g_out), 
		.p_out(p_out)
	);

	initial begin
	
		a = 2'b10;
		b = 2'b11;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 2'b01;
		b = 2'b01;
      c_in = 0;
		
		#100;
	end
      
endmodule

