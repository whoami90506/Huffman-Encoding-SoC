// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module create_tree (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_value_V_address0,
        in_value_V_ce0,
        in_value_V_q0,
        in_frequency_V_address0,
        in_frequency_V_ce0,
        in_frequency_V_q0,
        extLd_loc_dout,
        extLd_loc_empty_n,
        extLd_loc_read,
        parent_V_address0,
        parent_V_ce0,
        parent_V_we0,
        parent_V_d0,
        left_V_address0,
        left_V_ce0,
        left_V_we0,
        left_V_d0,
        right_V_address0,
        right_V_ce0,
        right_V_we0,
        right_V_d0,
        extLd_loc_out_din,
        extLd_loc_out_full_n,
        extLd_loc_out_write
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] in_value_V_address0;
output   in_value_V_ce0;
input  [8:0] in_value_V_q0;
output  [7:0] in_frequency_V_address0;
output   in_frequency_V_ce0;
input  [31:0] in_frequency_V_q0;
input  [8:0] extLd_loc_dout;
input   extLd_loc_empty_n;
output   extLd_loc_read;
output  [7:0] parent_V_address0;
output   parent_V_ce0;
output   parent_V_we0;
output  [8:0] parent_V_d0;
output  [7:0] left_V_address0;
output   left_V_ce0;
output   left_V_we0;
output  [8:0] left_V_d0;
output  [7:0] right_V_address0;
output   right_V_ce0;
output   right_V_we0;
output  [8:0] right_V_d0;
output  [8:0] extLd_loc_out_din;
input   extLd_loc_out_full_n;
output   extLd_loc_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] in_value_V_address0;
reg in_value_V_ce0;
reg[7:0] in_frequency_V_address0;
reg in_frequency_V_ce0;
reg extLd_loc_read;
reg[7:0] parent_V_address0;
reg parent_V_ce0;
reg parent_V_we0;
reg[8:0] parent_V_d0;
reg[7:0] left_V_address0;
reg left_V_ce0;
reg left_V_we0;
reg[8:0] left_V_d0;
reg right_V_ce0;
reg right_V_we0;
reg[8:0] right_V_d0;
reg extLd_loc_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    extLd_loc_blk_n;
reg    extLd_loc_out_blk_n;
wire   [31:0] frequency_V_q0;
reg   [31:0] reg_326;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg   [8:0] reg_331;
reg   [31:0] reg_337;
reg   [8:0] extLd_loc_read_reg_508;
reg    ap_block_state1;
wire   [9:0] add_ln16_fu_346_p2;
reg   [9:0] add_ln16_reg_514;
wire   [0:0] icmp_ln16_fu_356_p2;
reg   [0:0] icmp_ln16_reg_519;
wire    ap_CS_fsm_state2;
wire   [8:0] i_fu_361_p2;
reg   [8:0] i_reg_523;
wire   [63:0] zext_ln544_fu_367_p1;
reg   [63:0] zext_ln544_reg_528;
wire   [0:0] or_ln27_fu_407_p2;
reg   [0:0] or_ln27_reg_548;
wire   [63:0] zext_ln29_fu_413_p1;
reg   [63:0] zext_ln29_reg_552;
reg   [7:0] left_V_addr_reg_559;
wire   [8:0] tree_count_V_fu_418_p2;
reg   [8:0] tree_count_V_reg_564;
wire   [8:0] in_count_V_fu_424_p2;
reg   [8:0] in_count_V_reg_569;
wire   [63:0] zext_ln544_5_fu_430_p1;
reg   [63:0] zext_ln544_5_reg_574;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_441_p2;
reg   [0:0] icmp_ln43_reg_594;
reg   [7:0] frequency_V_address0;
reg    frequency_V_ce0;
reg    frequency_V_we0;
reg   [31:0] frequency_V_d0;
reg   [8:0] t_V_3_reg_233;
reg   [8:0] ap_phi_mux_p_0168_2_i_i_phi_fu_306_p4;
wire    ap_CS_fsm_state6;
reg   [8:0] t_V_reg_245;
reg   [8:0] ap_phi_mux_p_094_2_i_i_phi_fu_318_p4;
reg   [8:0] op_assign_reg_257;
reg   [8:0] ap_phi_mux_t_V_5_phi_fu_273_p4;
reg   [8:0] t_V_5_reg_270;
reg   [8:0] ap_phi_mux_t_V_4_phi_fu_284_p4;
reg   [8:0] t_V_4_reg_281;
reg   [31:0] p_090_0_i_i_reg_292;
wire   [0:0] or_ln43_fu_469_p2;
wire   [8:0] tree_count_V_1_fu_482_p2;
wire   [8:0] in_count_V_1_fu_496_p2;
wire   [63:0] zext_ln544_3_fu_372_p1;
wire   [63:0] zext_ln544_6_fu_435_p1;
wire   [7:0] frequency_V_addr_2_gep_fu_217_p3;
wire   [63:0] zext_ln544_4_fu_503_p1;
wire    ap_CS_fsm_state7;
wire   [31:0] add_ln209_1_fu_475_p2;
wire   [31:0] add_ln209_fu_489_p2;
wire   [9:0] extLd_cast_fu_342_p1;
wire   [9:0] zext_ln243_fu_352_p1;
wire   [0:0] icmp_ln27_1_fu_383_p2;
wire   [0:0] xor_ln27_fu_389_p2;
wire   [0:0] icmp_ln27_fu_378_p2;
wire   [0:0] and_ln27_fu_395_p2;
wire   [0:0] icmp_ln879_fu_401_p2;
wire   [0:0] icmp_ln43_1_fu_446_p2;
wire   [0:0] xor_ln43_fu_452_p2;
wire   [0:0] and_ln43_fu_458_p2;
wire   [0:0] icmp_ln879_2_fu_463_p2;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
end

