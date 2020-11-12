// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __huffman_encoding_g8j__HH__
#define __huffman_encoding_g8j__HH__
#include "ACMP_lshr.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int OPCODE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(huffman_encoding_g8j) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_lshr<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_lshr_U;

    SC_CTOR(huffman_encoding_g8j):  ACMP_lshr_U ("ACMP_lshr_U") {
        ACMP_lshr_U.clk(clk);
        ACMP_lshr_U.reset(reset);
        ACMP_lshr_U.ce(ce);
        ACMP_lshr_U.din0(din0);
        ACMP_lshr_U.din1(din1);
        ACMP_lshr_U.dout(dout);

    }

};

#endif //
