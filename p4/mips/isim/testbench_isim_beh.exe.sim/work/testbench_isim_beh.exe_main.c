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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002752094887_0467708899_init();
    work_m_00000000001094804562_1733832700_init();
    work_m_00000000002895897630_2992636753_init();
    work_m_00000000001462792587_1318752818_init();
    work_m_00000000000854908725_3037777339_init();
    work_m_00000000000112832006_4127636709_init();
    work_m_00000000004109244327_1785967555_init();
    work_m_00000000003951261888_0886308060_init();
    work_m_00000000003755284345_2924402094_init();
    work_m_00000000002973955604_0286164271_init();
    work_m_00000000002315458757_3877310806_init();
    work_m_00000000000552888376_1949178628_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000552888376_1949178628");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
