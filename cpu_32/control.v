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
	 output [1:0] M2,
	 output [4:0] RDC,
	 output RF_W,
	 output RF_CLK,
	 output M5,
	 output [1:0] M1,
	 output DM_CS,
	 output DM_R,
	 output DM_W
    );
	 wire [5:0] op = order[31:26];
	 wire [5:0] func = order[5:0];
	 wire r_type = ~|op;
	 
	 wire op_addu = ~order[31]&~order[30]&~order[29]&~order[28]&~order[27]&~order[26]&order[5]&~order[4]&~order[3]&~order[2]&~order[1]&order[0];  //op_0 addu
	 //wire op_0=r_type&func[5]&~func[4]&~func[3]&~func[2]&~func[1]&func[0];

	 wire op_subu = ~order[31]&~order[30]&~order[29]&~order[28]&~order[27]&~order[26]&order[5]&~order[4]&~order[3]&~order[2]&order[1]&order[0];  //op_1 sub
	 //wire op_1=r_type&func[5]&~func[4]&~func[3]&~func[2]&func[1]&func[0];

	 wire op_ori = ~order[31]&~order[30]&order[29]&order[28]&~order[27]&order[26];  //op_2 ori
    //wire op_2=~op[5]&~op[4]&op[3]&op[2]&~op[1]&op[0];
	 
	 wire op_sll = ~order[31]&~order[30]&~order[29]&~order[28]&~order[27]&~order[26]&~order[5]&~order[4]&~order[3]&~order[2]&~order[1]&~order[0]; // op_3 sll
	 //wire op_3=r_type&~func[5]&~func[4]&~func[3]&~func[2]&~func[1]&~func[0];
	 
	 wire op_beq = ~order[31]&~order[30]&~order[29]&order[28]&~order[27]&~order[26];  //op_4 beq
	 //wire op_4=~op[5]&~op[4]&~op[3]&op[2]&~op[1]&~op[0];

	

	 wire op_lw = order[31]&~order[30]&~order[29]&~order[28]&order[27]&order[26];  //op_6 LW
	 //wire op_6=op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];
	 
	 wire op_sw = order[31]&~order[30]&order[29]&~order[28]&order[27]&order[26];  //op_7 SW
	// wire op_7=op[5]&~op[4]&op[3]&~op[2]&op[1]&op[0];
	 
    wire op_add = r_type & func[5]&~func[4]&~func[3]&~func[2]&~func[1]&~func[0]; // add 000000 100000
	 wire op_sub = r_type & func[5]&~func[4]&~func[3]&~func[2]&func[1]&~func[0]; // sub 000000 100010
	 wire op_and = r_type & func[5]&~func[4]&~func[3]&func[2]&~func[1]&~func[0]; // and 000000 100100
	 wire op_or = r_type & func[5]&~func[4]&~func[3]&func[2]&~func[1]&func[0];   // or 000000 100101
	 wire op_xor = r_type & func[5]&~func[4]&~func[3]&func[2]&func[1]&~func[0];  // xor 000000 100110
	 wire op_nor = r_type & func[5]&~func[4]&~func[3]&func[2]&func[1]&func[0];   // nor 000000 100111
	 wire op_slt = r_type & func[5]&~func[4]&func[3]&~func[2]&func[1]&~func[0];  //slt 000000 101010
	 wire op_sltv = r_type & func[5]&~func[4]&func[3]&~func[2]&func[1]&func[0];  //sltv 000000 101011
	 //wire op_sll = r_type & ~func[5]&func[4]&func[3]&func[2]&func[1]&func[0];
	 wire op_srl = r_type & ~func[5]&~func[4]&~func[3]&~func[2]&func[1]&~func[0];  //srl 000010
	 wire op_sra = r_type & ~func[5]&~func[4]&~func[3]&~func[2]&func[1]&func[0];   //sra 000011
	 wire op_sllv = r_type & ~func[5]&~func[4]&~func[3]&func[2]&~func[1]&~func[0]; //sllv 000100
	 wire op_srlv = r_type & ~func[5]&~func[4]&~func[3]&func[2]&func[1]&~func[0]; //srlv 000110
	 wire op_srav = r_type & ~func[5]&~func[4]&~func[3]&func[2]&func[1]&func[0];   //srlv 000111 
	 wire op_jr = r_type & ~func[5]&~func[4]&func[3]&~func[2]&~func[1]&~func[0];      // j 001000
	 
	 wire op_addi = ~op[5]&~op[4]&op[3]&~op[2]&~op[1]&~op[0];  //addi 001000
	 wire op_addiu = ~op[5]&~op[4]&op[3]&~op[2]&~op[1]&op[0];  //addiu 001001
	 wire op_andi =  ~op[5]&~op[4]&op[3]&op[2]&~op[1]&~op[0];  //andi 001100
	 wire op_xori = ~op[5]&~op[4]&op[3]&op[2]&op[1]&~op[0];    //xori 001110
    wire op_bne = ~op[5]&~op[4]&~op[3]&op[2]&~op[1]&op[0];  //bne 000101
	 wire op_slti = ~op[5]&~op[4]&op[3]&~op[2]&op[1]&~op[0];  //slti 001010
	 wire op_sltiu = ~op[5]&~op[4]&op[3]&~op[2]&op[1]&op[0];  //sltiu 001011
	 wire op_lui = ~op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];     //lui 001111
	 
	 wire op_J = ~order[31]&~order[30]&~order[29]&~order[28]&order[27]&~order[26];  //op_5 J target
	 //wire op_5=~op[5]&~op[4]&~op[3]&~op[2]&op[1]&~op[0];
	 wire op_jal = ~op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];    //jal 000011
	 
	 
	 
	 assign PC_CLK = ~clk;
	 assign IM_R = 1'b1;
	 assign RSC = order[25:21];
	 assign RTC = order[20:16];
	 assign ALUC3 = op_slt|op_sltv|op_sll|op_srl|op_sra|op_sllv|op_srlv|op_srav|op_slti|op_sltiu|op_lui;
	 assign ALUC2 = op_and|op_or|op_xor|op_nor|op_sll|op_srl|op_sra|op_sllv|op_srlv|op_srav|op_andi|op_ori|op_xori;
	 assign ALUC1 = op_add|op_sub|op_xor|op_nor|op_slt|op_sltv|op_sll|op_sllv|op_addi|op_xori|op_beq|op_bne|op_slti|op_sltiu;
	 assign ALUC0 = op_sub|op_subu|op_or|op_nor|op_slt|op_sll|op_srl|op_sllv|op_srlv|op_ori|op_beq|op_bne|op_slti;
	 
	 assign M1[0]= op_add|op_addu|op_sub|op_subu|op_and|op_or|op_xor|op_nor|op_slt|op_sltv|op_sll|op_srl|op_sra|op_sllv|op_srlv|op_srav|op_addi|op_addiu|op_andi|op_ori|op_xori|op_lw|op_sw|op_beq|op_bne|op_slti|op_sltiu|op_lui;
	 assign M1[1] = op_jr; 
	 assign M2[0]= op_add|op_addu|op_sub|op_subu|op_and|op_or|op_xor|op_nor|op_slt|op_sltv|op_sll|op_srl|op_sra|op_sllv|op_srlv|op_srav|op_jr|op_addi|op_addiu|op_andi|op_ori|op_xori|op_sw|op_beq|op_bne|op_slti|op_sltiu|op_lui;
	 assign M2[1] = op_jal;
	 assign M3 = op_add|op_addu|op_sub|op_subu|op_and|op_or|op_xor|op_nor|op_slt|op_sltv|op_sllv|op_srlv|op_srav|op_jr|op_addi|op_addiu|op_andi|op_ori|op_xori|op_lw|op_sw|op_beq|op_bne|op_slti|op_sltiu;
	 assign M4 = op_addi|op_addiu|op_andi|op_ori|op_xori|op_lw|op_sw|op_slti|op_sltiu|op_lui;
	 assign M5 = op_beq&z|op_bne&~z; // 此处不能为~(op_bne&z) 否则恒为1;
	 
	 assign RDC=(order[15:11]&{5{op_add|op_addu|op_sub|op_subu|op_and|op_or|op_xor|op_nor|op_slt|op_sltv|op_sll|op_srl|op_sra|op_sllv|op_srlv|op_srav|op_beq|op_bne}})|(order[20:16]&{5{op_addi|op_addiu|op_andi|op_ori|op_xori|op_lw|op_slti|op_sltiu|op_lui}})|(5'b11111&{5{op_jal}});
	 //assign RDC = (order[15:11]&(op_0|op_1|op_3|op_4))|(order[20:16]&(op_2|op_6));
	 assign RF_W = op_add|op_addu|op_sub|op_subu|op_and|op_or|op_xor|op_nor|op_slt|op_sltv|op_sll|op_srl|op_sra|op_sllv|op_srlv|op_srav|op_addi|op_addiu|op_andi|op_ori|op_xori|op_lw|op_slti|op_sltiu|op_lui|op_jal;
	 assign RF_CLK = ~clk;
	 assign DM_CS = op_lw|op_sw;
	 //assign DM_R = op_lw;
	 assign DM_R = 1;
	 assign DM_W = op_sw;
	 //assign M6 = op_2||op_6;
	 

endmodule
