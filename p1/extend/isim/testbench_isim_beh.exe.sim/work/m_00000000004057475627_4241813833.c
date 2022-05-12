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
static const char *ng0 = "E:/extend/ext.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {15, 0};
static int ng3[] = {0, 0};
static int ng4[] = {16, 0};
static int ng5[] = {32, 0};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {2U, 0U};
static int ng9[] = {31, 0};
static unsigned int ng10[] = {3U, 0U};
static int ng11[] = {2, 0};



static void Always_28_0(char *t0)
{
    char t6[8];
    char t28[8];
    char t39[8];
    char t40[8];
    char t41[8];
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
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    int t49;
    char *t50;
    unsigned int t51;
    int t52;
    int t53;
    char *t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1208U);
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

LAB11:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
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
        goto LAB24;

LAB21:    if (t18 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t6) = 1;

LAB24:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
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
        goto LAB39;

LAB36:    if (t18 != 0)
        goto LAB38;

LAB37:    *((unsigned int *)t6) = 1;

LAB39:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
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
        goto LAB54;

LAB51:    if (t18 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t6) = 1;

LAB54:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB55;

LAB56:
LAB57:
LAB42:
LAB27:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(32, ng0);
    t29 = (t0 + 1048U);
    t30 = *((char **)t29);
    memset(t28, 0, 8);
    t29 = (t28 + 4);
    t31 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = (t32 >> 0);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t31);
    t35 = (t34 >> 0);
    *((unsigned int *)t29) = t35;
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & 65535U);
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 65535U);
    t38 = (t0 + 1768);
    t42 = (t0 + 1768);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng2)));
    t46 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t44)), 2, t45, 32, 1, t46, 32, 1);
    t47 = (t39 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t40 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t54 = (t41 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(33, ng0);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB16:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB17;

LAB18:    goto LAB12;

LAB14:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t38, t28, t59, *((unsigned int *)t40), t63);
    goto LAB15;

LAB17:    xsi_set_current_line(34, ng0);
    t8 = (t0 + 1048U);
    t21 = *((char **)t8);
    memset(t28, 0, 8);
    t8 = (t28 + 4);
    t22 = (t21 + 4);
    t14 = *((unsigned int *)t21);
    t15 = (t14 >> 15);
    t16 = (t15 & 1);
    *((unsigned int *)t28) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 15);
    t19 = (t18 & 1);
    *((unsigned int *)t8) = t19;
    t29 = (t0 + 1768);
    t30 = (t0 + 1768);
    t31 = (t30 + 72U);
    t38 = *((char **)t31);
    t42 = (t0 + 1928);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_generic_convert_bit_index(t39, t38, 2, t44, 32, 1);
    t45 = (t39 + 4);
    t20 = *((unsigned int *)t45);
    t49 = (!(t20));
    if (t49 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB16;

LAB19:    xsi_vlogvar_assign_value(t29, t28, 0, *((unsigned int *)t39), 1);
    goto LAB20;

LAB23:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(37, ng0);

LAB28:    xsi_set_current_line(38, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t28, 0, 8);
    t21 = (t28 + 4);
    t29 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = (t32 >> 0);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t29);
    t35 = (t34 >> 0);
    *((unsigned int *)t21) = t35;
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & 65535U);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & 65535U);
    t30 = (t0 + 1768);
    t31 = (t0 + 1768);
    t38 = (t31 + 72U);
    t42 = *((char **)t38);
    t43 = ((char*)((ng2)));
    t44 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t42)), 2, t43, 32, 1, t44, 32, 1);
    t45 = (t39 + 4);
    t48 = *((unsigned int *)t45);
    t49 = (!(t48));
    t46 = (t40 + 4);
    t51 = *((unsigned int *)t46);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t47 = (t41 + 4);
    t55 = *((unsigned int *)t47);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(39, ng0);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB31:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB32;

LAB33:    goto LAB27;

LAB29:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t30, t28, t59, *((unsigned int *)t40), t63);
    goto LAB30;

