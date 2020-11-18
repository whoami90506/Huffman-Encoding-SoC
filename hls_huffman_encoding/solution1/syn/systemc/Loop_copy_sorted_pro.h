// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_copy_sorted_pro_HH_
#define _Loop_copy_sorted_pro_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_copy_sorted_pro : public sc_module {
    // Port declarations 38
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<9> > n_dout;
    sc_in< sc_logic > n_empty_n;
    sc_out< sc_logic > n_read;
    sc_out< sc_lv<8> > sorted_0_address0;
    sc_out< sc_logic > sorted_0_ce0;
    sc_in< sc_lv<9> > sorted_0_q0;
    sc_out< sc_lv<9> > sorted_copy1_0_din;
    sc_in< sc_logic > sorted_copy1_0_full_n;
    sc_out< sc_logic > sorted_copy1_0_write;
    sc_out< sc_lv<8> > sorted_1_address0;
    sc_out< sc_logic > sorted_1_ce0;
    sc_in< sc_lv<32> > sorted_1_q0;
    sc_out< sc_lv<32> > sorted_copy1_1_din;
    sc_in< sc_logic > sorted_copy1_1_full_n;
    sc_out< sc_logic > sorted_copy1_1_write;
    sc_out< sc_lv<8> > sorted_copy2_value_V_address0;
    sc_out< sc_logic > sorted_copy2_value_V_ce0;
    sc_out< sc_logic > sorted_copy2_value_V_we0;
    sc_out< sc_lv<9> > sorted_copy2_value_V_d0;
    sc_out< sc_lv<9> > val_assign7_out_out_din;
    sc_in< sc_logic > val_assign7_out_out_full_n;
    sc_out< sc_logic > val_assign7_out_out_write;
    sc_out< sc_lv<9> > extLd_out_out_din;
    sc_in< sc_logic > extLd_out_out_full_n;
    sc_out< sc_logic > extLd_out_out_write;
    sc_out< sc_lv<9> > extLd_out_out1_din;
    sc_in< sc_logic > extLd_out_out1_full_n;
    sc_out< sc_logic > extLd_out_out1_write;


    // Module declarations
    Loop_copy_sorted_pro(sc_module_name name);
    SC_HAS_PROCESS(Loop_copy_sorted_pro);

    ~Loop_copy_sorted_pro();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > n_blk_n;
    sc_signal< sc_logic > sorted_copy1_0_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > sorted_copy1_1_blk_n;
    sc_signal< sc_logic > val_assign7_out_out_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln34_fu_145_p2;
    sc_signal< sc_logic > extLd_out_out_blk_n;
    sc_signal< sc_logic > extLd_out_out1_blk_n;
    sc_signal< sc_lv<9> > n_read_reg_162;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<9> > i_fu_150_p2;
    sc_signal< sc_lv<9> > i_reg_173;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<64> > zext_ln35_fu_156_p1;
    sc_signal< sc_lv<64> > zext_ln35_reg_178;
    sc_signal< sc_lv<9> > sorted_0_load_reg_193;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > previous_frequency_reg_199;
    sc_signal< sc_lv<9> > i_0_i_reg_134;
    sc_signal< bool > ap_block_state4;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_block_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_extLd_out_out1_blk_n();
    void thread_extLd_out_out1_din();
    void thread_extLd_out_out1_write();
    void thread_extLd_out_out_blk_n();
    void thread_extLd_out_out_din();
    void thread_extLd_out_out_write();
    void thread_i_fu_150_p2();
    void thread_icmp_ln34_fu_145_p2();
    void thread_internal_ap_ready();
    void thread_n_blk_n();
    void thread_n_read();
    void thread_real_start();
    void thread_sorted_0_address0();
    void thread_sorted_0_ce0();
    void thread_sorted_1_address0();
    void thread_sorted_1_ce0();
    void thread_sorted_copy1_0_blk_n();
    void thread_sorted_copy1_0_din();
    void thread_sorted_copy1_0_write();
    void thread_sorted_copy1_1_blk_n();
    void thread_sorted_copy1_1_din();
    void thread_sorted_copy1_1_write();
    void thread_sorted_copy2_value_V_address0();
    void thread_sorted_copy2_value_V_ce0();
    void thread_sorted_copy2_value_V_d0();
    void thread_sorted_copy2_value_V_we0();
    void thread_start_out();
    void thread_start_write();
    void thread_val_assign7_out_out_blk_n();
    void thread_val_assign7_out_out_din();
    void thread_val_assign7_out_out_write();
    void thread_zext_ln35_fu_156_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
