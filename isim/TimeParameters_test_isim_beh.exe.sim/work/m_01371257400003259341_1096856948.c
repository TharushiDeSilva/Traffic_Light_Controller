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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/tharushi/Programs/HDL/Traffic_Light_Controller/TimeParameters.v";
static unsigned int ng1[] = {6U, 0U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {15U, 0U};



static void Always_43_0(char *t0)
{
    char t14[8];
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
    int t13;
    char *t15;
    char *t16;
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
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 4456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4776);
    *((int *)t2) = 1;
    t3 = (t0 + 4488);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 2024U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2184U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(82, ng0);

LAB46:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2664U);
    t3 = *((char **)t2);

LAB47:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t13 == 1)
        goto LAB52;

LAB53:
LAB55:
LAB54:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 3064);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB56:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);

LAB9:    xsi_set_current_line(47, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3224);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);

LAB13:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 2344U);
    t5 = *((char **)t4);

LAB14:    t4 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t13 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(73, ng0);

LAB45:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB23:    goto LAB12;

LAB15:    xsi_set_current_line(55, ng0);
    t11 = (t0 + 2504U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng4)));
    memset(t14, 0, 8);
    t15 = (t12 + 4);
    t16 = (t11 + 4);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t11);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t15);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t15);
    t25 = *((unsigned int *)t16);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB27;

LAB24:    if (t26 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t14) = 1;

LAB27:    t30 = (t14 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t14);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2504U);
    t3 = *((char **)t2);
    t2 = (t0 + 3224);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);

LAB30:    goto LAB23;

LAB17:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 2504U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t14, 0, 8);
    t11 = (t4 + 4);
    t12 = (t3 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t3);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t12);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB34;

LAB31:    if (t21 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t14) = 1;

LAB34:    t16 = (t14 + 4);
    t24 = *((unsigned int *)t16);
    t25 = (~(t24));
    t26 = *((unsigned int *)t14);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2504U);
    t3 = *((char **)t2);
    t2 = (t0 + 3384);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);

LAB37:    goto LAB23;

LAB19:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 2504U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t14, 0, 8);
    t11 = (t4 + 4);
    t12 = (t3 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t3);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t12);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB41;

LAB38:    if (t21 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t14) = 1;

LAB41:    t16 = (t14 + 4);
    t24 = *((unsigned int *)t16);
    t25 = (~(t24));
    t26 = *((unsigned int *)t14);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2504U);
    t3 = *((char **)t2);
    t2 = (t0 + 3544);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);

LAB44:    goto LAB23;

LAB26:    t29 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(56, ng0);
    t36 = ((char*)((ng1)));
    t37 = (t0 + 3224);
    xsi_vlogvar_assign_value(t37, t36, 0, 0, 4);
    goto LAB30;

LAB33:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(62, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3384);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 4);
    goto LAB37;

LAB40:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(68, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 3544);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 4);
    goto LAB44;

LAB48:    xsi_set_current_line(85, ng0);
    t4 = (t0 + 3224);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t15 = (t0 + 3064);
    xsi_vlogvar_wait_assign_value(t15, t12, 0, 0, 4, 0LL);
    goto LAB56;

LAB50:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 3384);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t15 = (t0 + 3064);
    xsi_vlogvar_wait_assign_value(t15, t12, 0, 0, 4, 0LL);
    goto LAB56;

LAB52:    xsi_set_current_line(89, ng0);
    t4 = (t0 + 3544);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t15 = (t0 + 3064);
    xsi_vlogvar_wait_assign_value(t15, t12, 0, 0, 4, 0LL);
    goto LAB56;

}


extern void work_m_01371257400003259341_1096856948_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_01371257400003259341_1096856948", "isim/TimeParameters_test_isim_beh.exe.sim/work/m_01371257400003259341_1096856948.didat");
	xsi_register_executes(pe);
}
