`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:12 10/13/2013
// Design Name:   mux24a
// Module Name:   D:/Xilinx/workshop/ex4/mux24a_tb.v
// Project Name:  ex4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux24a
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux24a_tb;

	// Inputs
	reg [0:3] a;
	reg [0:3] b;
	reg select;

	// Outputs
	wire [0:3] y;

	// Instantiate the Unit Under Test (UUT)
	mux24a uut (
		.a(a), 
		.b(b), 
		.select(select), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
      		
		a=1;b=1;select=1;
		#100;
	end
      
endmodule

