`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:06 05/06/2014
// Design Name:   uart
// Module Name:   H:/ISE/Project/Uart/test_uart.v
// Project Name:  Uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

odule test_uart;

	// Inputs
	//reg GClk;
	reg clk16x;
	reg rst_n;
	reg rx;

	// Outputs
	wire DataReady;
	wire [7:0] DataReceived;

	// Instantiate the Unit Under Test (UUT)
	uart uut (
	  //  .GClk(GClk),
		.clk(clk16x), 
		.rst_n(rst_n), 
		.rx(rx), 
		.DataReady(DataReady), 
		.DataReceived(DataReceived)
	);
	 //always #100 GClk = ~GClk;
  always #100 clk16x = ~clk16x;
     always #100 rx = ~ rx;
	initial begin
		// Initialize Inputs
	  // GClk = 0;
		clk16x = 0;
		rst_n = 0;
		rx = 0;
 
		// Wait 100 ns for global reset to finish
		#100;
      rst_n = 1;
		// Add stimulus here
		
		#100;
		rst_n = 0;
      
	end
endmodule

