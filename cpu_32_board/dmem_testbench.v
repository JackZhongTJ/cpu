`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:14:51 12/09/2013
// Design Name:   DMEM
// Module Name:   D:/Xilinx/workshop/cpu_32/dmem_testbench.v
// Project Name:  cpu_32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DMEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dmem_testbench;

	// Inputs
	reg clk;
	reg DM_CS;
	reg DM_R;
	reg DM_W;
	reg [31:0] addr;
	reg [31:0] data_in;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	DMEM uut (
		.clk(clk), 
		.DM_CS(DM_CS), 
		.DM_R(DM_R), 
		.DM_W(DM_W), 
		.addr(addr), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		DM_CS = 0;
		DM_R = 0;
		DM_W = 0;
		addr = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      		
		DM_CS=1;
		DM_R=1;
		DM_W = 1;
		addr = 920;
		data_in = 8'hff;
		
		#100;
      		
		DM_CS=1;
		DM_R=1;
		DM_W = 1;
		addr = 12;
		data_in = 8'hff;
		
		#100;
      		
		DM_CS=1;
		DM_R=1;
		DM_W = 1;
		addr = 0;
		data_in = 8'hff;

	end
      
	always begin
	#100;
	clk = ~clk;
	end
endmodule

