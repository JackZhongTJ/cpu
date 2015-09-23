`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:18 10/14/2013 
// Design Name: 
// Module Name:    pcreg 
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
module pcreg(
    input clk,
    input rst,
    input ena,
    input [3:0] data_in,
    output reg[3:0] data_out,
	 input [2:0] number,
	 input IOput
    );
	 reg [31:0] temp;
	 integer i,k;
	 
	 always @ (number , IOput)
	 if(IOput==1)
	 begin
		for(i=0;i<4;i=i+1)
			begin
				temp[i+4*number]<=data_in[i];
			end	
    end		
	 
	 
	 always @ (posedge clk,posedge rst)
	 if(rst)
	 begin
		data_out<=0;
	 end
	 
	 else if(ena)
	 begin	
		if(IOput==0)
			begin
				for(k=0;k<4;k=k+1)
					begin
						data_out[k]<=temp[k+4*number];
					end
			end	
	 
	 end


endmodule	
