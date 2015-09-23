`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:44 12/23/2013
// Design Name:   cpu_board_final
// Module Name:   D:/Xilinx/workshop/cpu_32_board/cpu_board_test.v
// Project Name:  cpu_32_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_board_final
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_board_test;

	// Inputs
	reg sys_clk;
	reg [1:0] digit;
	reg [1:0] switch;
	reg button_rst;
	reg button_clk;
	reg [1:0] regfile_switch;
	reg clk_divided_rst;
	reg select;
	reg scan_rst;
	reg dmem_select;
	

	// Outputs
	wire [7:0] c;
	wire [6:0] Y_r;
	wire [3:0] DIG_r;

	// Instantiate the Unit Under Test (UUT)
	cpu_board_final uut (
		.sys_clk(sys_clk), 
		.digit(digit), 
		.switch(switch), 
		.button_rst(button_rst), 
		.button_clk(button_clk), 
		.regfile_switch(regfile_switch), 
		.clk_divided_rst(clk_divided_rst),
		.select(select),
		.scan_rst(scan_rst),
		.Y_r(Y_r),
		.DIG_r(DIG_r),
		.c(c),
		.dmem_select(dmem_select)
	);

	initial begin
		// Initialize Inputs
		sys_clk = 0;
		button_rst = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		button_rst=1;
		#1000;
		button_rst=0;

	end
	always #1000 sys_clk = ~sys_clk;
      
endmodule

