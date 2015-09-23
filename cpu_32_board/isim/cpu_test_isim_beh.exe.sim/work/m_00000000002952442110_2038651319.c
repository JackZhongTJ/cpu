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
static const char *ng0 = "D:/Xilinx/workshop/cpu_32_board/file_write.v";
static const char *ng1 = "D:/test_suc.txt";
static int ng2[] = {1, 0};
static const char *ng3 = "%s=%h";
static int ng4[] = {1702048313, 0, 1734764908, 0, 29285, 0};



static void Initial_27_0(char *t0)
{
    char t1[8];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    xsi_set_current_line(27, ng0);

LAB2:    xsi_set_current_line(28, ng0);
    *((int *)t1) = xsi_vlogfile_file_open_of_cname(ng1);
    t2 = (t1 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 1880);
    xsi_vlogvar_assign_value(t3, t1, 0, 0, 32);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t1, 0, 8);
    xsi_vlog_signed_bit_or(t1, 32, t4, 32, t5, 32);
    t6 = (t0 + 2040);
    xsi_vlogvar_assign_value(t6, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_32_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3528);
    *((int *)t2) = 1;
    t3 = (t0 + 3240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 2040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    t8 = (t0 + 1480U);
    t9 = *((char **)t8);
    xsi_vlogfile_fwrite(*((unsigned int *)t6), 1, 0, 0, ng3, 3, t0, (char)118, t7, 80, (char)118, t9, 32);
    goto LAB2;

}


extern void work_m_00000000002952442110_2038651319_init()
{
	static char *pe[] = {(void *)Initial_27_0,(void *)Always_32_1};
	xsi_register_didat("work_m_00000000002952442110_2038651319", "isim/cpu_test_isim_beh.exe.sim/work/m_00000000002952442110_2038651319.didat");
	xsi_register_executes(pe);
}
