`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:52:39 11/04/2013
// Design Name:   cla_32
// Module Name:   D:/Xilinx/workshop/ex5sum/test_32_cla.v
// Project Name:  ex5sum
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_32_cla;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg c_in;

	// Outputs
	wire [31:0] s;
	wire g_out;
	wire p_out;

	// Instantiate the Unit Under Test (UUT)
	cla_32 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.s(s), 
		.g_out(g_out), 
		.p_out(p_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 4'b1111;
		b = 4'b0010;
		c_in = 0;
		#100;
		// Add stimulus here
	end
      
endmodule

