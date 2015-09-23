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
input  clkout; //采样时钟
input rx; //UART 数据输入
output dataout; //接收数据输出
output rdsig;
//output dataerror; //资料出错指示
output frameerror; //帧出错指示

input [7:0] datain;	//需要发送的数据
 input wrsig;	//发送命令，上升沿有效
 
 output idle;  //线路状态指示，高为线路忙，地为线路空闲
 output tx;    //发送数据信号
 
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


always @(posedge clk) //检测线路的下降沿
begin
rxbuf <= rx;
rxfall <= rxbuf & (~rx);
end
always @(posedge clk)
begin
if (rxfall && (~idle)) //检测到线路的下降沿并且原先线路为空闲，启动接收数据进程
begin
receive <= 1'b1;
end
else if(cnt == 8'd175) //接收数据完成
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
8'd24: //接收第0 位数据
begin
idle <= 1'b1;
dataout[0] <= rx;
presult <= paritymode^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd40: //接收第1 位数据
begin
idle <= 1'b1;
dataout[1] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd56: //接收第2 位数据
begin
idle <= 1'b1;
dataout[2] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd72: //接收第3 位数据
begin
idle <= 1'b1;
dataout[3] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd88: //接收第4 位数据
begin
idle <= 1'b1;
dataout[4] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd104: //接收第5 位数据
begin
idle <= 1'b1;
dataout[5] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd120: //接收第6 位数据
begin
idle <= 1'b1;
dataout[6] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b0;
end
8'd136: //接收第7 位数据
begin
idle <= 1'b1;
dataout[7] <= rx;
presult <= presult^rx;
cnt <= cnt + 8'd1;
rdsig <= 1'b1;
end
8'd152: //接收奇偶校验位
/*begin
idle <= 1'b1;
if(presult == rx)
dataerror <= 1'b0;
else
dataerror <= 1'b1; //如果奇偶校验位不对，表示数据出错
cnt <= cnt + 8'd1;
rdsig <= 1'b1;
end
8'd168:*/
begin
idle <= 1'b1;
if(1'b1 == rx)
frameerror <= 1'b0;
else
frameerror <= 1'b1; //如果没有接收到停止位，表示帧出错
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

 
 
 //检测发送命令是否有效
 always @(posedge clk)
 begin
	wrsigbuf <= wrsig;
	wrsigrise <=(~wrsigbuf)&wrsig;
 end
 
always @(posedge clk)
begin
	if(wrsigrise && (~idle_w))  //当发送命令有效且线路为空闲时，启动新的数据发送进程
	begin
		send <=1'b1;
	end
	else if(cnt1 == 8'd176)  //一帧资料发送结束
	begin
		send <=1'b0;
	end
end
  
  
always @(posedge clk)
begin
	if(send ==1'b1)
	begin
		case(cnt1)
		8'd0:    //产生起始位
			begin
				tx <= 1'b0;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd16:   
			begin
				tx <= datain[0];   //发送数据0位
				presult <= datain[0]^paritymode;
				idle_w <= 1'b1;
				cnt1 <= cnt1 + 8'd1;
			end
		8'd32:
		    begin
				tx <= datain[1];   //发送数据1位
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
				tx <= presult;   //发送奇偶校验位
				presult <= datain[0]^paritymode;
				idle <= 1'b1;
				cnt <= cnt + 8'd1;
			end
		8'd160:*/
			begin
				tx <=1'b1;		//发送停止位
				idle_w <=1'b1;
				cnt1 <=cnt1 +8'd1;
			end
		/*8'd176:
			begin
				tx <=1'b1;
				idle <=1'b0;   //一帧资料发送结束
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