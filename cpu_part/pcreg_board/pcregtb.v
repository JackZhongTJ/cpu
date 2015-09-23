`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:10 10/14/2013
// Design Name:   pcreg
// Module Name:   D:/Xilinx/workshop/pcreg/pcregtb.v
// Project Name:  pcreg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pcreg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pcregtb;

	// Inputs
	reg clk;
	reg rst;
	reg ena;
	reg [31:0] data_in;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	pcreg uut (
		.clk(clk), 
		.rst(rst), 
		.ena(ena), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		ena = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
       ena=1;
		data_in=1;
		clk=1;
		#100;
		rst=1;
		clk=0;
	end
      
endmodule

