`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:46 12/23/2013 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div #(parameter div_num=100000)(
	input clk,
	input rst,
	output reg clkout
    );
	 reg [31:0] cnt;

	always @( posedge clk or posedge rst)      //分频200Hz
   begin 
		if (rst)
			cnt <= 0 ;
		else  
		begin  
			cnt<= cnt+1;
         if (cnt == (div_num >> 1) - 1)       //div_num分频数，原时钟频率/分频数 为分频后的时钟频率。          
				clkout <= 1'b1;
         else if (cnt == div_num - 1)                    
			begin 
           clkout <= 1'b0;
           cnt <= 1'b0;      
         end
          
      end
    end

endmodule
