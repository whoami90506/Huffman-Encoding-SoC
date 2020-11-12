// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _compute_bit_length_HH_
#define _compute_bit_length_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "compute_bit_lengtjbC.h"
#include "compute_bit_lengtkbM.h"

namespace ap_rtl {

struct compute_bit_length : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > parent_V_address0;
    sc_out< sc_logic > parent_V_ce0;
    sc_in< sc_lv<9> > parent_V_q0;
    sc_out< sc_lv<8> > left_V_address0;
    sc_out< sc_logic > left_V_ce0;
    sc_in< sc_lv<9> > left_V_q0;
    sc_out< sc_lv<8> > right_V_address0;
    sc_out< sc_logic > right_V_ce0;
    sc_in< sc_lv<9> > right_V_q0;
    sc_in< sc_lv<9> > extLd_loc_dout;
    sc_in< sc_logic > extLd_loc_empty_n;
    sc_out< sc_logic > extLd_loc_read;
    sc_out< sc_lv<6> > length_histogram_V_address0;
    sc_out< sc_logic > length_histogram_V_ce0;
    sc_out< sc_logic > length_histogram_V_we0;
    sc_out< sc_lv<9> > length_histogram_V_d0;


    // Module declarations
    compute_bit_length(sc_module_name name);
    SC_HAS_PROCESS(compute_bit_length);

    ~compute_bit_length();

    sc_trace_file* mVcdFile;