LAB32:    xsi_set_current_line(40, ng0);
    t8 = ((char*)((ng3)));
    t21 = (t0 + 1768);
    t22 = (t0 + 1768);
    t29 = (t22 + 72U);
    t30 = *((char **)t29);
    t31 = (t0 + 1928);
    t38 = (t31 + 56U);
    t42 = *((char **)t38);
    xsi_vlog_generic_convert_bit_index(t28, t30, 2, t42, 32, 1);
    t43 = (t28 + 4);
    t14 = *((unsigned int *)t43);
    t49 = (!(t14));
    if (t49 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB31;

LAB34:    xsi_vlogvar_assign_value(t21, t8, 0, *((unsigned int *)t28), 1);
    goto LAB35;

LAB38:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB39;

LAB40:    xsi_set_current_line(43, ng0);

LAB43:    xsi_set_current_line(44, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t28, 0, 8);
    t21 = (t28 + 4);
    t29 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = (t32 >> 0);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t29);
    t35 = (t34 >> 0);
    *((unsigned int *)t21) = t35;
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & 65535U);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & 65535U);
    t30 = (t0 + 1768);
    t31 = (t0 + 1768);
    t38 = (t31 + 72U);
    t42 = *((char **)t38);
    t43 = ((char*)((ng9)));
    t44 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t42)), 2, t43, 32, 1, t44, 32, 1);
    t45 = (t39 + 4);
    t48 = *((unsigned int *)t45);
    t49 = (!(t48));
    t46 = (t40 + 4);
    t51 = *((unsigned int *)t46);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t47 = (t41 + 4);
    t55 = *((unsigned int *)t47);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB44;

LAB45:    xsi_set_current_line(45, ng0);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB46:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB47;

LAB48:    goto LAB42;

LAB44:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t30, t28, t59, *((unsigned int *)t40), t63);
    goto LAB45;

LAB47:    xsi_set_current_line(46, ng0);
    t8 = ((char*)((ng3)));
    t21 = (t0 + 1768);
    t22 = (t0 + 1768);
    t29 = (t22 + 72U);
    t30 = *((char **)t29);
    t31 = (t0 + 1928);
    t38 = (t31 + 56U);
    t42 = *((char **)t38);
    xsi_vlog_generic_convert_bit_index(t28, t30, 2, t42, 32, 1);
    t43 = (t28 + 4);
    t14 = *((unsigned int *)t43);
    t49 = (!(t14));
    if (t49 == 1)
        goto LAB49;

LAB50:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB46;

LAB49:    xsi_vlogvar_assign_value(t21, t8, 0, *((unsigned int *)t28), 1);
    goto LAB50;

LAB53:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(49, ng0);

LAB58:    xsi_set_current_line(50, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t28, 0, 8);
    t21 = (t28 + 4);
    t29 = (t22 + 4);
    t32 = *((unsigned int *)t22);
    t33 = (t32 >> 0);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t29);
    t35 = (t34 >> 0);
    *((unsigned int *)t21) = t35;
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & 65535U);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & 65535U);
    t30 = (t0 + 1768);
    t31 = (t0 + 1768);
    t38 = (t31 + 72U);
    t42 = *((char **)t38);
    t43 = ((char*)((ng2)));
    t44 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t39, t40, t41, ((int*)(t42)), 2, t43, 32, 1, t44, 32, 1);
    t45 = (t39 + 4);
    t48 = *((unsigned int *)t45);
    t49 = (!(t48));
    t46 = (t40 + 4);
    t51 = *((unsigned int *)t46);
    t52 = (!(t51));
    t53 = (t49 && t52);
    t47 = (t41 + 4);
    t55 = *((unsigned int *)t47);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB59;

LAB60:    xsi_set_current_line(51, ng0);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB61:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB62;

LAB63:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng11)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB57;

LAB59:    t58 = *((unsigned int *)t41);
    t59 = (t58 + 0);
    t60 = *((unsigned int *)t39);
    t61 = *((unsigned int *)t40);
    t62 = (t60 - t61);
    t63 = (t62 + 1);
    xsi_vlogvar_assign_value(t30, t28, t59, *((unsigned int *)t40), t63);
    goto LAB60;

LAB62:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 1048U);
    t21 = *((char **)t8);
    memset(t28, 0, 8);
    t8 = (t28 + 4);
    t22 = (t21 + 4);
    t14 = *((unsigned int *)t21);
    t15 = (t14 >> 15);
    t16 = (t15 & 1);
    *((unsigned int *)t28) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 15);
    t19 = (t18 & 1);
    *((unsigned int *)t8) = t19;
    t29 = (t0 + 1768);
    t30 = (t0 + 1768);
    t31 = (t30 + 72U);
    t38 = *((char **)t31);
    t42 = (t0 + 1928);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    xsi_vlog_generic_convert_bit_index(t39, t38, 2, t44, 32, 1);
    t45 = (t39 + 4);
    t20 = *((unsigned int *)t45);
    t49 = (!(t20));
    if (t49 == 1)
        goto LAB64;

LAB65:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB61;

LAB64:    xsi_vlogvar_assign_value(t29, t28, 0, *((unsigned int *)t39), 1);
    goto LAB65;

}

static void Cont_56_1(char *t0)
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
    char *t10;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3432);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000004057475627_4241813833_init()
{
	static char *pe[] = {(void *)Always_28_0,(void *)Cont_56_1};
	xsi_register_didat("work_m_00000000004057475627_4241813833", "isim/testbench_isim_beh.exe.sim/work/m_00000000004057475627_4241813833.didat");
	xsi_register_executes(pe);
}
