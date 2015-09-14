`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:56 11/23/2013 
// Design Name: 
// Module Name:    control 
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
module control(
	 input [31:0] order,
	 input clk,
	 input z,
	 output PC_CLK,
	 output IM_R,
	 output [4:0] RSC,
	 output [4:0] RTC,
	 output M3,
	 output M4,
	 output ALUC3,
	 output ALUC2,
	 output ALUC1,
	 output ALUC0,
	 output M2,
	 output [4:0] RDC,
	 output RF_W,
	 output RF_CLK,
	 output M5,
	 output M1,
	 output DM_CS,
	 output DM_R,
	 output DM_W
    );
	 wire [5:0] op = order[31:26];
	 wire [5:0] func = order[5:0];
	 wire r_type = ~|op;
	 
	 wire op_0 = ~order[31]&~order[30]&~order[29]&~order[28]&~order[27]&~order[26]&order[5]&~order[4]&~order[3]&~order[2]&~order[1]&order[0];  //op_0 addu
	 //wire op_0=r_type&func[5]&~func[4]&~func[3]&~func[2]&~func[1]&func[0];

	 wire op_1 = ~order[31]&~order[30]&~order[29]&~order[28]&~order[27]&~order[26]&order[5]&~order[4]&~order[3]&~order[2]&order[1]&order[0];  //op_1 sub
	 //wire op_1=r_type&func[5]&~func[4]&~func[3]&~func[2]&func[1]&func[0];

	 wire op_2 = ~order[31]&~order[30]&order[29]&order[28]&~order[27]&order[26];  //op_2 ori
    //wire op_2=~op[5]&~op[4]&op[3]&op[2]&~op[1]&op[0];
	 
	 wire op_3 = ~order[31]&~order[30]&~order[29]&~order[28]&~order[27]&~order[26]&~order[5]&~order[4]&~order[3]&~order[2]&~order[1]&~order[0]; // op_3 sll
	 //wire op_3=r_type&~func[5]&~func[4]&~func[3]&~func[2]&~func[1]&~func[0];
	 
	 wire op_4 = ~order[31]&~order[30]&~order[29]&order[28]&~order[27]&~order[26];  //op_4 beq
	 //wire op_4=~op[5]&~op[4]&~op[3]&op[2]&~op[1]&~op[0];

	 wire op_5 = ~order[31]&~order[30]&~order[29]&~order[28]&order[27]&~order[26];  //op_5 J target
	 //wire op_5=~op[5]&~op[4]&~op[3]&~op[2]&op[1]&~op[0];

	 wire op_6 = order[31]&~order[30]&~order[29]&~order[28]&order[27]&order[26];  //op_6 LW
	 //wire op_6=op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];
	 
	 wire op_7 = order[31]&~order[30]&order[29]&~order[28]&order[27]&order[26];  //op_7 SW
	// wire op_7=op[5]&~op[4]&op[3]&~op[2]&op[1]&op[0];

	 
	 assign PC_CLK = ~clk;
	 assign IM_R = 1'b1;
	 assign RSC = order[25:21];
	 assign RTC = order[20:16];
	 assign M3 = op_0|op_1|op_2|op_4|op_5|op_6|op_7;
	 assign M4 = op_2|op_6|op_7;
	 assign ALUC3 = op_3;
	 assign ALUC2 = op_2|op_3;
	 assign ALUC1 = op_3;
	 assign ALUC0 = op_1|op_2|op_3|op_4;
	 assign M2 = op_0|op_1|op_2|op_3|op_4|op_5|op_7;
	 //assign RDC = (order[15:11]&(op_0|op_1|op_3|op_4))|(order[20:16]&(op_2|op_6));
	 assign RDC=(order[15:11]&{5{op_0|op_1|op_3|op_4}})|(order[20:16]&{5{op_2|op_6}});
	 assign RF_W = op_0|op_1|op_2|op_3|op_6;
	 assign RF_CLK = ~clk;
	 assign M5 = op_4&z;
	 assign M1 = op_0|op_1|op_2|op_3|op_4|op_6|op_7;
	 assign DM_CS = op_6|op_7;
	 //assign DM_R = op_6;
	 assign DM_R = 1;
	 assign DM_W = op_7;
	 //assign M6 = op_2||op_6;
	 

endmodule
