`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:28 12/23/2013 
// Design Name: 
// Module Name:    sw_debounce 
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
module sw_debounce(
    clk,
    rst_n,
    sw1,
    sw2,
    sw3,
    //output
    led_d3,
    led_d4,
    led_d5
    ); 

  input   clk;
  input   rst_n;
  input   sw1,sw2,sw3; //Active low
  output  led_d3;
  output  led_d4;
  output  led_d5; 

// ---------------------------------------------------------------------------
  // 通过降采样对sw1~sw3的输入做低通滤波，将其高频分量滤除,得到low_sw值
  // ---------------------------------------------------------------------------
  reg [19:0]  cnt;
  always @ (posedge clk  or negedge rst_n)
    if (!rst_n) 
      cnt <= 20'd0;
    else 
      cnt <= cnt + 1'b1;
  
  reg  [2:0] low_sw;
  always @(posedge clk  or negedge rst_n)
    if (!rst_n)
      low_sw <= 3'b111;
    else if (cnt == 20'hfffff)       //每隔20MS检测一次按键
      low_sw <= {sw3,sw2,sw1};

reg  [2:0] low_sw_r;               //将low_sw信号锁存一个时钟周期，延时不是真的"锁存"
  always @ ( posedge clk  or negedge rst_n )
    if (!rst_n)
      low_sw_r <= 3'b111;
    else
      low_sw_r <= low_sw;
   
  wire [2:0] led_ctrl = low_sw_r[2:0] & ( ~low_sw[2:0]); 
                   //当检测到按键有下降沿变化时，代表该按键被按下，按键有效 

  reg d1;
  reg d2;
  reg d3;
  
  always @ (posedge clk or negedge rst_n)
    if (!rst_n)
      begin
        d1 <= 1'b0;
        d2 <= 1'b0;
        d3 <= 1'b0;
      end
    else 
      begin
        if ( led_ctrl[0] ) d1 <= ~d1;
        if ( led_ctrl[1] ) d2 <= ~d2;
        if ( led_ctrl[2] ) d3 <= ~d3;
      end 

  assign led_d5 = d1 ? 1'b1 : 1'b0;
  assign led_d3 = d2 ? 1'b1 : 1'b0;
  assign led_d4 = d3 ? 1'b1 : 1'b0;
  
  else if (cnt == 20'hfffff)       //每隔20MS检测一次按键
   low_sw <= {sw3,sw2,sw1};
      
  reg  [2:0] low_sw_r;               //将low_sw信号锁存一个时钟周期，延时不是真的"锁存"
  always @ ( posedge clk  or negedge rst_n )
    if (!rst_n)
      low_sw_r <= 3'b111;
    else
      low_sw_r <= low_sw;
         
  wire [2:0] led_ctrl = low_sw_r[2:0] & ( ~low_sw[2:0]); 


endmodule
