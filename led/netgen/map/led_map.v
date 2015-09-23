////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: led_map.v
// /___/   /\     Timestamp: Tue Sep 24 16:13:51 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf led.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim led_map.ncd led_map.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.19 2011-06-20)
// Input file	: led_map.ncd
// Output file	: D:\Xilinx\workshop\led\netgen\map\led_map.v
// # of Modules	: 1
// Design Name	: led
// Xilinx        : D:\Xilinx\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module led (
dip, led
);
  input [7 : 0] dip;
  output [7 : 0] led;
  wire led_0_OBUF_0;
  wire led_1_OBUF_0;
  wire led_2_OBUF_0;
  wire led_3_OBUF_0;
  wire led_4_OBUF_0;
  wire led_5_OBUF_0;
  wire led_6_OBUF_0;
  wire led_7_OBUF_0;
  wire led_0_OBUF_7;
  wire led_1_OBUF_12;
  wire led_2_OBUF_17;
  wire led_3_OBUF_22;
  wire led_4_OBUF_27;
  wire led_5_OBUF_32;
  wire led_6_OBUF_35;
  wire led_7_OBUF_38;
  initial $sdf_annotate("netgen/map/led_map.sdf");
  X_OPAD #(
    .LOC ( "PAD125" ))
  \led<0>  (
    .PAD(led[0])
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  led_0_OBUF (
    .I(led_0_OBUF_0),
    .O(led[0])
  );
  X_OPAD #(
    .LOC ( "PAD126" ))
  \led<1>  (
    .PAD(led[1])
  );
  X_OBUF #(
    .LOC ( "PAD126" ))
  led_1_OBUF (
    .I(led_1_OBUF_0),
    .O(led[1])
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \led<2>  (
    .PAD(led[2])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  led_2_OBUF (
    .I(led_2_OBUF_0),
    .O(led[2])
  );
  X_IPAD #(
    .LOC ( "PAD154" ))
  \dip<0>  (
    .PAD(dip[0])
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  dip_0_IBUF (
    .O(led_0_OBUF_7),
    .I(dip[0])
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  \ProtoComp1.IMUX  (
    .I(led_0_OBUF_7),
    .O(led_0_OBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  \led<3>  (
    .PAD(led[3])
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  led_3_OBUF (
    .I(led_3_OBUF_0),
    .O(led[3])
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  \dip<1>  (
    .PAD(dip[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  dip_1_IBUF (
    .O(led_1_OBUF_12),
    .I(dip[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp1.IMUX.1  (
    .I(led_1_OBUF_12),
    .O(led_1_OBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD139" ))
  \led<4>  (
    .PAD(led[4])
  );
  X_OBUF #(
    .LOC ( "PAD139" ))
  led_4_OBUF (
    .I(led_4_OBUF_0),
    .O(led[4])
  );
  X_IPAD #(
    .LOC ( "PAD160" ))
  \dip<2>  (
    .PAD(dip[2])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  dip_2_IBUF (
    .O(led_2_OBUF_17),
    .I(dip[2])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \ProtoComp1.IMUX.2  (
    .I(led_2_OBUF_17),
    .O(led_2_OBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD140" ))
  \led<5>  (
    .PAD(led[5])
  );
  X_OBUF #(
    .LOC ( "PAD140" ))
  led_5_OBUF (
    .I(led_5_OBUF_0),
    .O(led[5])
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  \dip<3>  (
    .PAD(dip[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  dip_3_IBUF (
    .O(led_3_OBUF_22),
    .I(dip[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \ProtoComp1.IMUX.3  (
    .I(led_3_OBUF_22),
    .O(led_3_OBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD141" ))
  \led<6>  (
    .PAD(led[6])
  );
  X_OBUF #(
    .LOC ( "PAD141" ))
  led_6_OBUF (
    .I(led_6_OBUF_0),
    .O(led[6])
  );
  X_IPAD #(
    .LOC ( "PAD162" ))
  \dip<4>  (
    .PAD(dip[4])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  dip_4_IBUF (
    .O(led_4_OBUF_27),
    .I(dip[4])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \ProtoComp1.IMUX.4  (
    .I(led_4_OBUF_27),
    .O(led_4_OBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD142" ))
  \led<7>  (
    .PAD(led[7])
  );
  X_OBUF #(
    .LOC ( "PAD142" ))
  led_7_OBUF (
    .I(led_7_OBUF_0),
    .O(led[7])
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  \dip<5>  (
    .PAD(dip[5])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  dip_5_IBUF (
    .O(led_5_OBUF_32),
    .I(dip[5])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp1.IMUX.5  (
    .I(led_5_OBUF_32),
    .O(led_5_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  \dip<6>  (
    .PAD(dip[6])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  dip_6_IBUF (
    .O(led_6_OBUF_35),
    .I(dip[6])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp1.IMUX.6  (
    .I(led_6_OBUF_35),
    .O(led_6_OBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD178" ))
  \dip<7>  (
    .PAD(dip[7])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  dip_7_IBUF (
    .O(led_7_OBUF_38),
    .I(dip[7])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \ProtoComp1.IMUX.7  (
    .I(led_7_OBUF_38),
    .O(led_7_OBUF_0)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

