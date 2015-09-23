`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:46 10/19/2013
// Design Name:   barrelshifter
// Module Name:   D:/Xilinx/workshop/ex6/barrelshitertest.v
// Project Name:  ex6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrelshifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrelshitertest;

	// Inputs
	reg [31:0] a;
	reg [4:0] b;
	reg [1:0] alu;

	// Outputs
	wire [31:0] c;

	// Instantiate the Unit Under Test (UUT)
	barrelshifter uut (
		.a(a), 
		.b(b), 
		.alu(alu), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 32'b00000000000000000000000011111110;
		b = 32'b00010;
		alu =2'b11;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 32'b10101010101010101111111111111111;
		b = 32'b00010;
		alu =2'b01;
		#100;
		
		a = 32'b10101010101010101111111111111111;
		b = 32'b00010;
		alu =2'b10;
		#100;
		
		a = 32'b10101010101010101111111111111111;
		b = 32'b00010;
		alu =2'b11;
		#100;

	end
      
endmodule

