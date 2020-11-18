// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Loop_copy_sorted_pro.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Loop_copy_sorted_pro::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Loop_copy_sorted_pro::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> Loop_copy_sorted_pro::ap_ST_fsm_state1 = "1";
const sc_lv<4> Loop_copy_sorted_pro::ap_ST_fsm_state2 = "10";
const sc_lv<4> Loop_copy_sorted_pro::ap_ST_fsm_state3 = "100";
const sc_lv<4> Loop_copy_sorted_pro::ap_ST_fsm_state4 = "1000";
const sc_lv<32> Loop_copy_sorted_pro::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Loop_copy_sorted_pro::ap_const_lv32_3 = "11";
const sc_lv<32> Loop_copy_sorted_pro::ap_const_lv32_1 = "1";
const sc_lv<1> Loop_copy_sorted_pro::ap_const_lv1_1 = "1";
const sc_lv<1> Loop_copy_sorted_pro::ap_const_lv1_0 = "0";
const sc_lv<32> Loop_copy_sorted_pro::ap_const_lv32_2 = "10";
const sc_lv<9> Loop_copy_sorted_pro::ap_const_lv9_0 = "000000000";
const sc_lv<9> Loop_copy_sorted_pro::ap_const_lv9_1 = "1";
const bool Loop_copy_sorted_pro::ap_const_boolean_1 = true;

