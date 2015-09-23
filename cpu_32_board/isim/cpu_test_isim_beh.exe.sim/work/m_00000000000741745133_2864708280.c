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
static const char *ng0 = "D:/Xilinx/workshop/cpu_32_board/extend_5.v";
static int ng1[] = {4, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {4294967295U, 0U};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {0U, 0U};



static void Always_25_0(char *t0)
{
    char t8[8];
    char t13[8];
    char t37[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    int t39;
    int t40;
    int t41;
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2984);
    *((int *)t2) = 1;
    t3 = (t0 + 2696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    t4 = (t0 + 280);
    xsi_vlog_namedbase_setdisablestate(t4, &&LAB6);
    t5 = (t0 + 2472);
    xsi_vlog_namedbase_pushprocess(t4, t5);

LAB7:    xsi_set_current_line(27, ng0);
    t6 = (t0 + 1344U);
    t7 = *((char **)t6);
    t6 = (t0 + 1304U);
    t9 = (t6 + 72U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t8, 32, t7, t10, 2, t11, 32, 1);
    t12 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t14 = (t8 + 4);
    t15 = (t12 + 4);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    t21 = (t19 ^ t20);
    t22 = (t18 | t21);
    t23 = *((unsigned int *)t14);
    t24 = *((unsigned int *)t15);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB11;

LAB8:    if (t25 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t13) = 1;

LAB11:    t29 = (t13 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(33, ng0);

LAB18:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t17 = (t16 >> 0);
    *((unsigned int *)t8) = t17;
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 0);
    *((unsigned int *)t2) = t19;
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 31U);
    t21 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t21 & 31U);
    t5 = (t0 + 1744);
    t6 = (t0 + 1744);
    t7 = (t6 + 72U);
    t9 = *((char **)t7);
    t10 = ((char*)((ng1)));
    t11 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t13, t37, t38, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t13 + 4);
    t22 = *((unsigned int *)t12);
    t39 = (!(t22));
    t14 = (t37 + 4);
    t23 = *((unsigned int *)t14);
    t40 = (!(t23));
    t41 = (t39 && t40);
    t15 = (t38 + 4);
    t24 = *((unsigned int *)t15);
    t42 = (!(t24));
    t43 = (t41 && t42);
    if (t43 == 1)
        goto LAB19;

LAB20:
LAB14:    t2 = (t0 + 280);
    xsi_vlog_namedbase_popprocess(t2);

LAB6:    t3 = (t0 + 2472);
    xsi_vlog_dispose_process_subprogram_invocation(t3);
    goto LAB2;

LAB10:    t28 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(28, ng0);

LAB15:    xsi_set_current_line(29, ng0);
    t35 = ((char*)((ng3)));
    t36 = (t0 + 1744);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 32);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t17 = (t16 >> 0);
    *((unsigned int *)t8) = t17;
    t18 = *((unsigned int *)t4);
    t19 = (t18 >> 0);
    *((unsigned int *)t2) = t19;
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 31U);
    t21 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t21 & 31U);
    t5 = (t0 + 1744);
    t6 = (t0 + 1744);
    t7 = (t6 + 72U);
    t9 = *((char **)t7);
    t10 = ((char*)((ng1)));
    t11 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t13, t37, t38, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t13 + 4);
    t22 = *((unsigned int *)t12);
    t39 = (!(t22));
    t14 = (t37 + 4);
    t23 = *((unsigned int *)t14);
    t40 = (!(t23));
    t41 = (t39 && t40);
    t15 = (t38 + 4);
    t24 = *((unsigned int *)t15);
    t42 = (!(t24));
    t43 = (t41 && t42);
    if (t43 == 1)
        goto LAB16;

LAB17:    goto LAB14;

LAB16:    t25 = *((unsigned int *)t38);
    t44 = (t25 + 0);
    t26 = *((unsigned int *)t13);
    t27 = *((unsigned int *)t37);
    t45 = (t26 - t27);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t5, t8, t44, *((unsigned int *)t37), t46);
    goto LAB17;

LAB19:    t25 = *((unsigned int *)t38);
    t44 = (t25 + 0);
    t26 = *((unsigned int *)t13);
    t27 = *((unsigned int *)t37);
    t45 = (t26 - t27);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t5, t8, t44, *((unsigned int *)t37), t46);
    goto LAB20;

}


extern void work_m_00000000000741745133_2864708280_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000000741745133_2864708280", "isim/cpu_test_isim_beh.exe.sim/work/m_00000000000741745133_2864708280.didat");
	xsi_register_executes(pe);
}
