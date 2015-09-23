/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Xilinx/workshop/EX7_alu/shifter.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static int ng4[] = {31, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};



static void Always_29_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t35[8];
    char t41[8];
    char t65[8];
    char t95[8];
    char t101[8];
    char t102[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t94;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t103;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB27;

LAB24:    if (t18 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t6) = 1;

LAB27:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB45;

LAB42:    if (t18 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t6) = 1;

LAB45:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t8) != 0)
        goto LAB48;

LAB49:    t22 = (t30 + 4);
    t44 = *((unsigned int *)t30);
    t45 = (!(t44));
    t46 = *((unsigned int *)t22);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB50;

LAB51:    memcpy(t65, t30, 8);

LAB52:    t87 = (t65 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (~(t88));
    t90 = *((unsigned int *)t65);
    t91 = (t90 & t89);
    t92 = (t91 != 0);
    if (t92 > 0)
        goto LAB64;

LAB65:
LAB66:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(32, ng0);

LAB13:    xsi_set_current_line(33, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    t28 = (t0 + 1008U);
    t31 = (t28 + 72U);
    t32 = *((char **)t31);
    t33 = (t0 + 1208U);
    t34 = *((char **)t33);
    t33 = ((char*)((ng2)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_minus(t35, 32, t34, 5, t33, 32);
    xsi_vlog_generic_get_index_select_value(t30, 1, t29, t32, 2, t35, 32, 2);
    t36 = (t0 + 1768);
    xsi_vlogvar_assign_value(t36, t30, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_rshift(t6, 32, t3, 32, t4, 5);
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB14:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB16;

LAB15:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB17;

LAB18:    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB20;

LAB21:    goto LAB12;

LAB16:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB18;

LAB17:    *((unsigned int *)t6) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(36, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    memset(t30, 0, 8);
    t28 = (t30 + 4);
    t31 = (t29 + 4);
    t14 = *((unsigned int *)t29);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t30) = t16;
    t17 = *((unsigned int *)t31);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t28) = t19;
    t32 = (t0 + 1928);
    t33 = (t0 + 1928);
    t34 = (t33 + 72U);
    t36 = *((char **)t34);
    t37 = ((char*)((ng4)));
    t38 = (t0 + 2088);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    xsi_vlog_unsigned_minus(t41, 32, t37, 32, t40, 5);
    xsi_vlog_generic_convert_bit_index(t35, t36, 2, t41, 32, 2);
    t42 = (t35 + 4);
    t20 = *((unsigned int *)t42);
    t43 = (!(t20));
    if (t43 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 5, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 5);
    goto LAB14;

LAB22:    xsi_vlogvar_assign_value(t32, t30, 0, *((unsigned int *)t35), 1);
    goto LAB23;

LAB26:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(40, ng0);

LAB31:    xsi_set_current_line(41, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 1008U);
    t28 = (t21 + 72U);
    t29 = *((char **)t28);
    t31 = (t0 + 1208U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng2)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_minus(t35, 32, t32, 5, t31, 32);
    xsi_vlog_generic_get_index_select_value(t30, 1, t22, t29, 2, t35, 32, 2);
    t33 = (t0 + 1768);
    xsi_vlogvar_assign_value(t33, t30, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_rshift(t6, 32, t3, 32, t4, 5);
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB32:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB34;

LAB33:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB34;

LAB37:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB35;

LAB36:    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB38;

LAB39:    goto LAB30;

LAB34:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB36;

LAB35:    *((unsigned int *)t6) = 1;
    goto LAB36;

LAB38:    xsi_set_current_line(44, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1928);
    t31 = (t0 + 1928);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng4)));
    t36 = (t0 + 2088);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_minus(t35, 32, t34, 32, t38, 5);
    xsi_vlog_generic_convert_bit_index(t30, t33, 2, t35, 32, 2);
    t39 = (t30 + 4);
    t14 = *((unsigned int *)t39);
    t43 = (!(t14));
    if (t43 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 5, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 5);
    goto LAB32;

LAB40:    xsi_vlogvar_assign_value(t29, t28, 0, *((unsigned int *)t30), 1);
    goto LAB41;

LAB44:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t30) = 1;
    goto LAB49;

LAB48:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB49;

LAB50:    t28 = (t0 + 1368U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng7)));
    memset(t35, 0, 8);
    t31 = (t29 + 4);
    t32 = (t28 + 4);
    t48 = *((unsigned int *)t29);
    t49 = *((unsigned int *)t28);
    t50 = (t48 ^ t49);
    t51 = *((unsigned int *)t31);
    t52 = *((unsigned int *)t32);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t31);
    t56 = *((unsigned int *)t32);
    t57 = (t55 | t56);
    t58 = (~(t57));
    t59 = (t54 & t58);
    if (t59 != 0)
        goto LAB56;

