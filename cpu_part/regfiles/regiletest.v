`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:25 10/14/2013
// Design Name:   regfile
// Module Name:   D:/Xilinx/workshop/regfiles/regiletest.v
// Project Name:  regfiles
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regiletest;

	// Inputs
	reg clk;
	reg rst;
	reg we;
	reg [4:0] raddr1;
	reg [4:0] raddr2;
	reg [4:0] waddr;
	reg [31:0] wdata;

	// Outputs
	wire [31:0] rdata1;
	wire [31:0] rdata2;

	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.raddr1(raddr1), 
		.raddr2(raddr2), 
		.waddr(waddr), 
		.wdata(wdata), 
		.rdata1(rdata1), 
		.rdata2(rdata2)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 0;
		we = 0;
		raddr1 = 0;
		raddr2 = 0;
		waddr = 0;
		wdata = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		clk=0;      
		we=1;
		waddr=1;
		wdata=10;
		raddr1=1;
		raddr2=1;

	end
      
endmodule

