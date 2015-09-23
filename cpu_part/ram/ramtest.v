`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:56:43 10/14/2013
// Design Name:   ram
// Module Name:   D:/Xilinx/workshop/ram/ramtest.v
// Project Name:  RAM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ramtest;

	// Inputs
	reg clk;
	reg ram_ena;
	reg wena;
	reg [4:0] addr;
	reg [31:0] data_in;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.clk(clk), 
		.ram_ena(ram_ena), 
		.wena(wena), 
		.addr(addr), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ram_ena = 0;
		wena = 0;
		addr = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