Loop_copy_sorted_pro::Loop_copy_sorted_pro(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( n_empty_n );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_ap_block_state4);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_extLd_out_out1_blk_n);
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_extLd_out_out1_din);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );
    sensitive << ( n_read_reg_162 );

    SC_METHOD(thread_extLd_out_out1_write);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_extLd_out_out_blk_n);
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_extLd_out_out_din);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );
    sensitive << ( n_read_reg_162 );

    SC_METHOD(thread_extLd_out_out_write);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_i_fu_150_p2);
    sensitive << ( i_0_i_reg_134 );

    SC_METHOD(thread_icmp_ln34_fu_145_p2);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );
    sensitive << ( n_read_reg_162 );
    sensitive << ( i_0_i_reg_134 );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_n_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( n_empty_n );

    SC_METHOD(thread_n_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( n_empty_n );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_sorted_0_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln35_fu_156_p1 );

    SC_METHOD(thread_sorted_0_ce0);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_sorted_1_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln35_fu_156_p1 );

    SC_METHOD(thread_sorted_1_ce0);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_sorted_copy1_0_blk_n);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_sorted_copy1_0_din);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sorted_0_load_reg_193 );

    SC_METHOD(thread_sorted_copy1_0_write);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_sorted_copy1_1_blk_n);
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_sorted_copy1_1_din);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( previous_frequency_reg_199 );

    SC_METHOD(thread_sorted_copy1_1_write);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_sorted_copy2_value_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln35_reg_178 );

    SC_METHOD(thread_sorted_copy2_value_V_ce0);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_sorted_copy2_value_V_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sorted_0_load_reg_193 );

    SC_METHOD(thread_sorted_copy2_value_V_we0);
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_val_assign7_out_out_blk_n);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_val_assign7_out_out_din);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );
    sensitive << ( n_read_reg_162 );

    SC_METHOD(thread_val_assign7_out_out_write);
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    SC_METHOD(thread_zext_ln35_fu_156_p1);
    sensitive << ( i_0_i_reg_134 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( n_empty_n );
    sensitive << ( sorted_copy1_0_full_n );
    sensitive << ( sorted_copy1_1_full_n );
    sensitive << ( val_assign7_out_out_full_n );
    sensitive << ( extLd_out_out_full_n );
    sensitive << ( extLd_out_out1_full_n );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_145_p2 );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Loop_copy_sorted_pro_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, n_dout, "(port)n_dout");
    sc_trace(mVcdFile, n_empty_n, "(port)n_empty_n");
    sc_trace(mVcdFile, n_read, "(port)n_read");
    sc_trace(mVcdFile, sorted_0_address0, "(port)sorted_0_address0");
    sc_trace(mVcdFile, sorted_0_ce0, "(port)sorted_0_ce0");
    sc_trace(mVcdFile, sorted_0_q0, "(port)sorted_0_q0");
    sc_trace(mVcdFile, sorted_copy1_0_din, "(port)sorted_copy1_0_din");
    sc_trace(mVcdFile, sorted_copy1_0_full_n, "(port)sorted_copy1_0_full_n");
    sc_trace(mVcdFile, sorted_copy1_0_write, "(port)sorted_copy1_0_write");
    sc_trace(mVcdFile, sorted_1_address0, "(port)sorted_1_address0");
    sc_trace(mVcdFile, sorted_1_ce0, "(port)sorted_1_ce0");
    sc_trace(mVcdFile, sorted_1_q0, "(port)sorted_1_q0");
    sc_trace(mVcdFile, sorted_copy1_1_din, "(port)sorted_copy1_1_din");
    sc_trace(mVcdFile, sorted_copy1_1_full_n, "(port)sorted_copy1_1_full_n");
    sc_trace(mVcdFile, sorted_copy1_1_write, "(port)sorted_copy1_1_write");
    sc_trace(mVcdFile, sorted_copy2_value_V_address0, "(port)sorted_copy2_value_V_address0");
    sc_trace(mVcdFile, sorted_copy2_value_V_ce0, "(port)sorted_copy2_value_V_ce0");
    sc_trace(mVcdFile, sorted_copy2_value_V_we0, "(port)sorted_copy2_value_V_we0");
    sc_trace(mVcdFile, sorted_copy2_value_V_d0, "(port)sorted_copy2_value_V_d0");
    sc_trace(mVcdFile, val_assign7_out_out_din, "(port)val_assign7_out_out_din");
    sc_trace(mVcdFile, val_assign7_out_out_full_n, "(port)val_assign7_out_out_full_n");
    sc_trace(mVcdFile, val_assign7_out_out_write, "(port)val_assign7_out_out_write");
    sc_trace(mVcdFile, extLd_out_out_din, "(port)extLd_out_out_din");
    sc_trace(mVcdFile, extLd_out_out_full_n, "(port)extLd_out_out_full_n");
    sc_trace(mVcdFile, extLd_out_out_write, "(port)extLd_out_out_write");
    sc_trace(mVcdFile, extLd_out_out1_din, "(port)extLd_out_out1_din");
    sc_trace(mVcdFile, extLd_out_out1_full_n, "(port)extLd_out_out1_full_n");
    sc_trace(mVcdFile, extLd_out_out1_write, "(port)extLd_out_out1_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, n_blk_n, "n_blk_n");
    sc_trace(mVcdFile, sorted_copy1_0_blk_n, "sorted_copy1_0_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, sorted_copy1_1_blk_n, "sorted_copy1_1_blk_n");
    sc_trace(mVcdFile, val_assign7_out_out_blk_n, "val_assign7_out_out_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln34_fu_145_p2, "icmp_ln34_fu_145_p2");
    sc_trace(mVcdFile, extLd_out_out_blk_n, "extLd_out_out_blk_n");
    sc_trace(mVcdFile, extLd_out_out1_blk_n, "extLd_out_out1_blk_n");
    sc_trace(mVcdFile, n_read_reg_162, "n_read_reg_162");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, i_fu_150_p2, "i_fu_150_p2");
    sc_trace(mVcdFile, i_reg_173, "i_reg_173");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, zext_ln35_fu_156_p1, "zext_ln35_fu_156_p1");
    sc_trace(mVcdFile, zext_ln35_reg_178, "zext_ln35_reg_178");
    sc_trace(mVcdFile, sorted_0_load_reg_193, "sorted_0_load_reg_193");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, previous_frequency_reg_199, "previous_frequency_reg_199");
    sc_trace(mVcdFile, i_0_i_reg_134, "i_0_i_reg_134");
    sc_trace(mVcdFile, ap_block_state4, "ap_block_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Loop_copy_sorted_pro::~Loop_copy_sorted_pro() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Loop_copy_sorted_pro::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
                    !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, n_empty_n.read())))) {
        i_0_i_reg_134 = ap_const_lv9_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read())))) {
        i_0_i_reg_134 = i_reg_173.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        i_reg_173 = i_fu_150_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, n_empty_n.read())))) {
        n_read_reg_162 = n_dout.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        previous_frequency_reg_199 = sorted_1_q0.read();
        sorted_0_load_reg_193 = sorted_0_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))) && esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_0))) {
        zext_ln35_reg_178 = zext_ln35_fu_156_p1.read();
    }
}

void Loop_copy_sorted_pro::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Loop_copy_sorted_pro::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Loop_copy_sorted_pro::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Loop_copy_sorted_pro::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void Loop_copy_sorted_pro::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, n_empty_n.read()));
}

void Loop_copy_sorted_pro::thread_ap_block_state2() {
    ap_block_state2 = ((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read())));
}

void Loop_copy_sorted_pro::thread_ap_block_state4() {
    ap_block_state4 = (esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read()));
}

void Loop_copy_sorted_pro::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Loop_copy_sorted_pro::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void Loop_copy_sorted_pro::thread_extLd_out_out1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1))) {
        extLd_out_out1_blk_n = extLd_out_out1_full_n.read();
    } else {
        extLd_out_out1_blk_n = ap_const_logic_1;
    }
}

void Loop_copy_sorted_pro::thread_extLd_out_out1_din() {
    extLd_out_out1_din = n_read_reg_162.read();
}

