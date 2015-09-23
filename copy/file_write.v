`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:51 11/30/2013 
// Design Name: 
// Module Name:    file_write 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module file_write#(parameter WIDTH=32,parameter ARGUMENT = "0")(	
		input clk,
		input [WIDTH-1:0]a
    );
	 integer File_test,desc;
	 
	 initial begin
		File_test = $fopen("D:/test_suc.txt");
		desc = File_test|1;
	 end
	 
	 always @(posedge clk) begin
		$fdisplay(desc, "%s=%h",ARGUMENT,a);
	 end

endmodule
