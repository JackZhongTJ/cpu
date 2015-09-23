`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:55 12/16/2013
// Design Name:   IMEM_ipcore
// Module Name:   D:/Xilinx/workshop/cpu_32_board/ip_core.v
// Project Name:  cpu_32_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IMEM_ipcore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ip_core;

	// Inputs
	reg clka;
	reg [8:0] addra;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	IMEM_ipcore uut (
		.clka(clka), 
		.addra(addra), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		addra = 0;

		// Wait 100 ns for global reset to finish
		#50;
		
		addra=addra+1;
		#50;
		addra=addra+1;
		#50;
      addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
        addra=addra+1;
		#50;
          
		// Add stimulus here

	end
      
endmodule

