`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:15 10/21/2013
// Design Name:   cla_4
// Module Name:   D:/Xilinx/workshop/ex5sum/cla_4test.v
// Project Name:  ex5sum
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_4test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire [3:0] s;
	wire g_out;
	wire p_out;

	// Instantiate the Unit Under Test (UUT)
	cla_4 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.s(s), 
		.g_out(g_out), 
		.p_out(p_out)
	);

	initial begin
		// Initialize Inputs
		a = 4'b1001;
		b = 4'b0110;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 4'b1111;
		b = 4'b0001;
		c_in = 1;
		#100;
		// Add stimulus here

	end
      
endmodule

