`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:28 12/16/2013
// Design Name:   cpu_mem_final
// Module Name:   D:/Xilinx/workshop/cpu_32_board/ip_core_test.v
// Project Name:  cpu_32_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_mem_final
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ip_core_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] inst;
	wire [31:0] pc;
	wire [31:0] aluc;
	wire [31:0] data;

	// Instantiate the Unit Under Test (UUT)
	cpu_mem_final uut (
		.clk(clk), 
		.rst(rst), 
		.inst(inst), 
		.pc(pc), 
		.aluc(aluc), 
		.data(data)
	);


	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#50;
		rst=1;
		#50;
		rst=0;

	end
	always #50 clk = ~clk;
      
endmodule

