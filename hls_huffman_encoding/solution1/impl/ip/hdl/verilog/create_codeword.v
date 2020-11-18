// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module create_codeword (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        symbol_bits_V_address0,
        symbol_bits_V_ce0,
        symbol_bits_V_q0,
        codeword_length_histogram_V_address0,
        codeword_length_histogram_V_ce0,
        codeword_length_histogram_V_q0,
        encoding_V_TDATA,
        encoding_V_TVALID,
        encoding_V_TREADY
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_pp0_stage0 = 9'd2;
parameter    ap_ST_fsm_state5 = 9'd4;
parameter    ap_ST_fsm_pp1_stage0 = 9'd8;
parameter    ap_ST_fsm_pp1_stage1 = 9'd16;
parameter    ap_ST_fsm_pp1_stage2 = 9'd32;
parameter    ap_ST_fsm_pp1_stage3 = 9'd64;
parameter    ap_ST_fsm_pp1_stage4 = 9'd128;
parameter    ap_ST_fsm_state12 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] symbol_bits_V_address0;
output   symbol_bits_V_ce0;
input  [4:0] symbol_bits_V_q0;
output  [5:0] codeword_length_histogram_V_address0;
output   codeword_length_histogram_V_ce0;
input  [8:0] codeword_length_histogram_V_q0;
output  [31:0] encoding_V_TDATA;
output   encoding_V_TVALID;
input   encoding_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg symbol_bits_V_ce0;
reg codeword_length_histogram_V_ce0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    encoding_V_TDATA_blk_n;
wire    ap_CS_fsm_pp1_stage4;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_pp1_stage4;
reg   [0:0] icmp_ln24_reg_348;
reg   [0:0] icmp_ln883_reg_370;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [26:0] p_094_0_reg_135;
reg   [4:0] i_0_reg_148;
reg   [8:0] i1_0_reg_159;
wire   [0:0] icmp_ln16_fu_170_p2;
reg   [0:0] icmp_ln16_reg_319;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln16_reg_319_pp0_iter1_reg;
wire   [4:0] i_fu_176_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] zext_ln19_fu_182_p1;
reg   [63:0] zext_ln19_reg_328;
reg   [63:0] zext_ln19_reg_328_pp0_iter1_reg;
reg   [8:0] codeword_length_hist_1_reg_338;
wire   [26:0] temp_V_fu_200_p3;
reg    ap_enable_reg_pp0_iter2;
wire   [0:0] icmp_ln24_fu_208_p2;
wire    ap_block_state6_pp1_stage0_iter0;
wire    ap_block_state11_pp1_stage0_iter1;
reg    ap_block_state11_io;
reg    ap_block_pp1_stage0_11001;
wire   [8:0] i_4_fu_214_p2;
reg   [8:0] i_4_reg_352;
reg   [4:0] length_V_reg_362;
wire    ap_CS_fsm_pp1_stage1;
wire    ap_block_state7_pp1_stage1_iter0;
wire    ap_block_pp1_stage1_11001;
wire   [0:0] icmp_ln883_fu_225_p2;
wire    ap_CS_fsm_pp1_stage2;
wire    ap_block_state8_pp1_stage2_iter0;
wire    ap_block_pp1_stage2_11001;
reg   [4:0] first_codeword_V_add_1_reg_374;
wire   [26:0] first_codeword_V_q0;
reg   [26:0] out_reversed_V_1_reg_379;
wire    ap_CS_fsm_pp1_stage3;
wire    ap_block_state9_pp1_stage3_iter0;
wire    ap_block_pp1_stage3_11001;
reg   [26:0] p_Result_s_fu_234_p4;
reg   [26:0] p_Result_s_reg_384;
wire   [5:0] ret_V_fu_247_p2;
reg   [5:0] ret_V_reg_390;
wire   [2:0] sub_ln556_fu_257_p2;
reg   [2:0] sub_ln556_reg_396;
wire   [31:0] zext_ln209_fu_309_p1;
wire    ap_block_state10_pp1_stage4_iter0;
reg    ap_predicate_op68_write_state10;
reg    ap_predicate_op70_write_state10;
reg    ap_block_state10_io;
reg    ap_block_pp1_stage4_11001;
wire   [26:0] add_ln700_fu_314_p2;
reg   [26:0] add_ln700_reg_406;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_state5;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state6;
reg    ap_block_pp1_stage4_subdone;
reg   [4:0] first_codeword_V_address0;
reg    first_codeword_V_ce0;
reg    first_codeword_V_we0;
reg   [26:0] first_codeword_V_d0;
reg   [8:0] ap_phi_mux_i1_0_phi_fu_163_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_fu_220_p1;
wire   [63:0] zext_ln544_fu_230_p1;
wire    ap_block_pp1_stage2;
wire    ap_block_pp1_stage4_01001;
wire   [25:0] trunc_ln1503_fu_190_p1;
wire   [25:0] zext_ln1503_fu_187_p1;
wire   [25:0] add_ln1503_fu_194_p2;
wire    ap_block_pp1_stage3;
wire   [5:0] zext_ln215_fu_244_p1;
wire   [2:0] trunc_ln790_fu_253_p1;
wire   [26:0] zext_ln556_fu_270_p1;
wire   [26:0] zext_ln808_fu_278_p1;
wire   [26:0] r_V_fu_273_p2;
wire   [26:0] lshr_ln808_fu_281_p2;
wire   [0:0] p_Result_1_fu_263_p3;
wire   [21:0] trunc_ln796_fu_286_p1;
wire   [21:0] trunc_ln796_1_fu_290_p1;
wire   [21:0] select_ln796_fu_294_p3;
wire   [26:0] tmp_2_fu_302_p3;
wire    ap_CS_fsm_state12;
wire    regslice_both_encoding_V_U_apdone_blk;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp1_stage1_subdone;
wire    ap_block_pp1_stage2_subdone;
wire    ap_block_pp1_stage3_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg   [31:0] encoding_V_TDATA_int;
reg    encoding_V_TVALID_int;
wire    encoding_V_TREADY_int;
wire    regslice_both_encoding_V_U_vld_out;
reg    ap_condition_302;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

