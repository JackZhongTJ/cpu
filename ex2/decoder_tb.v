`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:47:21 10/13/2013
// Design Name:   decoder
// Module Name:   D:/Xilinx/workshop/ex2/decoder_tb.v
// Project Name:  ex2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_tb;

	// Inputs
	reg [2:0] data_in;
	reg ena;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.data_in(data_in), 
		.ena(ena), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 0;
		ena = 0;

		// Wait 100 ns for global reset to finish
		#100;
		ena=1;
		while(data_in<8) //循环改变输入
		begin
		     #100 //延时
			  data_in = data_in + 1;
	   end

	end
      
endmodule

