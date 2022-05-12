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
static const char *ng0 = "E:/string/string.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {57, 0};
static int ng4[] = {48, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {4U, 0U};
static int ng7[] = {43, 0};
static int ng8[] = {42, 0};
static unsigned int ng9[] = {2U, 0U};
static int ng10[] = {0, 0};



static void Initial_32_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(33, ng0);

LAB2:    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t6[8];
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

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3912);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
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
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(37, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1928);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 3);
    goto LAB11;

}

static void Always_38_2(char *t0)
{
    char t13[8];
    char t24[8];
    char t28[8];
    char t42[8];
    char t46[8];
    char t54[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    int t78;
    int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;

LAB0:    t1 = (t0 + 3344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3928);
    *((int *)t2) = 1;
    t3 = (t0 + 3376);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t2) == 0)
        goto LAB9;

LAB11:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB12:    t5 = (t13 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB13;

LAB14:
LAB15:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

LAB9:    *((unsigned int *)t13) = 1;
    goto LAB12;

LAB13:    xsi_set_current_line(42, ng0);

LAB16:    xsi_set_current_line(43, ng0);
    t11 = (t0 + 1928);
    t12 = (t11 + 56U);
    t19 = *((char **)t12);

LAB17:    t20 = ((char*)((ng1)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 3, t20, 3);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 3, t2, 3);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng9)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 3, t2, 3);
    if (t21 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng6)));
    t21 = xsi_vlog_unsigned_case_compare(t19, 3, t2, 3);
    if (t21 == 1)
        goto LAB24;

LAB25:
LAB27:
LAB26:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB28:    goto LAB15;

LAB18:    xsi_set_current_line(44, ng0);

LAB29:    xsi_set_current_line(45, ng0);
    t22 = (t0 + 1368U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng3)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    if (*((unsigned int *)t25) != 0)
        goto LAB31;

LAB30:    t26 = (t22 + 4);
    if (*((unsigned int *)t26) != 0)
        goto LAB31;

LAB34:    if (*((unsigned int *)t23) > *((unsigned int *)t22))
        goto LAB33;

LAB32:    *((unsigned int *)t24) = 1;

LAB33:    memset(t28, 0, 8);
    t29 = (t24 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t24);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t29) != 0)
        goto LAB37;

LAB38:    t36 = (t28 + 4);
    t37 = *((unsigned int *)t28);
    t38 = *((unsigned int *)t36);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB39;

LAB40:    memcpy(t54, t28, 8);

LAB41:    t86 = (t54 + 4);
    t87 = *((unsigned int *)t86);
    t88 = (~(t87));
    t89 = *((unsigned int *)t54);
    t90 = (t89 & t88);
    t91 = (t90 != 0);
    if (t91 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB56:    goto LAB28;

LAB20:    xsi_set_current_line(48, ng0);

LAB57:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng7)));
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t11 = (t3 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t3);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t11);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t11);
    t18 = (t16 | t17);
    t30 = (~(t18));
    t31 = (t15 & t30);
    if (t31 != 0)
        goto LAB61;

LAB58:    if (t18 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t13) = 1;

LAB61:    memset(t24, 0, 8);
    t20 = (t13 + 4);
    t32 = *((unsigned int *)t20);
    t33 = (~(t32));
    t34 = *((unsigned int *)t13);
    t37 = (t34 & t33);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t20) != 0)
        goto LAB64;

LAB65:    t23 = (t24 + 4);
    t39 = *((unsigned int *)t24);
    t48 = (!(t39));
    t49 = *((unsigned int *)t23);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB66;

LAB67:    memcpy(t46, t24, 8);

LAB68:    t53 = (t46 + 4);
    t100 = *((unsigned int *)t53);
    t101 = (~(t100));
    t102 = *((unsigned int *)t46);
    t103 = (t102 & t101);
    t104 = (t103 != 0);
    if (t104 > 0)
        goto LAB80;

LAB81:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB82:    goto LAB28;

LAB22:    xsi_set_current_line(52, ng0);

LAB83:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB85;

LAB84:    t11 = (t3 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB85;

LAB88:    if (*((unsigned int *)t4) > *((unsigned int *)t3))
        goto LAB87;

LAB86:    *((unsigned int *)t13) = 1;

LAB87:    memset(t24, 0, 8);
    t20 = (t13 + 4);
    t6 = *((unsigned int *)t20);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t20) != 0)
        goto LAB91;

LAB92:    t23 = (t24 + 4);
    t14 = *((unsigned int *)t24);
    t15 = *((unsigned int *)t23);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB93;