create_codeword_fmb6 #(
    .DataWidth( 27 ),
    .AddressRange( 27 ),
    .AddressWidth( 5 ))
first_codeword_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(first_codeword_V_address0),
    .ce0(first_codeword_V_ce0),
    .we0(first_codeword_V_we0),
    .d0(first_codeword_V_d0),
    .q0(first_codeword_V_q0)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_encoding_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(encoding_V_TDATA_int),
    .vld_in(encoding_V_TVALID_int),
    .ack_in(encoding_V_TREADY_int),
    .data_out(encoding_V_TDATA),
    .vld_out(regslice_both_encoding_V_U_vld_out),
    .ack_out(encoding_V_TREADY),
    .apdone_blk(regslice_both_encoding_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((regslice_both_encoding_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state12))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state6))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b0 == ap_block_pp1_stage4_subdone) & (1'b1 == ap_CS_fsm_pp1_stage4)))) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i1_0_reg_159 <= 9'd0;
    end else if (((icmp_ln24_reg_348 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i1_0_reg_159 <= i_4_reg_352;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_148 <= 5'd0;
    end else if (((icmp_ln16_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_148 <= i_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                p_094_0_reg_135[1] <= 1'b0;
        p_094_0_reg_135[2] <= 1'b0;
        p_094_0_reg_135[3] <= 1'b0;
        p_094_0_reg_135[4] <= 1'b0;
        p_094_0_reg_135[5] <= 1'b0;
        p_094_0_reg_135[6] <= 1'b0;
        p_094_0_reg_135[7] <= 1'b0;
        p_094_0_reg_135[8] <= 1'b0;
        p_094_0_reg_135[9] <= 1'b0;
        p_094_0_reg_135[10] <= 1'b0;
        p_094_0_reg_135[11] <= 1'b0;
        p_094_0_reg_135[12] <= 1'b0;
        p_094_0_reg_135[13] <= 1'b0;
        p_094_0_reg_135[14] <= 1'b0;
        p_094_0_reg_135[15] <= 1'b0;
        p_094_0_reg_135[16] <= 1'b0;
        p_094_0_reg_135[17] <= 1'b0;
        p_094_0_reg_135[18] <= 1'b0;
        p_094_0_reg_135[19] <= 1'b0;
        p_094_0_reg_135[20] <= 1'b0;
        p_094_0_reg_135[21] <= 1'b0;
        p_094_0_reg_135[22] <= 1'b0;
        p_094_0_reg_135[23] <= 1'b0;
        p_094_0_reg_135[24] <= 1'b0;
        p_094_0_reg_135[25] <= 1'b0;
        p_094_0_reg_135[26] <= 1'b0;
    end else if (((icmp_ln16_reg_319_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
                p_094_0_reg_135[26 : 1] <= temp_V_fu_200_p3[26 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln883_reg_370 == 1'd0) & (icmp_ln24_reg_348 == 1'd0) & (1'b0 == ap_block_pp1_stage4_11001) & (1'b1 == ap_CS_fsm_pp1_stage4))) begin
        add_ln700_reg_406 <= add_ln700_fu_314_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_reg_319 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        codeword_length_hist_1_reg_338 <= codeword_length_histogram_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln883_fu_225_p2 == 1'd0) & (icmp_ln24_reg_348 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage2) & (1'b0 == ap_block_pp1_stage2_11001))) begin
        first_codeword_V_add_1_reg_374 <= zext_ln544_fu_230_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_4_reg_352 <= i_4_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln16_reg_319 <= icmp_ln16_fu_170_p2;
        icmp_ln16_reg_319_pp0_iter1_reg <= icmp_ln16_reg_319;
        zext_ln19_reg_328_pp0_iter1_reg[4 : 0] <= zext_ln19_reg_328[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln24_reg_348 <= icmp_ln24_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_reg_348 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage2) & (1'b0 == ap_block_pp1_stage2_11001))) begin
        icmp_ln883_reg_370 <= icmp_ln883_fu_225_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln24_reg_348 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage1) & (1'b0 == ap_block_pp1_stage1_11001))) begin
        length_V_reg_362 <= symbol_bits_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln883_reg_370 == 1'd0) & (icmp_ln24_reg_348 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage3) & (1'b0 == ap_block_pp1_stage3_11001))) begin
        out_reversed_V_1_reg_379 <= first_codeword_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln883_reg_370 == 1'd0) & (icmp_ln24_reg_348 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage3) & (1'b0 == ap_block_pp1_stage3_11001))) begin
        p_Result_s_reg_384 <= p_Result_s_fu_234_p4;
        ret_V_reg_390 <= ret_V_fu_247_p2;
        sub_ln556_reg_396 <= sub_ln556_fu_257_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        zext_ln19_reg_328[4 : 0] <= zext_ln19_fu_182_p1[4 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln16_fu_170_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln24_fu_208_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_encoding_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (icmp_ln24_reg_348 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_i1_0_phi_fu_163_p4 = i_4_reg_352;
    end else begin
        ap_phi_mux_i1_0_phi_fu_163_p4 = i1_0_reg_159;
    end
end

always @ (*) begin
    if (((regslice_both_encoding_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        codeword_length_histogram_V_ce0 = 1'b1;
    end else begin
        codeword_length_histogram_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp1_stage0) & (icmp_ln883_reg_370 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b0 == ap_block_pp1_stage0) & (icmp_ln883_reg_370 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((icmp_ln883_reg_370 == 1'd1) & (icmp_ln24_reg_348 == 1'd0) & (1'b0 == ap_block_pp1_stage4) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage4)) | ((icmp_ln883_reg_370 == 1'd0) & (icmp_ln24_reg_348 == 1'd0) & (1'b0 == ap_block_pp1_stage4) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage4)))) begin
        encoding_V_TDATA_blk_n = encoding_V_TREADY_int;
    end else begin
        encoding_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_302)) begin
        if ((ap_predicate_op70_write_state10 == 1'b1)) begin
            encoding_V_TDATA_int = 32'd0;
        end else if ((ap_predicate_op68_write_state10 == 1'b1)) begin
            encoding_V_TDATA_int = zext_ln209_fu_309_p1;
        end else begin
            encoding_V_TDATA_int = 'bx;
        end
    end else begin
        encoding_V_TDATA_int = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op70_write_state10 == 1'b1) & (1'b0 == ap_block_pp1_stage4_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage4)) | ((ap_predicate_op68_write_state10 == 1'b1) & (1'b0 == ap_block_pp1_stage4_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage4)))) begin
        encoding_V_TVALID_int = 1'b1;
    end else begin
        encoding_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        first_codeword_V_address0 = first_codeword_V_add_1_reg_374;
    end else if (((1'b0 == ap_block_pp1_stage2) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage2))) begin
        first_codeword_V_address0 = zext_ln544_fu_230_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        first_codeword_V_address0 = zext_ln19_reg_328_pp0_iter1_reg;
    end else begin
        first_codeword_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage2) & (1'b0 == ap_block_pp1_stage2_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        first_codeword_V_ce0 = 1'b1;
    end else begin
        first_codeword_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        first_codeword_V_d0 = add_ln700_reg_406;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        first_codeword_V_d0 = p_094_0_reg_135;
    end else begin
        first_codeword_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln883_reg_370 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((icmp_ln16_reg_319_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        first_codeword_V_we0 = 1'b1;
    end else begin
        first_codeword_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        symbol_bits_V_ce0 = 1'b1;
    end else begin
        symbol_bits_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln16_fu_170_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln16_fu_170_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((icmp_ln24_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1)) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage1;
            end else if (((icmp_ln24_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage1 : begin
            if ((1'b0 == ap_block_pp1_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage1;
            end
        end
        ap_ST_fsm_pp1_stage2 : begin
            if ((1'b0 == ap_block_pp1_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage2;
            end
        end
        ap_ST_fsm_pp1_stage3 : begin
            if ((1'b0 == ap_block_pp1_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage3;
            end
        end
        ap_ST_fsm_pp1_stage4 : begin
            if ((1'b0 == ap_block_pp1_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage4;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((regslice_both_encoding_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1503_fu_194_p2 = (trunc_ln1503_fu_190_p1 + zext_ln1503_fu_187_p1);

assign add_ln700_fu_314_p2 = (27'd1 + out_reversed_V_1_reg_379);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp1_stage1 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp1_stage2 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp1_stage3 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp1_stage4 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((1'b1 == ap_block_state11_io) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((1'b1 == ap_block_state11_io) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

assign ap_block_pp1_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage4_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage4_11001 = ((1'b1 == ap_block_state10_io) & (ap_enable_reg_pp1_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage4_subdone = ((1'b1 == ap_block_state10_io) & (ap_enable_reg_pp1_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state10_io = (((encoding_V_TREADY_int == 1'b0) & (ap_predicate_op70_write_state10 == 1'b1)) | ((encoding_V_TREADY_int == 1'b0) & (ap_predicate_op68_write_state10 == 1'b1)));
end

assign ap_block_state10_pp1_stage4_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_io = (((icmp_ln883_reg_370 == 1'd1) & (encoding_V_TREADY_int == 1'b0)) | ((icmp_ln883_reg_370 == 1'd0) & (encoding_V_TREADY_int == 1'b0)));
end

assign ap_block_state11_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp1_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp1_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage3_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_302 = ((1'b0 == ap_block_pp1_stage4_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage4));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

always @ (*) begin
    ap_predicate_op68_write_state10 = ((icmp_ln883_reg_370 == 1'd0) & (icmp_ln24_reg_348 == 1'd0));
end

always @ (*) begin
    ap_predicate_op70_write_state10 = ((icmp_ln883_reg_370 == 1'd1) & (icmp_ln24_reg_348 == 1'd0));
end

assign codeword_length_histogram_V_address0 = zext_ln19_fu_182_p1;

assign encoding_V_TVALID = regslice_both_encoding_V_U_vld_out;

assign i_4_fu_214_p2 = (ap_phi_mux_i1_0_phi_fu_163_p4 + 9'd1);

assign i_fu_176_p2 = (i_0_reg_148 + 5'd1);

assign icmp_ln16_fu_170_p2 = ((i_0_reg_148 == 5'd27) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_208_p2 = ((ap_phi_mux_i1_0_phi_fu_163_p4 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln883_fu_225_p2 = ((length_V_reg_362 == 5'd0) ? 1'b1 : 1'b0);

assign lshr_ln808_fu_281_p2 = p_Result_s_reg_384 >> zext_ln808_fu_278_p1;

assign p_Result_1_fu_263_p3 = ret_V_reg_390[32'd5];

integer ap_tvar_int_0;

always @ (first_codeword_V_q0) begin
    for (ap_tvar_int_0 = 27 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 26 - 0) begin
            p_Result_s_fu_234_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_234_p4[ap_tvar_int_0] = first_codeword_V_q0[26 - ap_tvar_int_0];
        end
    end
end

assign r_V_fu_273_p2 = p_Result_s_reg_384 << zext_ln556_fu_270_p1;

assign ret_V_fu_247_p2 = (6'd27 - zext_ln215_fu_244_p1);

assign select_ln796_fu_294_p3 = ((p_Result_1_fu_263_p3[0:0] === 1'b1) ? trunc_ln796_fu_286_p1 : trunc_ln796_1_fu_290_p1);

assign sub_ln556_fu_257_p2 = (3'd0 - trunc_ln790_fu_253_p1);

assign symbol_bits_V_address0 = zext_ln26_fu_220_p1;

assign temp_V_fu_200_p3 = {{add_ln1503_fu_194_p2}, {1'd0}};

assign tmp_2_fu_302_p3 = {{select_ln796_fu_294_p3}, {length_V_reg_362}};

assign trunc_ln1503_fu_190_p1 = p_094_0_reg_135[25:0];

assign trunc_ln790_fu_253_p1 = ret_V_fu_247_p2[2:0];

assign trunc_ln796_1_fu_290_p1 = lshr_ln808_fu_281_p2[21:0];

assign trunc_ln796_fu_286_p1 = r_V_fu_273_p2[21:0];

assign zext_ln1503_fu_187_p1 = codeword_length_hist_1_reg_338;

assign zext_ln19_fu_182_p1 = i_0_reg_148;

assign zext_ln209_fu_309_p1 = tmp_2_fu_302_p3;

assign zext_ln215_fu_244_p1 = length_V_reg_362;

assign zext_ln26_fu_220_p1 = ap_phi_mux_i1_0_phi_fu_163_p4;

assign zext_ln544_fu_230_p1 = length_V_reg_362;

assign zext_ln556_fu_270_p1 = sub_ln556_reg_396;

assign zext_ln808_fu_278_p1 = ret_V_reg_390;

always @ (posedge ap_clk) begin
    p_094_0_reg_135[0] <= 1'b0;
    zext_ln19_reg_328[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln19_reg_328_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //create_codeword