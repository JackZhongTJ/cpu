`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:37 10/14/2013 
// Design Name: 
// Module Name:    extend 
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
module extend(
    input [3:0] data_in,
    input sext,
    output reg [3:0] data_out,
	 input [2:0] number,
	 input input_a,
	 input ena,
	 input output_result
    );
	 reg [15:0] a;
	 reg [31:0] b;
	 integer i,j;
	 
	 always @(posedge input_a)
	 begin
		for(j=0;j<4;j=j+1)
		begin
			a[number*4+j] = data_in[j];
		end
	 end
	 
	 
	 always @(ena or sext)
	 begin
		if(sext==1)
		begin
			i=0;
			
			while(i<16)
			begin
			b[i]=a[i];
			i=i+1;
			end
			
			while(i<32)
			begin
				b[i]=a[15];
				i=i+1;
			end
		end
	 
		else
		begin
			i=0;
			while(i<16)
			begin
				b[i]=a[i];
				i=i+1;
			end
			
			while(i<32)
			begin
				b[i]=1'b0;
				i=i+1;
			end
		end
		
		end
		
		
		always@(posedge output_result)
		for(j=0;j<4;j=j+1)
		begin
			data_out[j]=b[number*4+j];
		end
	 
endmodule
