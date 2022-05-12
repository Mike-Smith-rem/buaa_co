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
static const char *ng0 = "E:/mips/testofGRF.v";
static int ng1[] = {0, 0};
static int ng2[] = {4, 0};
static unsigned int ng3[] = {12288U, 0U};
static int ng4[] = {1, 0};



static void Initial_55_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);

LAB4:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3616);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}

static void Always_72_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
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
    char *t24;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3864);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2568);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Always_73_2(char *t0)
{
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6112);
    *((int *)t2) = 1;
    t3 = (t0 + 4336);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 4360);
    t5 = (t0 + 4112);
    xsi_add_process_toexecute(0, t4, t5);
    t6 = (t0 + 4608);
    t7 = (t0 + 4112);
    xsi_add_process_toexecute(0, t6, t7);
    t8 = (t0 + 4856);
    t9 = (t0 + 4112);
    xsi_add_process_toexecute(0, t8, t9);
    t10 = (t0 + 5104);
    t11 = (t0 + 4112);
    xsi_add_process_toexecute(0, t10, t11);
    t12 = (t0 + 5352);
    t13 = (t0 + 4112);
    xsi_add_process_toexecute(0, t12, t13);
    t14 = (t0 + 5600);
    t15 = (t0 + 4112);
    xsi_add_process_toexecute(0, t14, t15);
    t16 = (t0 + 2888);
    memset(t17, 0, 8);
    *((unsigned int *)t17) = 6;
    xsi_vlogvar_assign_value(t16, t17, 0, 0, 32);
    t18 = (t0 + 6128);
    *((int *)t18) = 1;
    *((char **)t1) = &&LAB5;
    goto LAB1;

LAB5:    t19 = (t0 + 2888);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    if (*((int *)t21) > 0)
        goto LAB6;

LAB7:    t23 = (t0 + 4112);
    xsi_clean_active_fork_process_list(t23);
    goto LAB2;

LAB6:    t22 = (t0 + 6128);
    *((int *)t22) = 1;
    goto LAB1;

}

static void Forked_75_3(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
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
    char *t24;

LAB0:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 4360);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(75, ng0);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2728);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);

LAB5:    t2 = (t0 + 2888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memcpy(t3, t5, 8);
    t8 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t8 - 1);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}

static void Forked_76_4(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;

LAB0:    t1 = (t0 + 4800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 4608);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(76, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 32, t6, 32);
    t8 = (t0 + 2248);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);

LAB5:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t7, t4, 8);
    t9 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t9 - 1);
    xsi_vlogvar_assign_value(t2, t7, 0, 0, 32);
    goto LAB2;

}

static void Forked_77_5(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;

LAB0:    t1 = (t0 + 5048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 4856);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(77, ng0);
    t3 = (t0 + 1608);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng2)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 32, t6, 32);
    t8 = (t0 + 1608);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);

LAB5:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t7, t4, 8);
    t9 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t9 - 1);
    xsi_vlogvar_assign_value(t2, t7, 0, 0, 32);
    goto LAB2;

}

static void Forked_78_6(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;

LAB0:    t1 = (t0 + 5296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 5104);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(78, ng0);
    t3 = (t0 + 5104);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB5:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t8, t4, 8);
    t10 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t10 - 1);
    xsi_vlogvar_assign_value(t2, t8, 0, 0, 32);
    goto LAB2;

LAB6:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 5, t7, 32);
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 5);
    goto LAB5;

}

static void Forked_79_7(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;

LAB0:    t1 = (t0 + 5544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 5352);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(79, ng0);
    t3 = (t0 + 5352);
    xsi_process_wait(t3, 5000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB5:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t8, t4, 8);
    t10 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t10 - 1);
    xsi_vlogvar_assign_value(t2, t8, 0, 0, 32);
    goto LAB2;

LAB6:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 5, t7, 32);
    t9 = (t0 + 1928);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 5);
    goto LAB5;

}

static void Forked_80_8(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;

LAB0:    t1 = (t0 + 5792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t2 = (t0 + 5600);
    xsi_vlog_process_setdisablestate(t2, &&LAB5);
    xsi_set_current_line(80, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 5, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 5);

LAB5:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memcpy(t7, t4, 8);
    t9 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t9 - 1);
    xsi_vlogvar_assign_value(t2, t7, 0, 0, 32);
    goto LAB2;

}


extern void work_m_00000000003565270157_3004958537_init()
{
	static char *pe[] = {(void *)Initial_55_0,(void *)Always_72_1,(void *)Always_73_2,(void *)Forked_75_3,(void *)Forked_76_4,(void *)Forked_77_5,(void *)Forked_78_6,(void *)Forked_79_7,(void *)Forked_80_8};
	xsi_register_didat("work_m_00000000003565270157_3004958537", "isim/testofGRF_isim_beh.exe.sim/work/m_00000000003565270157_3004958537.didat");
	xsi_register_executes(pe);
}
