`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:14 06/04/2014 
// Design Name: 
// Module Name:    vga_data_in 
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
module vga_data_in(
		input VGA_CLK,
		input RST_N,
		input[9:0] X,
		input[9:0] Y,
		input valid,
		output[2:0] VGA_R,
		output[2:0] VGA_G,
		output[1:0] VGA_B
);
		
		//reg [7:0] data_reg;
		/*
		//parameter size_5 = 680;
		//parameter size_1 = 280;
		//parameter size_3 = 200;
		parameter size_4 = 16;
 		//parameter size_2 = 480;
		parameter size_6 = 16;
		
		reg [7:0] data_in[0:326399];
		
		integer i,j;
		
		always @(posedge RST_N)
		begin
		for(i=0;i<size_4;i=i+1)
		begin
			for(j=0;j<size_6;j=j+1)
			begin
				data_in[j*size_6+i] = 8'b11100000;
			end
		end
		end
		
		always @(posedge VGA_CLK)
		begin
		data_reg = data_in[Y*size_6+X][7:0];
		//reg [7:0] data_reg = 8'b11111100;
		end
		*/
		
		
		/*always @( posedge VGA_CLK  or posedge RST_N)
		begin
		if(RST_N)
		begin
		if(X>10'd0&&X<10'd340&&Y>10'd0&&Y<10'd240)
		begin
			data_reg = 8'b11111100;
		end
		
		if(X>10'd340&&X<10'd680&&Y>10'd0&&Y<10'd240)
		begin
			data_reg = 8'b00011100;
		end
		
		if(X>10'd0&&X<10'd340&&Y>10'd240&&Y<10'd480)
		begin
			data_reg = 8'b11100000;
		end
		
		if(X>10'd340&&X<10'd680&&Y>10'd240&&Y<10'd480)
		begin
			data_reg = 8'b00000011;
		end
		end
		
		end
		*/
		reg [7:0] data_in=8'b11100000;
		reg [7:0] data_reg[255:0];
		integer i,j;
		
		always @( posedge VGA_CLK  or posedge RST_N)
		if(RST_N)
		begin
		for(i=0;i<16;i=i+1)
		begin
			for(j=0;j<16;j=j+1)
			begin
				data_reg[16*j+i][7:0] = data_in[7:0];
			end
		end
		end
		
		
		//always @( posedge VGA_CLK  or posedge RST_N)
		//if(RST_N)
		//begin
		//data_reg = 8'b11100000;
		//end
		
		
		
		assign VGA_R=valid ? data_reg[7:5] : 3'b0;
		assign VGA_G=valid ? data_reg[4:2] : 3'b0;
		assign VGA_B=valid ? data_reg[1:0]  : 2'b0;


endmodule
