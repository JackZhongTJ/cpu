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
    input [31:0] a,
    input [4:0] b,
    input [1:0] alu,
    output reg [31:0] c
    );
	 reg [4:0]i;
	 always @ (a,b,alu)
	 begin
	 if(alu==2'b00)
	 begin
	 c=a>>b;
	 for(i=0;i<b;i=i+1)
	 c[31-i]=a[31];
	 end
	 
	 if(alu==2'b01)
	 begin
	 c=a>>b;
	 for(i=0;i<b;i=i+1)
	 c[31-i]=1'b0;
	 end
	 
	 if(alu==2'b10||alu==2'b11)
	 begin
	 c=a<<b;
	 for(i=0;i<b;i=i+1)
	 c[i]=1'b0;
	 end
	 
	 end

endmodule

