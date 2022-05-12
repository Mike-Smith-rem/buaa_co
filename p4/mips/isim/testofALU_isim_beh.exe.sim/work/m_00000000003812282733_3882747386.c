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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/mips/testofALU.v";
static const char *ng1 = "1.txt";
static const char *ng2 = "2.txt";
static int ng3[] = {0, 0};
static int ng4[] = {31, 0};
static int ng5[] = {1, 0};



static void Initial_50_0(char *t0)
{
    char t6[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);

LAB4:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2248);
    xsi_vlogfile_readmemh(ng1, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2408);
    xsi_vlogfile_readmemh(ng2, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(56, ng0);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_leq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB7:    xsi_set_current_line(57, ng0);

LAB9:    xsi_set_current_line(58, ng0);
    t13 = (t0 + 2248);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t17 = (t0 + 2248);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2248);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2568);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_array_select_value(t16, 32, t15, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t0 + 1928);
    xsi_vlogvar_assign_value(t26, t16, 0, 0, 32);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    t7 = (t5 + 72U);
    t13 = *((char **)t7);
    t14 = (t0 + 2408);
    t15 = (t14 + 64U);
    t17 = *((char **)t15);
    t18 = (t0 + 2568);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t13, t17, 2, 1, t20, 32, 1);
    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3296);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB11:    goto LAB1;

}


extern void work_m_00000000003812282733_3882747386_init()
{
	static char *pe[] = {(void *)Initial_50_0};
	xsi_register_didat("work_m_00000000003812282733_3882747386", "isim/testofALU_isim_beh.exe.sim/work/m_00000000003812282733_3882747386.didat");
	xsi_register_executes(pe);
}
