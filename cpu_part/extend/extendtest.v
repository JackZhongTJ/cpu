`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:52:22 10/14/2013
// Design Name:   extend
// Module Name:   D:/Xilinx/workshop/extend/extendtest.v
// Project Name:  extend
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module extendtest;

	// Inputs
	reg [15:0] a;
	reg sext;

	// Outputs
	wire [31:0] b;

	// Instantiate the Unit Under Test (UUT)
	extend uut (
		.a(a), 
		.sext(sext), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 16'b1010101010101010;
		sext = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		sext = 1;
		
		#100;

	end
      
endmodule