    compute_bit_lengtjbC* child_depth_V_U;
    compute_bit_lengtkbM* internal_length_hist_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > extLd_loc_blk_n;
    sc_signal< sc_lv<32> > i2_0_i_i_reg_219;
    sc_signal< sc_lv<10> > zext_ln12_fu_242_p1;
    sc_signal< sc_lv<10> > zext_ln12_reg_339;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<7> > i_5_fu_252_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > add_ln22_fu_264_p2;
    sc_signal< sc_lv<10> > add_ln22_reg_353;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > sext_ln25_fu_278_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_fu_282_p3;
    sc_signal< sc_lv<1> > tmp_reg_363;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state8_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > tmp_reg_363_pp1_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln27_fu_290_p1;
    sc_signal< sc_lv<64> > zext_ln27_reg_367;
    sc_signal< sc_lv<64> > zext_ln27_reg_367_pp1_iter1_reg;
    sc_signal< sc_lv<9> > parent_V_load_reg_379;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage1;
    sc_signal< bool > ap_block_state6_pp1_stage1_iter0;
    sc_signal< bool > ap_block_state9_pp1_stage1_iter1;
    sc_signal< bool > ap_block_pp1_stage1_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage2;
    sc_signal< bool > ap_block_state7_pp1_stage2_iter0;
    sc_signal< bool > ap_block_state10_pp1_stage2_iter1;
    sc_signal< bool > ap_block_pp1_stage2_11001;
    sc_signal< sc_lv<32> > i_6_fu_299_p2;
    sc_signal< sc_lv<32> > i_6_reg_389;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<6> > child_depth_V_q0;
    sc_signal< sc_lv<6> > child_depth_V_load_reg_394;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<1> > icmp_ln883_fu_311_p2;
    sc_signal< sc_lv<1> > icmp_ln883_reg_409;
    sc_signal< sc_lv<1> > icmp_ln883_1_fu_317_p2;
    sc_signal< sc_lv<1> > icmp_ln883_1_reg_413;
    sc_signal< sc_lv<64> > zext_ln544_8_fu_323_p1;
    sc_signal< sc_lv<64> > zext_ln544_8_reg_417;
    sc_signal< sc_lv<6> > internal_length_hist_2_reg_422;
    sc_signal< sc_lv<9> > internal_length_hist_q0;
    sc_signal< sc_lv<9> > count_V_reg_427;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state5;
    sc_signal< bool > ap_block_pp1_stage2_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<8> > child_depth_V_address0;
    sc_signal< sc_logic > child_depth_V_ce0;
    sc_signal< sc_logic > child_depth_V_we0;
    sc_signal< sc_lv<6> > child_depth_V_d0;
    sc_signal< sc_lv<6> > internal_length_hist_address0;
    sc_signal< sc_logic > internal_length_hist_ce0;
    sc_signal< sc_logic > internal_length_hist_we0;
    sc_signal< sc_lv<9> > internal_length_hist_d0;
    sc_signal< sc_lv<7> > i_0_i_i_reg_208;
    sc_signal< sc_lv<1> > icmp_ln16_fu_246_p2;
    sc_signal< sc_lv<32> > ap_phi_mux_i2_0_i_i_phi_fu_222_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<2> > ap_phi_reg_pp1_iter0_phi_ln700_i_i_reg_229;
    sc_signal< sc_lv<2> > ap_phi_reg_pp1_iter1_phi_ln700_i_i_reg_229;
    sc_signal< sc_lv<2> > ap_phi_reg_pp1_iter2_phi_ln700_i_i_reg_229;
    sc_signal< sc_lv<64> > zext_ln18_fu_258_p1;
    sc_signal< sc_lv<64> > sext_ln22_fu_269_p1;
    sc_signal< sc_lv<64> > zext_ln544_fu_295_p1;
    sc_signal< bool > ap_block_pp1_stage2;
    sc_signal< bool > ap_block_pp1_stage1;
    sc_signal< sc_lv<9> > count_V_1_fu_332_p2;
    sc_signal< sc_lv<6> > length_V_fu_305_p2;
    sc_signal< sc_lv<10> > i_fu_273_p2;
    sc_signal< sc_lv<9> > zext_ln544_7_fu_328_p1;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp1_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< bool > ap_condition_246;
    sc_signal< bool > ap_condition_252;
    sc_signal< bool > ap_condition_182;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_pp1_stage0;
    static const sc_lv<8> ap_ST_fsm_pp1_stage1;
    static const sc_lv<8> ap_ST_fsm_pp1_stage2;
    static const sc_lv<8> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<10> ap_const_lv10_3FE;
    static const sc_lv<10> ap_const_lv10_3FD;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<9> ap_const_lv9_1FF;
    static const sc_lv<32> ap_const_lv32_7;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln22_fu_264_p2();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp1_stage1();
    void thread_ap_CS_fsm_pp1_stage2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp1_stage1();
    void thread_ap_block_pp1_stage1_11001();
    void thread_ap_block_pp1_stage1_subdone();
    void thread_ap_block_pp1_stage2();
    void thread_ap_block_pp1_stage2_11001();
    void thread_ap_block_pp1_stage2_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp1_stage2_iter1();
    void thread_ap_block_state11_pp1_stage0_iter2();
    void thread_ap_block_state5_pp1_stage0_iter0();
    void thread_ap_block_state6_pp1_stage1_iter0();
    void thread_ap_block_state7_pp1_stage2_iter0();
    void thread_ap_block_state8_pp1_stage0_iter1();
    void thread_ap_block_state9_pp1_stage1_iter1();
    void thread_ap_condition_182();
    void thread_ap_condition_246();
    void thread_ap_condition_252();
    void thread_ap_condition_pp1_exit_iter0_state5();
    void thread_ap_done();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_i2_0_i_i_phi_fu_222_p4();
    void thread_ap_phi_reg_pp1_iter0_phi_ln700_i_i_reg_229();
    void thread_ap_ready();
    void thread_child_depth_V_address0();
    void thread_child_depth_V_ce0();
    void thread_child_depth_V_d0();
    void thread_child_depth_V_we0();
    void thread_count_V_1_fu_332_p2();
    void thread_extLd_loc_blk_n();
    void thread_extLd_loc_read();
    void thread_i_5_fu_252_p2();
    void thread_i_6_fu_299_p2();
    void thread_i_fu_273_p2();
    void thread_icmp_ln16_fu_246_p2();
    void thread_icmp_ln883_1_fu_317_p2();
    void thread_icmp_ln883_fu_311_p2();
    void thread_internal_length_hist_address0();
    void thread_internal_length_hist_ce0();
    void thread_internal_length_hist_d0();
    void thread_internal_length_hist_we0();
    void thread_left_V_address0();
    void thread_left_V_ce0();
    void thread_length_V_fu_305_p2();
    void thread_length_histogram_V_address0();
    void thread_length_histogram_V_ce0();
    void thread_length_histogram_V_d0();
    void thread_length_histogram_V_we0();
    void thread_parent_V_address0();
    void thread_parent_V_ce0();
    void thread_right_V_address0();
    void thread_right_V_ce0();
    void thread_sext_ln22_fu_269_p1();
    void thread_sext_ln25_fu_278_p1();
    void thread_tmp_fu_282_p3();
    void thread_zext_ln12_fu_242_p1();
    void thread_zext_ln18_fu_258_p1();
    void thread_zext_ln27_fu_290_p1();
    void thread_zext_ln544_7_fu_328_p1();
    void thread_zext_ln544_8_fu_323_p1();
    void thread_zext_ln544_fu_295_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
