`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:07 05/24/2014 
// Design Name: 
// Module Name:    sync_module 
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
	module sync_module(
		input VGA_CLK, //680x480
		input RST_N,
		//input[7:0] data_in,
		//output reg [9:0] Count_H,
		//output reg [9:0] Count_V,
		output VGA_HS,
		output VGA_VS,
		output[9:0] X,
		output[9:0] Y, //column and row addr signal
		output valid
		//output reg [7:0] data_reg
);
		reg [9:0] Count_H;
		reg[9:0] Count_V;
		reg valid_r;
		
		always@(posedge VGA_CLK or posedge RST_N)
		begin
			if(RST_N) begin
				Count_H <= 10'h0;
				end else if(Count_H==10'd799)
				begin
					Count_H <= 10'h0;
				end
				else
				begin
				Count_H <= Count_H + 10'h1;
				end
		end

		always@(posedge VGA_CLK or posedge RST_N)
		begin
			if(RST_N) begin
				Count_V <= 10'd0;
			end else if(Count_H==10'd799) begin
				if (Count_V == 10'd524) begin
					Count_V <= 10'h0;
				end else	begin
					Count_V <= Count_V+10'h1;
				end
			end
		end

		always@(posedge VGA_CLK or negedge RST_N)
		begin
			if(RST_N)
			valid_r <= 1'b0;
			else if((Count_H>142&&Count_H<783)&&(Count_V>10'd34&&Count_V<10'd515)) //96+45=141 800-13+1=782 2+30=32 525-9+1=517
			begin
				valid_r=1'b1;
				//data_reg <= data_in;
			end
			else
			begin
				valid_r=1'b0;				
				//data_reg <= data_in;
			end
		end

		assign VGA_HS=(Count_H<=10'd96) ? 1'b0 : 1'b1;
		assign VGA_VS=(Count_V<=10'd2) ? 1'b0 : 1'b1;
		assign valid=valid_r;
		assign X=valid_r ? Count_H-10'd143 : 10'd0;
		assign Y=valid_r ? Count_V-10'd35 : 10'd0;


endmodule
