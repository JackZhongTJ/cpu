`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:54 10/19/2013 
// Design Name: 
// Module Name:    barrelshifter 
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
module barrelshifter(
    input [2:0] number,
	 input sra,
	 input srl,
	 input sll,
	 input [4:0] data_in,
	 input input_a,
	 input input_b,
	 output reg [3:0] data_out
    );
	 reg [31:0] a;
	 reg [4:0] b;
	 reg [31:0] c;
	 integer i,j;
	 
	 always @(posedge input_a)
	 begin
		for(i=0;i<4;i=i+1)
		begin
			a[i+number*4]=data_in[i];			
		end
	 end
	 
	 always @(posedge input_b)
	 begin
		for(i=0;i<5;i=i+1)
		begin
			b[i]=data_in[i];			
		end
	 end
	 
	 
	 
	 always @(posedge sra or posedge srl or posedge sll)
	 begin
	 
	 if(sra==1)
	 begin
		c=a>>b;
			for(i=0;i<b;i=i+1)
				c[31-i]=a[31];
	 
			for(j=0;j<4;j=j+1)
			begin
				data_out[j]=c[j+number*4];
			end
	 
	 end
	 
	 if(srl==1)
	 begin
		c=a>>b;
		for(i=0;i<b;i=i+1)
			c[31-i]=1'b0;
	 
		for(j=0;j<4;j=j+1)
		begin
			data_out[j]=c[j+number*4];
		end
	
	 end
	 
	 if(sll==1)
	 begin
		c=a<<b;
		for(i=0;i<b;i=i+1)
			c[i]=1'b0;
	 
		for(j=0;j<4;j=j+1)
		begin
			data_out[j]=c[j+number*4]; 
		end
	 
	 end
	 
	 end
	 

endmodule

