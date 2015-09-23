`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:53 12/17/2013 
// Design Name: 
// Module Name:    cpu_board_final 
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
 module cpu_board_final(
	input sys_clk,
	input [1:0] digit,    //��������ڼ���8λ
	input [1:0] switch,  //�����ĸ������ data,aluc,pc,inst
	input button_rst,
	input button_clk,
	input clk_divided_rst,
	input [1:0] regfile_switch,
	input scan_rst,
	input select,             //ѡ��LED��� PC ALUC INST DATA ����regfile�ڵ�ֵ
	input dmem_select,        //��dmem_select Ϊ1 ������select�ź����ѡ�� led�����dmem������1025�ŵ�Ԫֵ
	input rx,//
	input [7:0]datain,//
	output reg [6:0] Y_r,
	output reg [3:0] DIG_r,
	output reg[7:0] c,
	output [7:0] dataout,//
	output rdsig,//
	output wrsig,//
	output idle,//
	output tx,//
	output frameerror//
    );
	integer j;
	
	wire clk; 
	wire rst; 
	wire divided_clk;   //��Ƶ���LED��ʱ���ź�
	wire divided_clk_key; // ����ģ��ķ�Ƶʱ��
	reg [1:0] scan_cnt;  //�����ɨ���ź�
	reg [3:0] scan_switch; //�����ɨ���ź�
	
	wire [31:0] inst;
	wire [31:0] pc;
	wire [31:0] aluc;
	wire [31:0] data;
	wire [31:0] array_reg_2;
	wire [31:0] array_reg_3;
	wire [31:0] array_reg_4;
	wire [31:0] array_reg_29;
	wire [7:0] array_dmem_1;

	
	uart uart1(sys_clk,rx,dataout,rdsig,frameerror,datain,wrsig,idle,tx);
	//always @(button_clk)
	//begin
	//clk=button_clk;
	//rst=button_rst;
	//end
	
	clk_div_key_anticlk_div clk_div_key_anti0(sys_clk,clk_divided_rst,divided_clk_key); //����ģ��ķ�Ƶʱ�� 50HZ
	clk_div clk_div_led(sys_clk,clk_divided_rst,divided_clk);  //��ϵͳʱ�ӷ�Ƶ��200HZ 
	
	key_anti_shake_2 key_anti_shake0(divided_clk_key,button_clk,clk);  //button_clk ��������
	key_anti_shake_2 key_anti_shake1(divided_clk_key,button_rst,rst);  //button_clk ��������
	
	//cpu_mem_final cpu_final(button_clk,button_rst,inst,pc,aluc,data,array_reg_2,array_reg_3,array_reg_4,array_reg_29,array_dmem_1); //inst 00  pc 01  aluc 10 data 11
	cpu_mem_final cpu_final(divided_clk,rst,inst,pc,aluc,data,array_reg_2,array_reg_3,array_reg_4,array_reg_29,array_dmem_1); //inst 00  pc 01  aluc 10 data 11
	
	//always @(button_clk)
	always @(posedge divided_clk)
	begin
	if(dmem_select==0)   //�ж�dmem_select�ź�
	begin
	
	for(j=0;j<8;j=j+1)
	begin
		c[j]=array_dmem_1[j];
	end
	
	end
	
	else if(select==0)
	begin
	if(switch[1]==0 & switch[0]==0)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=inst[j+digit*8];
		end
		
	if(switch[1]==0 & switch[0]==1)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=pc[j+digit*8];
		end		
		
	if(switch[1]==1 & switch[0]==0)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=aluc[j+digit*8];
		end
		
	if(switch[1]==1 & switch[0]==1)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=data[j+digit*8];
		end
	end
	
	else 
	begin  //��ʾregfileֵ
	
	if(regfile_switch[1]==0 & regfile_switch[0]==0)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=array_reg_2[j+digit*8];
		end
	
	if(regfile_switch[1]==0 & regfile_switch[0]==1)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=array_reg_3[j+digit*8];
		end
		
	if(regfile_switch[1]==1 & regfile_switch[0]==0)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=array_reg_4[j+digit*8];
		end
		
	if(regfile_switch[1]==1 & regfile_switch[0]==1)
		for(j=0;j<8;j=j+1)
		begin
			c[j]=array_reg_29[j+digit*8];
		end
	end
	end
	
	
	always @(posedge divided_clk,posedge scan_rst) 
	begin 
		if (scan_rst)
        scan_cnt <= 0 ;
      else  
		begin
        scan_cnt <= scan_cnt + 1'b1;    
        if(scan_cnt==2'b11)  
			scan_cnt <= 0;
      end 
	end
	
	//always @(divided_clk)    
	always @(divided_clk_key)
	begin
		case(scan_cnt)
		2'b00:DIG_r <= 4'b1110;
		2'b01:DIG_r <= 4'b1101;
		2'b10:DIG_r <= 4'b1011;
		2'b11:DIG_r <= 4'b0111;
		default :DIG_r <= 4'b1111; 
		endcase
	end
	
	//always @(button_clk)
	always @(divided_clk_key)
	begin
		if(regfile_switch[1]==0 & regfile_switch[0]==0 & scan_cnt==2'b00)
		scan_switch <= array_reg_2[3:0];
		if(regfile_switch[1]==0 & regfile_switch[0]==0 & scan_cnt==2'b01)
		scan_switch <= array_reg_2[7:4];
		if(regfile_switch[1]==0 & regfile_switch[0]==1 & scan_cnt==2'b00)
		scan_switch <= array_reg_3[3:0];
		if(regfile_switch[1]==0 & regfile_switch[0]==1 & scan_cnt==2'b01)
		scan_switch <= array_reg_3[7:4];
		if(regfile_switch[1]==1 & regfile_switch[0]==0 & scan_cnt==2'b00)
		scan_switch <= array_reg_4[3:0];
		if(regfile_switch[1]==1 & regfile_switch[0]==0 & scan_cnt==2'b01)
		scan_switch <= array_reg_4[7:4];
		if(regfile_switch[1]==1 & regfile_switch[0]==1 & scan_cnt==2'b00)
		scan_switch <= array_reg_29[3:0];
		if(regfile_switch[1]==1 & regfile_switch[0]==1 & scan_cnt==2'b01)
		scan_switch <= array_reg_29[7:4];
		
		if(regfile_switch[1]==0 & regfile_switch[0]==0 & scan_cnt==2'b10)
		scan_switch <= array_reg_2[11:8];
		if(regfile_switch[1]==0 & regfile_switch[0]==0 & scan_cnt==2'b11)
		scan_switch <= array_reg_2[15:12];
		if(regfile_switch[1]==0 & regfile_switch[0]==1 & scan_cnt==2'b10)
		scan_switch <= array_reg_3[11:8];
		if(regfile_switch[1]==0 & regfile_switch[0]==1 & scan_cnt==2'b11)
		scan_switch <= array_reg_3[15:12];
		if(regfile_switch[1]==1 & regfile_switch[0]==0 & scan_cnt==2'b10)
		scan_switch <= array_reg_4[11:8];
		if(regfile_switch[1]==1 & regfile_switch[0]==0 & scan_cnt==2'b11)
		scan_switch <= array_reg_4[15:12];
		if(regfile_switch[1]==1 & regfile_switch[0]==1 & scan_cnt==2'b10)
		scan_switch <= array_reg_29[11:8];
		if(regfile_switch[1]==1 & regfile_switch[0]==1 & scan_cnt==2'b11)
		scan_switch <= array_reg_29[15:12];
	end
	
	//always @(button_clk)
	always @(divided_clk_key)
	begin
		case (scan_switch)
			0:	Y_r = 7'b1000000; // 0
         1: Y_r = 7'b1111001; // 1
         2: Y_r = 7'b0100100; // 2
         3: Y_r = 7'b0110000; // 3
         4: Y_r = 7'b0011001; // 4
         5: Y_r = 7'b0010010; // 5
         6: Y_r = 7'b0000010; // 6
         7: Y_r = 7'b1011000; // 7
         8: Y_r = 7'b0000000; // 8
         9: Y_r = 7'b0011000; // 9
         10: Y_r = 7'b0001000; // A
         11: Y_r = 7'b0000011; // B
         12: Y_r = 7'b1000110; // C
         13: Y_r = 7'b0100001; // D
         14: Y_r = 7'b0000110; // E
         15: Y_r = 7'b0001110; // F
         default: Y_r = 7'b0000000;
     endcase
   end        

endmodule