LAB94:    memcpy(t46, t24, 8);

LAB95:    t53 = (t46 + 4);
    t74 = *((unsigned int *)t53);
    t75 = (~(t74));
    t76 = *((unsigned int *)t46);
    t77 = (t76 & t75);
    t80 = (t77 != 0);
    if (t80 > 0)
        goto LAB108;

LAB109:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB110:    goto LAB28;

LAB24:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB28;

LAB31:    t27 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB33;

LAB35:    *((unsigned int *)t28) = 1;
    goto LAB38;

LAB37:    t35 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB38;

LAB39:    t40 = (t0 + 1368U);
    t41 = *((char **)t40);
    t40 = ((char*)((ng4)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    if (*((unsigned int *)t43) != 0)
        goto LAB43;

LAB42:    t44 = (t40 + 4);
    if (*((unsigned int *)t44) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t41) < *((unsigned int *)t40))
        goto LAB45;

LAB44:    *((unsigned int *)t42) = 1;

LAB45:    memset(t46, 0, 8);
    t47 = (t42 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t42);
    t51 = (t50 & t49);
    t52 = (t51 & 1U);
    if (t52 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t47) != 0)
        goto LAB49;

LAB50:    t55 = *((unsigned int *)t28);
    t56 = *((unsigned int *)t46);
    t57 = (t55 & t56);
    *((unsigned int *)t54) = t57;
    t58 = (t28 + 4);
    t59 = (t46 + 4);
    t60 = (t54 + 4);
    t61 = *((unsigned int *)t58);
    t62 = *((unsigned int *)t59);
    t63 = (t61 | t62);
    *((unsigned int *)t60) = t63;
    t64 = *((unsigned int *)t60);
    t65 = (t64 != 0);
    if (t65 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB41;

LAB43:    t45 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB45;

LAB47:    *((unsigned int *)t46) = 1;
    goto LAB50;

LAB49:    t53 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB50;

LAB51:    t66 = *((unsigned int *)t54);
    t67 = *((unsigned int *)t60);
    *((unsigned int *)t54) = (t66 | t67);
    t68 = (t28 + 4);
    t69 = (t46 + 4);
    t70 = *((unsigned int *)t28);
    t71 = (~(t70));
    t72 = *((unsigned int *)t68);
    t73 = (~(t72));
    t74 = *((unsigned int *)t46);
    t75 = (~(t74));
    t76 = *((unsigned int *)t69);
    t77 = (~(t76));
    t78 = (t71 & t73);
    t79 = (t75 & t77);
    t80 = (~(t78));
    t81 = (~(t79));
    t82 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t82 & t80);
    t83 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t83 & t81);
    t84 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t84 & t80);
    t85 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t85 & t81);
    goto LAB53;

LAB54:    xsi_set_current_line(45, ng0);
    t92 = ((char*)((ng5)));
    t93 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t93, t92, 0, 0, 3, 0LL);
    goto LAB56;

LAB60:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t24) = 1;
    goto LAB65;

LAB64:    t22 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB65;

LAB66:    t25 = (t0 + 1368U);
    t26 = *((char **)t25);
    t25 = ((char*)((ng8)));
    memset(t28, 0, 8);
    t27 = (t26 + 4);
    t29 = (t25 + 4);
    t51 = *((unsigned int *)t26);
    t52 = *((unsigned int *)t25);
    t55 = (t51 ^ t52);
    t56 = *((unsigned int *)t27);
    t57 = *((unsigned int *)t29);
    t61 = (t56 ^ t57);
    t62 = (t55 | t61);
    t63 = *((unsigned int *)t27);
    t64 = *((unsigned int *)t29);
    t65 = (t63 | t64);
    t66 = (~(t65));
    t67 = (t62 & t66);
    if (t67 != 0)
        goto LAB72;

LAB69:    if (t65 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t28) = 1;

LAB72:    memset(t42, 0, 8);
    t36 = (t28 + 4);
    t70 = *((unsigned int *)t36);
    t71 = (~(t70));
    t72 = *((unsigned int *)t28);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t36) != 0)
        goto LAB75;

LAB76:    t75 = *((unsigned int *)t24);
    t76 = *((unsigned int *)t42);
    t77 = (t75 | t76);
    *((unsigned int *)t46) = t77;
    t41 = (t24 + 4);
    t43 = (t42 + 4);
    t44 = (t46 + 4);
    t80 = *((unsigned int *)t41);
    t81 = *((unsigned int *)t43);
    t82 = (t80 | t81);
    *((unsigned int *)t44) = t82;
    t83 = *((unsigned int *)t44);
    t84 = (t83 != 0);
    if (t84 == 1)
        goto LAB77;

