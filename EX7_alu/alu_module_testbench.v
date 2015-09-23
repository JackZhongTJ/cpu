`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:21:12 11/08/2013
// Design Name:   alu_module
// Module Name:   D:/Xilinx/workshop/EX7_alu/alu_module_testbench.v
// Project Name:  EX7_alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_module_testbench;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] aluc;

	// Outputs
	wire [31:0] r;
	wire zero;
	wire carry;
	wire negative;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	alu_module uut (
		.a(a), 
		.b(b), 
		.aluc(aluc), 
		.r(r), 
		.zero(zero), 
		.carry(carry), 
		.negative(negative), 
		.overflow(overflow)
	);

	initial begin
		// 模块一 test
		a = 32'b01111111111111111111111111111111;
		b = 32'b01111111111111110000000000000000;
		aluc = 4'b1011;	  // slt
	

		// Wait 100 ns for global reset to finish
		#100;			


	   a = 32'b11111111111111110000010101010101;
		b = 32'b01111111111111000000000000000000;
		aluc = 4'b1011;    //slt
		#100;
		
		a = 32'b01111111111111110000010101010101;
		b = 32'b11111111111111000000000000000000;
		aluc = 4'b1011;    //slt
		#100;
		
		
		a = 32'b10000000000000000000000000000000;
		b = 32'b10000000000000000000000000000001;
		aluc = 4'b1011;    //subu
		#100;
		
		
		// 模块二 test
		a = 32'b10101010101010101010101010101010;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b0100;   //and
  		#100;
		
		a = 32'b10101010101010101010101010101010;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b0101;   //or
		#100;
		
		a = 32'b10101010101010101010101010101010;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b0110;   //xor
		#100;
		
		a = 32'b10101010101010101010101010101010;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b0111;   //nor
		#100;
		
		//模块三 test 
		a = 32'b10101010101010101010101010101010;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b1000;   //lui
		#100;
		
		
		//模块四 test
		a = 32'b11111111111111111111111111100001;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b1100;   //sra
		#100;
		
		a = 32'b11111111111111111111111111100010;
		b = 32'b11111111111111110000000000000000;
		aluc = 4'b1110;   //sll
		#100;
		
		a = 32'b11111111111111111111111111100010; 
		b = 32'b11111111111111110000000000000010;
		aluc = 4'b1101;   //srl
		#100;
		
		
		
		
		

	end
      
endmodule

