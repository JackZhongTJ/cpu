`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:05 04/16/2014
// Design Name:   cpu_board_final
// Module Name:   D:/Xilinx/workshop/cpu_32_board/final.v
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

module final;

	// Inputs
	reg sys_clk;
	reg [1:0] digit;
	reg [1:0] switch;
	reg button_rst;
	reg button_clk;
	reg clk_divided_rst;
	reg [1:0] regfile_switch;
	reg scan_rst;
	reg select;
	reg dmem_select;

	// Outputs
	wire [6:0] Y_r;
	wire [3:0] DIG_r;
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	cpu_board_final uut (
		.sys_clk(sys_clk), 
		.digit(digit), 
		.switch(switch), 
		.button_rst(button_rst), 
		.button_clk(button_clk), 
		.clk_divided_rst(clk_divided_rst), 
		.regfile_switch(regfile_switch), 
		.scan_rst(scan_rst), 
		.select(select), 
		.dmem_select(dmem_select), 
		.Y_r(Y_r), 
		.DIG_r(DIG_r), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		sys_clk = 0;
		digit = 0;
		switch = 0;
		button_rst = 0;
		button_clk = 0;
		clk_divided_rst = 0;
		regfile_switch = 0;
		scan_rst = 0;
		select = 0;
		dmem_select = 0;


		// Wait 100 ns for global reset to finish
		#1;
		button_rst=1;
		#1;
		button_rst=0;

	end
	always #1 sys_clk = ~sys_clk;
      
endmodule

