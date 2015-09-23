`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:30 10/21/2013
// Design Name:   cla_32
// Module Name:   D:/Xilinx/workshop/ex5sum/cla_32test.v
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

module cla_32test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg c_in;

	// Outputs
	wire [31:0] s;
	wire c_outfinal;

	// Instantiate the Unit Under Test (UUT)
	cla_32 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.s(s), 
		.c_outfinal(c_outfinal)
	);

	initial begin
		// Initialize Inputs
		a = 32'b01111111111111111111111111111111;
		b = 32'b10000000000000000000000000000001;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 32'd1021201;
		b = 32'd	1457454;
		c_in = 0;
      #100;		
      
      a = 32'd6553500;
      b = 32'd1111145;
		c_in = 0;
      #100;

      a = 32'd65535656;
      b=32'd11112441;
      c_in = 0;
      #100;

      a=32'd65555535;
      b=32'd11114541;		
		c_in = 0;
		#100;
		// Add stimulus here

	end
      
endmodule

