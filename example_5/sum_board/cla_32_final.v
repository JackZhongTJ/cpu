`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:45 10/21/2013 
// Design Name: 
// Module Name:    cla_32_final 
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
module cla_32_final(
    input [3:0] ADD_1,
	 input c_in, //一位开关控制c_in
	 output co,
	 input add_1,// 左边按钮，按一下输入加数1
	 input add_2, //右边按钮，按一下输入加数2
	 input [2:0] number,
	 input start,
	 output reg [3:0] c,  // 计算结果保存在c中
	 input ena
    );
	 wire g,p;
	 integer i,k,j;
	 reg [31:0] a=0;
	 reg [31:0] b=0;
	 wire [31:0] s;
	 
	 
	 always @(posedge add_1)
	 begin
	   if(ena)
		begin
			for(i=0;i<4;i=i+1)
			begin
				a[i+number*4]=ADD_1[i];			
			end
		end
	 end
	 
	 always @(posedge add_2)
	 begin
		if(ena)
		begin
			for(k=0;k<4;k=k+1)
			begin
				b[k+number*4]=ADD_1[k];		
			end
		end 
	 end
	 
	 cla_32 cla_320(a,b,c_in,s,g,p);

	 
		
	 always @(posedge start)
	 begin
		for(j=0;j<4;j=j+1)
		begin
			c[j]=s[j+number*4];
		end
	 end
	 assign co = g|p&c_in;
	 
endmodule