LAB78:
LAB79:    goto LAB68;

LAB71:    t35 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB72;

LAB73:    *((unsigned int *)t42) = 1;
    goto LAB76;

LAB75:    t40 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB76;

LAB77:    t85 = *((unsigned int *)t46);
    t87 = *((unsigned int *)t44);
    *((unsigned int *)t46) = (t85 | t87);
    t45 = (t24 + 4);
    t47 = (t42 + 4);
    t88 = *((unsigned int *)t45);
    t89 = (~(t88));
    t90 = *((unsigned int *)t24);
    t78 = (t90 & t89);
    t91 = *((unsigned int *)t47);
    t94 = (~(t91));
    t95 = *((unsigned int *)t42);
    t79 = (t95 & t94);
    t96 = (~(t78));
    t97 = (~(t79));
    t98 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t98 & t96);
    t99 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t99 & t97);
    goto LAB79;

LAB80:    xsi_set_current_line(49, ng0);
    t58 = ((char*)((ng9)));
    t59 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t59, t58, 0, 0, 3, 0LL);
    goto LAB82;

LAB85:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB87;

LAB89:    *((unsigned int *)t24) = 1;
    goto LAB92;

LAB91:    t22 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB92;

LAB93:    t25 = (t0 + 1368U);
    t26 = *((char **)t25);
    t25 = ((char*)((ng4)));
    memset(t28, 0, 8);
    t27 = (t26 + 4);
    if (*((unsigned int *)t27) != 0)
        goto LAB97;

LAB96:    t29 = (t25 + 4);
    if (*((unsigned int *)t29) != 0)
        goto LAB97;

LAB100:    if (*((unsigned int *)t26) < *((unsigned int *)t25))
        goto LAB99;

LAB98:    *((unsigned int *)t28) = 1;

LAB99:    memset(t42, 0, 8);
    t36 = (t28 + 4);
    t17 = *((unsigned int *)t36);
    t18 = (~(t17));
    t30 = *((unsigned int *)t28);
    t31 = (t30 & t18);
    t32 = (t31 & 1U);
    if (t32 != 0)
        goto LAB101;

LAB102:    if (*((unsigned int *)t36) != 0)
        goto LAB103;

LAB104:    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t42);
    t37 = (t33 & t34);
    *((unsigned int *)t46) = t37;
    t41 = (t24 + 4);
    t43 = (t42 + 4);
    t44 = (t46 + 4);
    t38 = *((unsigned int *)t41);
    t39 = *((unsigned int *)t43);
    t48 = (t38 | t39);
    *((unsigned int *)t44) = t48;
    t49 = *((unsigned int *)t44);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB105;

LAB106:
LAB107:    goto LAB95;

LAB97:    t35 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB99;

LAB101:    *((unsigned int *)t42) = 1;
    goto LAB104;

LAB103:    t40 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB104;

LAB105:    t51 = *((unsigned int *)t46);
    t52 = *((unsigned int *)t44);
    *((unsigned int *)t46) = (t51 | t52);
    t45 = (t24 + 4);
    t47 = (t42 + 4);
    t55 = *((unsigned int *)t24);
    t56 = (~(t55));
    t57 = *((unsigned int *)t45);
    t61 = (~(t57));
    t62 = *((unsigned int *)t42);
    t63 = (~(t62));
    t64 = *((unsigned int *)t47);
    t65 = (~(t64));
    t78 = (t56 & t61);
    t79 = (t63 & t65);
    t66 = (~(t78));
    t67 = (~(t79));
    t70 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t70 & t66);
    t71 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t71 & t67);
    t72 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t72 & t66);
    t73 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t73 & t67);
    goto LAB107;

LAB108:    xsi_set_current_line(53, ng0);
    t58 = ((char*)((ng5)));
    t59 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t59, t58, 0, 0, 3, 0LL);
    goto LAB110;

}

static void Cont_61_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1928);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng5)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 4024);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 3944);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng2)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng10)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}


extern void work_m_00000000001923289913_4180013079_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Always_36_1,(void *)Always_38_2,(void *)Cont_61_3};
	xsi_register_didat("work_m_00000000001923289913_4180013079", "isim/string_isim_beh.exe.sim/work/m_00000000001923289913_4180013079.didat");
	xsi_register_executes(pe);
}
