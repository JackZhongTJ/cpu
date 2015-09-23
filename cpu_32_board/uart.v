`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:38 05/06/2014 
// Design Name: 
// Module Name:    uart 
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
module uart(clkout, rx, dataout, rdsig, frameerror,datain,wrsig,idle,tx);
input  clkout; //����ʱ��
input rx; //UART ��������
output dataout; //�����������
output rdsig;
//output dataerror; //���ϳ���ָʾ
output frameerror; //֡����ָʾ

input [7:0] datain;	//��Ҫ���͵�����
 input wrsig;	//���������������Ч
 
 output idle;  //��·״ָ̬ʾ����Ϊ��·æ����Ϊ��·����
 output tx;    //���������ź�
 
 reg idle,tx;
 reg send;
 reg wrsigbuf,wrsigrise;
 reg presult;


reg[7:0] dataout;
reg rdsig;//, dataerror;
reg frameerror;
reg [7:0] cnt,cnt1;
reg rxbuf, rxfall, receive;
parameter paritymode = 1'b0;
reg  idle_w;
wire clk;
clkdiv div(clkout,clk);


always @(posedge clk) //�����·���½���
begin
rxbuf <= rx;
rxfall <= rxbuf & (~rx);
end
always @(posedge clk)
begin
if (rxfall && (~idle)) //��⵽��·���½��ز���ԭ����·Ϊ���У������������ݽ���
begin
receive <= 1'b1;
end
else if(cnt == 8'd175) //�����������
begin
receive <= 1'b0;
end
end
always @(posedge clk)
begin
if(receive == 1'b1)
begin
case (cnt)
8'd0:
begin
idle <= 1'b1;
cnt <= cnt + 8'd1;
rdsig <=1'b0;
end
8'd24: //���յ�0 λ����
begin
idle <= 1'b1;
dataout[0] <= rx;
presult <= paritymode^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd40: //���յ�1 λ����
begin
idle <= 1'b1;
dataout[1] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd56: //���յ�2 λ����
begin
idle <= 1'b1;
dataout[2] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd72: //���յ�3 λ����
begin
idle <= 1'b1;
dataout[3] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd88: //���յ�4 λ����
begin
idle <= 1'b1;
dataout[4] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd104: //���յ�5 λ����
begin
idle <= 1'b1;
dataout[5] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd120: //���յ�6 λ����
begin
idle <= 1'b1;
dataout[6] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd136: //���յ�7 λ����
begin
idle <= 1'b1;
dataout[7] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b1;
end
8'd152: //������żУ��λ
/*begin
idle <= 1'b1;
if(presult == rx)
dataerror <= 1'b0;
else
dataerror <= 1'b1; //�����żУ��λ���ԣ���ʾ���ݳ���
cnt <= cnt + 8'd1;
rdsig <= 1'b1;
end
8'd168:*/
begin
idle <= 1'b1;
if(1'b1 == rx)
frameerror <= 1'b0;
else
frameerror <= 1'b1; //���û�н��յ�ֹͣλ����ʾ֡����
cnt <= cnt + 8'd1;
rdsig <= 1'b1;
end
default:
begin
cnt <= cnt + 8'd1;
end
endcase
end
else
begin
cnt <= 8'd0;
idle <= 1'b0;
rdsig <= 1'b0;
end
end

 
 
 //��ⷢ�������Ƿ���Ч
 always @(posedge clk)
 begin
	wrsigbuf <= wrsig;
	wrsigrise <=(~wrsigbuf)&wrsig;
 end
 
always @(posedge clk)
begin
	if(wrsigrise && (~idle_w))  //������������Ч����·Ϊ����ʱ�������µ����ݷ��ͽ���
	begin
		send <=1'b1;
	end
	else if(cnt1 == 8'd176)  //һ֡���Ϸ��ͽ���
	begin
		send <=1'b0;
	end
end
  
  
always @(posedge clk)
begin
	if(send ==1'b1)
	begin
		case(cnt1)
		8'd0:    //������ʼλ
			begin
				tx <= 1'b0;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd16:   
			begin
				tx <= datain[0];   //��������0λ
				presult <= datain[0]^paritymode;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd32:
		    begin
				tx <= datain[1];   //��������1λ
				presult <= datain[1]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd48:
		    begin
				tx <= datain[2];   //2
				presult <= datain[2]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd64:
		    begin
				tx <= datain[3];   //3
				presult <= datain[3]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd80:
		    begin
				tx <= datain[4];   //4
				presult <= datain[4]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd96:
		    begin
				tx <= datain[5];   //5
				presult <= datain[5]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd112:
		    begin
				tx <= datain[6];   //6
				presult <= datain[6]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd128:
		    begin
				tx <= datain[7];   //7
				presult <= datain[7]^presult;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd144:
		/*    begin
				tx <= presult;   //������żУ��λ
				presult <= datain[0]^paritymode;
				idle <= 1'b1;
				cnt <= cnt + 8'd1;
			end
		8'd160:*/
			begin
				tx <=1'b1;		//����ֹͣλ
				idle_w <=1'b1;
				cnt1 <=cnt1 +8'd1;
			end
		/*8'd176:
			begin
				tx <=1'b1;
				idle <=1'b0;   //һ֡���Ϸ��ͽ���
				cnt <= cnt + 8'd1;
			end*/
		default:
			begin
				cnt1<=cnt1 +8'd1;
			end
		endcase
	end
	else
		begin
		tx <= 1'b1;
		cnt1 <= 8'd0;
		idle_w <=1'b0;
		end
end

endmodule 