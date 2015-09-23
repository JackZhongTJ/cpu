`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:44 11/30/2013
// Design Name:   cpu_mem_final
// Module Name:   D:/Xilinx/workshop/cpu/cpu_test.v
// Project Name:  cpu
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

module cpu_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] inst;
	wire [31:0] pc;
	wire [31:0] aluc;
	wire [31:0] data;
	wire [31:0] array_reg_2;
	wire [31:0] array_reg_3;
	wire [31:0] array_reg_4;
	wire [31:0] array_reg_29;
	wire [7:0] array_dmem_1;

	// Instantiate the Unit Under Test (UUT)
	cpu_mem_final uut (
		.clk(clk), 
		.rst(rst), 
		.inst(inst), 
		.pc(pc), 
		.aluc(aluc), 
		.data(data),
		.array_reg_2(array_reg_2),
		.array_reg_3(array_reg_3),
		.array_reg_4(array_reg_4),
		.array_reg_29(array_reg_29),
		.array_dmem_1(array_dmem_1)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		rst=1;
		#1000;
		rst=0;

	end
	always #1000 clk = ~clk;
      
endmodule