create_tree_frequibs #(
    .DataWidth( 32 ),
    .AddressRange( 255 ),
    .AddressWidth( 8 ))
frequency_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(frequency_V_address0),
    .ce0(frequency_V_ce0),
    .we0(frequency_V_we0),
    .d0(frequency_V_d0),
    .q0(frequency_V_q0)
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
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        op_assign_reg_257 <= i_reg_523;
    end else if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        op_assign_reg_257 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln16_reg_519 == 1'd1))) begin
        if ((or_ln27_reg_548 == 1'd0)) begin
            p_090_0_i_i_reg_292 <= reg_326;
        end else if ((or_ln27_reg_548 == 1'd1)) begin
            p_090_0_i_i_reg_292 <= reg_337;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_3_reg_233 <= ap_phi_mux_p_0168_2_i_i_phi_fu_306_p4;
    end else if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_3_reg_233 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln16_reg_519 == 1'd1))) begin
        if ((or_ln27_reg_548 == 1'd0)) begin
            t_V_4_reg_281 <= t_V_reg_245;
        end else if ((or_ln27_reg_548 == 1'd1)) begin
            t_V_4_reg_281 <= in_count_V_reg_569;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln16_reg_519 == 1'd1))) begin
        if ((or_ln27_reg_548 == 1'd0)) begin
            t_V_5_reg_270 <= tree_count_V_reg_564;
        end else if ((or_ln27_reg_548 == 1'd1)) begin
            t_V_5_reg_270 <= t_V_3_reg_233;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_245 <= ap_phi_mux_p_094_2_i_i_phi_fu_318_p4;
    end else if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_245 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln16_reg_514 <= add_ln16_fu_346_p2;
        extLd_loc_read_reg_508 <= extLd_loc_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_523 <= i_fu_361_p2;
        icmp_ln16_reg_519 <= icmp_ln16_fu_356_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln16_reg_519 == 1'd1))) begin
        icmp_ln43_reg_594 <= icmp_ln43_fu_441_p2;
        zext_ln544_5_reg_574[8 : 0] <= zext_ln544_5_fu_430_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (or_ln27_fu_407_p2 == 1'd1))) begin
        in_count_V_reg_569 <= in_count_V_fu_424_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        left_V_addr_reg_559 <= zext_ln29_fu_413_p1;
        or_ln27_reg_548 <= or_ln27_fu_407_p2;
        zext_ln29_reg_552[8 : 0] <= zext_ln29_fu_413_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_326 <= frequency_V_q0;
        reg_331 <= in_value_V_q0;
        reg_337 <= in_frequency_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (or_ln27_fu_407_p2 == 1'd0))) begin
        tree_count_V_reg_564 <= tree_count_V_fu_418_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln16_fu_356_p2 == 1'd1))) begin
        zext_ln544_reg_528[8 : 0] <= zext_ln544_fu_367_p1[8 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((or_ln43_fu_469_p2 == 1'd0)) begin
            ap_phi_mux_p_0168_2_i_i_phi_fu_306_p4 = tree_count_V_1_fu_482_p2;
        end else if ((or_ln43_fu_469_p2 == 1'd1)) begin
            ap_phi_mux_p_0168_2_i_i_phi_fu_306_p4 = t_V_5_reg_270;
        end else begin
            ap_phi_mux_p_0168_2_i_i_phi_fu_306_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_0168_2_i_i_phi_fu_306_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((or_ln43_fu_469_p2 == 1'd0)) begin
            ap_phi_mux_p_094_2_i_i_phi_fu_318_p4 = t_V_4_reg_281;
        end else if ((or_ln43_fu_469_p2 == 1'd1)) begin
            ap_phi_mux_p_094_2_i_i_phi_fu_318_p4 = in_count_V_1_fu_496_p2;
        end else begin
            ap_phi_mux_p_094_2_i_i_phi_fu_318_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_094_2_i_i_phi_fu_318_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln16_reg_519 == 1'd1))) begin
        if ((or_ln27_reg_548 == 1'd0)) begin
            ap_phi_mux_t_V_4_phi_fu_284_p4 = t_V_reg_245;
        end else if ((or_ln27_reg_548 == 1'd1)) begin
            ap_phi_mux_t_V_4_phi_fu_284_p4 = in_count_V_reg_569;
        end else begin
            ap_phi_mux_t_V_4_phi_fu_284_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_t_V_4_phi_fu_284_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln16_reg_519 == 1'd1))) begin
        if ((or_ln27_reg_548 == 1'd0)) begin
            ap_phi_mux_t_V_5_phi_fu_273_p4 = tree_count_V_reg_564;
        end else if ((or_ln27_reg_548 == 1'd1)) begin
            ap_phi_mux_t_V_5_phi_fu_273_p4 = t_V_3_reg_233;
        end else begin
            ap_phi_mux_t_V_5_phi_fu_273_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_t_V_5_phi_fu_273_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        extLd_loc_blk_n = extLd_loc_empty_n;
    end else begin
        extLd_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        extLd_loc_out_blk_n = extLd_loc_out_full_n;
    end else begin
        extLd_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        extLd_loc_out_write = 1'b1;
    end else begin
        extLd_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        extLd_loc_read = 1'b1;
    end else begin
        extLd_loc_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd1))) begin
        frequency_V_address0 = frequency_V_addr_2_gep_fu_217_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd0))) begin
        frequency_V_address0 = zext_ln29_reg_552;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        frequency_V_address0 = zext_ln544_5_fu_430_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        frequency_V_address0 = zext_ln544_fu_367_p1;
    end else begin
        frequency_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd1)))) begin
        frequency_V_ce0 = 1'b1;
    end else begin
        frequency_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((or_ln43_fu_469_p2 == 1'd1)) begin
            frequency_V_d0 = add_ln209_fu_489_p2;
        end else if ((or_ln43_fu_469_p2 == 1'd0)) begin
            frequency_V_d0 = add_ln209_1_fu_475_p2;
        end else begin
            frequency_V_d0 = 'bx;
        end
    end else begin
        frequency_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd1)))) begin
        frequency_V_we0 = 1'b1;
    end else begin
        frequency_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        in_frequency_V_address0 = zext_ln544_6_fu_435_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_frequency_V_address0 = zext_ln544_3_fu_372_p1;
    end else begin
        in_frequency_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        in_frequency_V_ce0 = 1'b1;
    end else begin
        in_frequency_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        in_value_V_address0 = zext_ln544_6_fu_435_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_value_V_address0 = zext_ln544_3_fu_372_p1;
    end else begin
        in_value_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        in_value_V_ce0 = 1'b1;
    end else begin
        in_value_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        left_V_address0 = left_V_addr_reg_559;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        left_V_address0 = zext_ln29_fu_413_p1;
    end else begin
        left_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        left_V_ce0 = 1'b1;
    end else begin
        left_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        left_V_d0 = reg_331;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        left_V_d0 = 9'd511;
    end else begin
        left_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (or_ln27_fu_407_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state4) & (or_ln27_reg_548 == 1'd1) & (icmp_ln16_reg_519 == 1'd1)))) begin
        left_V_we0 = 1'b1;
    end else begin
        left_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        parent_V_address0 = zext_ln544_4_fu_503_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        parent_V_address0 = zext_ln544_5_reg_574;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        parent_V_address0 = zext_ln544_reg_528;
    end else begin
        parent_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        parent_V_ce0 = 1'b1;
    end else begin
        parent_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        parent_V_d0 = 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        parent_V_d0 = op_assign_reg_257;
    end else begin
        parent_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state3) & (or_ln27_fu_407_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd0)))) begin
        parent_V_we0 = 1'b1;
    end else begin
        parent_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd1)))) begin
        right_V_ce0 = 1'b1;
    end else begin
        right_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((or_ln43_fu_469_p2 == 1'd1)) begin
            right_V_d0 = reg_331;
        end else if ((or_ln43_fu_469_p2 == 1'd0)) begin
            right_V_d0 = 9'd511;
        end else begin
            right_V_d0 = 'bx;
        end
    end else begin
        right_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state6) & (or_ln43_fu_469_p2 == 1'd1)))) begin
        right_V_we0 = 1'b1;
    end else begin
        right_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln16_fu_356_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln16_fu_346_p2 = ($signed(extLd_cast_fu_342_p1) + $signed(10'd1023));

assign add_ln209_1_fu_475_p2 = (reg_326 + p_090_0_i_i_reg_292);

assign add_ln209_fu_489_p2 = (reg_337 + p_090_0_i_i_reg_292);

assign and_ln27_fu_395_p2 = (xor_ln27_fu_389_p2 & icmp_ln27_fu_378_p2);

assign and_ln43_fu_458_p2 = (xor_ln43_fu_452_p2 & icmp_ln43_reg_594);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((extLd_loc_out_full_n == 1'b0) | (extLd_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign extLd_cast_fu_342_p1 = extLd_loc_dout;

assign extLd_loc_out_din = extLd_loc_dout;

assign frequency_V_addr_2_gep_fu_217_p3 = zext_ln29_reg_552;

assign i_fu_361_p2 = (op_assign_reg_257 + 9'd1);

assign icmp_ln16_fu_356_p2 = (($signed(zext_ln243_fu_352_p1) < $signed(add_ln16_reg_514)) ? 1'b1 : 1'b0);

assign icmp_ln27_1_fu_383_p2 = ((frequency_V_q0 < in_frequency_V_q0) ? 1'b1 : 1'b0);

assign icmp_ln27_fu_378_p2 = ((t_V_reg_245 < extLd_loc_read_reg_508) ? 1'b1 : 1'b0);

assign icmp_ln43_1_fu_446_p2 = ((reg_326 < reg_337) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_441_p2 = ((ap_phi_mux_t_V_4_phi_fu_284_p4 < extLd_loc_read_reg_508) ? 1'b1 : 1'b0);

assign icmp_ln879_2_fu_463_p2 = ((t_V_5_reg_270 == op_assign_reg_257) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_401_p2 = ((t_V_3_reg_233 == op_assign_reg_257) ? 1'b1 : 1'b0);

assign in_count_V_1_fu_496_p2 = (t_V_4_reg_281 + 9'd1);

assign in_count_V_fu_424_p2 = (t_V_reg_245 + 9'd1);

assign or_ln27_fu_407_p2 = (icmp_ln879_fu_401_p2 | and_ln27_fu_395_p2);

assign or_ln43_fu_469_p2 = (icmp_ln879_2_fu_463_p2 | and_ln43_fu_458_p2);

assign right_V_address0 = zext_ln29_reg_552;

assign tree_count_V_1_fu_482_p2 = (t_V_5_reg_270 + 9'd1);

assign tree_count_V_fu_418_p2 = (t_V_3_reg_233 + 9'd1);

assign xor_ln27_fu_389_p2 = (icmp_ln27_1_fu_383_p2 ^ 1'd1);

assign xor_ln43_fu_452_p2 = (icmp_ln43_1_fu_446_p2 ^ 1'd1);

assign zext_ln243_fu_352_p1 = op_assign_reg_257;

assign zext_ln29_fu_413_p1 = op_assign_reg_257;

assign zext_ln544_3_fu_372_p1 = t_V_reg_245;

assign zext_ln544_4_fu_503_p1 = t_V_3_reg_233;

assign zext_ln544_5_fu_430_p1 = ap_phi_mux_t_V_5_phi_fu_273_p4;

assign zext_ln544_6_fu_435_p1 = ap_phi_mux_t_V_4_phi_fu_284_p4;

assign zext_ln544_fu_367_p1 = t_V_3_reg_233;

always @ (posedge ap_clk) begin
    zext_ln544_reg_528[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln29_reg_552[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln544_5_reg_574[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //create_tree
