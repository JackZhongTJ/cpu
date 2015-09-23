`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:15 11/04/2013
// Design Name:   barrelshifter
// Module Name:   D:/Xilinx/workshop/barrelshifter_board/barrelshifter_test.v
// Project Name:  barrelshifter_board
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

module barrelshifter_test;

	// Inputs
	reg [2:0] number;
	reg sra;
	reg srl;
	reg sll;
	reg [4:0] data_in;
	reg input_a;
	reg input_b;

	// Outputs
	wire [3:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	barrelshifter uut (
		.number(number), 
		.sra(sra), 
		.srl(srl), 
		.sll(sll), 
		.data_in(data_in), 
		.input_a(input_a), 
		.input_b(input_b), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		number = 0;
		sra = 0;
		srl = 0;
		sll = 0;
		data_in = 0;
		input_a = 0;
		input_b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

