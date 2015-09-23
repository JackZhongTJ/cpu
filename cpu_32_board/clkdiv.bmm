`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:21 05/07/2014 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv (clk,clkout);

input clk;    //系统时钟
output clkout;    //采样时钟输出

reg clkout;
reg [24:0] cnt;

//分频进程
always @(posedge clk)
	begin
		if(cnt == 24'd325)
			begin
				clkout <= 1'b1;
				cnt <= cnt + 24'd1;
			end
		else if(cnt == 24'd650)
			begin
				clkout <= 1'b0;
				cnt <= 24'd0;
			end
		else
			begin
				cnt <= cnt + 24'd1;
			end
	end
endmodule 