void Loop_copy_sorted_pro::thread_extLd_out_out1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        extLd_out_out1_write = ap_const_logic_1;
    } else {
        extLd_out_out1_write = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_extLd_out_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1))) {
        extLd_out_out_blk_n = extLd_out_out_full_n.read();
    } else {
        extLd_out_out_blk_n = ap_const_logic_1;
    }
}

void Loop_copy_sorted_pro::thread_extLd_out_out_din() {
    extLd_out_out_din = n_read_reg_162.read();
}

void Loop_copy_sorted_pro::thread_extLd_out_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        extLd_out_out_write = ap_const_logic_1;
    } else {
        extLd_out_out_write = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_i_fu_150_p2() {
    i_fu_150_p2 = (!i_0_i_reg_134.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_0_i_reg_134.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void Loop_copy_sorted_pro::thread_icmp_ln34_fu_145_p2() {
    icmp_ln34_fu_145_p2 = (!i_0_i_reg_134.read().is_01() || !n_read_reg_162.read().is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_134.read() == n_read_reg_162.read());
}

void Loop_copy_sorted_pro::thread_internal_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_n_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        n_blk_n = n_empty_n.read();
    } else {
        n_blk_n = ap_const_logic_1;
    }
}

void Loop_copy_sorted_pro::thread_n_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, n_empty_n.read())))) {
        n_read = ap_const_logic_1;
    } else {
        n_read = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void Loop_copy_sorted_pro::thread_sorted_0_address0() {
    sorted_0_address0 =  (sc_lv<8>) (zext_ln35_fu_156_p1.read());
}

void Loop_copy_sorted_pro::thread_sorted_0_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        sorted_0_ce0 = ap_const_logic_1;
    } else {
        sorted_0_ce0 = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_sorted_1_address0() {
    sorted_1_address0 =  (sc_lv<8>) (zext_ln35_fu_156_p1.read());
}

void Loop_copy_sorted_pro::thread_sorted_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        sorted_1_ce0 = ap_const_logic_1;
    } else {
        sorted_1_ce0 = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_sorted_copy1_0_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sorted_copy1_0_blk_n = sorted_copy1_0_full_n.read();
    } else {
        sorted_copy1_0_blk_n = ap_const_logic_1;
    }
}

void Loop_copy_sorted_pro::thread_sorted_copy1_0_din() {
    sorted_copy1_0_din = sorted_0_load_reg_193.read();
}

void Loop_copy_sorted_pro::thread_sorted_copy1_0_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read())))) {
        sorted_copy1_0_write = ap_const_logic_1;
    } else {
        sorted_copy1_0_write = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_sorted_copy1_1_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sorted_copy1_1_blk_n = sorted_copy1_1_full_n.read();
    } else {
        sorted_copy1_1_blk_n = ap_const_logic_1;
    }
}

void Loop_copy_sorted_pro::thread_sorted_copy1_1_din() {
    sorted_copy1_1_din = previous_frequency_reg_199.read();
}

void Loop_copy_sorted_pro::thread_sorted_copy1_1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read())))) {
        sorted_copy1_1_write = ap_const_logic_1;
    } else {
        sorted_copy1_1_write = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_sorted_copy2_value_V_address0() {
    sorted_copy2_value_V_address0 =  (sc_lv<8>) (zext_ln35_reg_178.read());
}

void Loop_copy_sorted_pro::thread_sorted_copy2_value_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read())))) {
        sorted_copy2_value_V_ce0 = ap_const_logic_1;
    } else {
        sorted_copy2_value_V_ce0 = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_sorted_copy2_value_V_d0() {
    sorted_copy2_value_V_d0 = sorted_0_load_reg_193.read();
}

void Loop_copy_sorted_pro::thread_sorted_copy2_value_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read())))) {
        sorted_copy2_value_V_we0 = ap_const_logic_1;
    } else {
        sorted_copy2_value_V_we0 = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_start_out() {
    start_out = real_start.read();
}

void Loop_copy_sorted_pro::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_val_assign7_out_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1))) {
        val_assign7_out_out_blk_n = val_assign7_out_out_full_n.read();
    } else {
        val_assign7_out_out_blk_n = ap_const_logic_1;
    }
}

void Loop_copy_sorted_pro::thread_val_assign7_out_out_din() {
    val_assign7_out_out_din = n_read_reg_162.read();
}

void Loop_copy_sorted_pro::thread_val_assign7_out_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
         !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
        val_assign7_out_out_write = ap_const_logic_1;
    } else {
        val_assign7_out_out_write = ap_const_logic_0;
    }
}

void Loop_copy_sorted_pro::thread_zext_ln35_fu_156_p1() {
    zext_ln35_fu_156_p1 = esl_zext<64,9>(i_0_i_reg_134.read());
}

void Loop_copy_sorted_pro::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, n_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !((esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, val_assign7_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, extLd_out_out1_full_n.read()))) && esl_seteq<1,1,1>(icmp_ln34_fu_145_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_0_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, sorted_copy1_1_full_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

