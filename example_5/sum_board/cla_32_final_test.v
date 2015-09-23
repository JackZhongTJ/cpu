`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:00:05 10/21/2013
// Design Name:   cla_32_final
// Module Name:   D:/Xilinx/workshop/ex5sum/cla_32_final_test.v
// Project Name:  ex5sum
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_32_final
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_32_final_test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg c_in;

	// Outputs
	wire co;
	wire [31:0] s;

	// Instantiate the Unit Under Test (UUT)
	cla_32_final uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.co(co), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 32'd65535;
		b = 32'd11111;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a=32'd1021201;
		b=32'd1457454;
		c_in=0;
		#100;
		
		a=32'd6553500;
		b=32'd1111145;
		c_in=0;
		#100
		
		a=32'd65455345;
		b=32'd11145411;
		c_in=0;
		#100
		
		a=32'd65535656;
		b=32'd11112441;
		c_in=0;
		#100
		
		a=32'd65555535;
		b=32'd11114541;
		c_in=0;
		#100
		$stop;
	end
      
endmodule