LAB53:    if (t57 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t35) = 1;

LAB56:    memset(t41, 0, 8);
    t34 = (t35 + 4);
    t60 = *((unsigned int *)t34);
    t61 = (~(t60));
    t62 = *((unsigned int *)t35);
    t63 = (t62 & t61);
    t64 = (t63 & 1U);
    if (t64 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t34) != 0)
        goto LAB59;

LAB60:    t66 = *((unsigned int *)t30);
    t67 = *((unsigned int *)t41);
    t68 = (t66 | t67);
    *((unsigned int *)t65) = t68;
    t37 = (t30 + 4);
    t38 = (t41 + 4);
    t39 = (t65 + 4);
    t69 = *((unsigned int *)t37);
    t70 = *((unsigned int *)t38);
    t71 = (t69 | t70);
    *((unsigned int *)t39) = t71;
    t72 = *((unsigned int *)t39);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB52;

LAB55:    t33 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB56;

LAB57:    *((unsigned int *)t41) = 1;
    goto LAB60;

LAB59:    t36 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB60;

LAB61:    t74 = *((unsigned int *)t65);
    t75 = *((unsigned int *)t39);
    *((unsigned int *)t65) = (t74 | t75);
    t40 = (t30 + 4);
    t42 = (t41 + 4);
    t76 = *((unsigned int *)t40);
    t77 = (~(t76));
    t78 = *((unsigned int *)t30);
    t43 = (t78 & t77);
    t79 = *((unsigned int *)t42);
    t80 = (~(t79));
    t81 = *((unsigned int *)t41);
    t82 = (t81 & t80);
    t83 = (~(t43));
    t84 = (~(t82));
    t85 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t85 & t83);
    t86 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t86 & t84);
    goto LAB63;

LAB64:    xsi_set_current_line(48, ng0);

LAB67:    xsi_set_current_line(49, ng0);
    t93 = (t0 + 1048U);
    t94 = *((char **)t93);
    t93 = (t0 + 1008U);
    t96 = (t93 + 72U);
    t97 = *((char **)t96);
    t98 = ((char*)((ng4)));
    t99 = (t0 + 1208U);
    t100 = *((char **)t99);
    memset(t101, 0, 8);
    xsi_vlog_unsigned_minus(t101, 32, t98, 32, t100, 5);
    t99 = ((char*)((ng2)));
    memset(t102, 0, 8);
    xsi_vlog_unsigned_add(t102, 32, t101, 32, t99, 32);
    xsi_vlog_generic_get_index_select_value(t95, 1, t94, t97, 2, t102, 32, 2);
    t103 = (t0 + 1768);
    xsi_vlogvar_assign_value(t103, t95, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 32, t3, 32, t4, 5);
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB68:    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB70;

LAB69:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB70;

LAB73:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB71;

LAB72:    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB74;

LAB75:    goto LAB66;

LAB70:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB72;

LAB71:    *((unsigned int *)t6) = 1;
    goto LAB72;

LAB74:    xsi_set_current_line(52, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1928);
    t31 = (t0 + 1928);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2088);
    t36 = (t34 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_bit_index(t30, t33, 2, t37, 5, 2);
    t38 = (t30 + 4);
    t14 = *((unsigned int *)t38);
    t43 = (!(t14));
    if (t43 == 1)
        goto LAB76;

LAB77:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 5, t5, 32);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 5);
    goto LAB68;

LAB76:    xsi_vlogvar_assign_value(t29, t28, 0, *((unsigned int *)t30), 1);
    goto LAB77;

}


extern void work_m_00000000001145678281_0419911064_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000001145678281_0419911064", "isim/cpu_test_isim_beh.exe.sim/work/m_00000000001145678281_0419911064.didat");
	xsi_register_executes(pe);
}
