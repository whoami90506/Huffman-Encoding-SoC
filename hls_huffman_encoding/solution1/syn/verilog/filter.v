// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module filter (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        in_value_V_TDATA,
        in_value_V_TVALID,
        in_value_V_TREADY,
        in_frequency_V_TDATA,
        in_frequency_V_TVALID,
        in_frequency_V_TREADY,
        out_value_V_address0,
        out_value_V_ce0,
        out_value_V_we0,
        out_value_V_d0,
        out_frequency_V_address0,
        out_frequency_V_ce0,
        out_frequency_V_we0,
        out_frequency_V_d0,
        n_out_din,
        n_out_full_n,
        n_out_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] in_value_V_TDATA;
input   in_value_V_TVALID;
output   in_value_V_TREADY;
input  [31:0] in_frequency_V_TDATA;
input   in_frequency_V_TVALID;
output   in_frequency_V_TREADY;
output  [7:0] out_value_V_address0;
output   out_value_V_ce0;
output   out_value_V_we0;
output  [8:0] out_value_V_d0;
output  [7:0] out_frequency_V_address0;
output   out_frequency_V_ce0;
output   out_frequency_V_we0;
output  [31:0] out_frequency_V_d0;
output  [8:0] n_out_din;
input   n_out_full_n;
output   n_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg in_value_V_TREADY;
reg in_frequency_V_TREADY;
reg out_value_V_ce0;
reg out_value_V_we0;
reg out_frequency_V_ce0;
reg out_frequency_V_we0;
reg n_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    in_value_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln11_fu_130_p2;
wire   [0:0] icmp_ln883_fu_142_p2;
reg    in_frequency_V_TDATA_blk_n;
reg    n_out_blk_n;
wire    ap_CS_fsm_state3;
wire   [8:0] i_fu_136_p2;
reg    ap_predicate_op24_read_state2;
reg    ap_block_state2;
reg   [8:0] i_0_i_reg_110;
reg    ap_block_state1;
wire   [63:0] zext_ln544_fu_148_p1;
reg   [8:0] t_V_fu_60;
wire   [8:0] j_V_fu_159_p2;
reg   [2:0] ap_NS_fsm;
wire    regslice_both_in_value_V_U_apdone_blk;
wire   [15:0] in_value_V_TDATA_int;
wire    in_value_V_TVALID_int;
reg    in_value_V_TREADY_int;
wire    regslice_both_in_value_V_U_ack_in;
wire    regslice_both_in_frequency_V_U_apdone_blk;
wire   [31:0] in_frequency_V_TDATA_int;
wire    in_frequency_V_TVALID_int;
reg    in_frequency_V_TREADY_int;
wire    regslice_both_in_frequency_V_U_ack_in;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
end

regslice_both #(
    .DataWidth( 16 ))
regslice_both_in_value_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_value_V_TDATA),
    .vld_in(in_value_V_TVALID),
    .ack_in(regslice_both_in_value_V_U_ack_in),
    .data_out(in_value_V_TDATA_int),
    .vld_out(in_value_V_TVALID_int),
    .ack_out(in_value_V_TREADY_int),
    .apdone_blk(regslice_both_in_value_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_in_frequency_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_frequency_V_TDATA),
    .vld_in(in_frequency_V_TVALID),
    .ack_in(regslice_both_in_frequency_V_U_ack_in),
    .data_out(in_frequency_V_TDATA_int),
    .vld_out(in_frequency_V_TVALID_int),
    .ack_out(in_frequency_V_TREADY_int),
    .apdone_blk(regslice_both_in_frequency_V_U_apdone_blk)
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
        end else if (((n_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_reg_110 <= i_fu_136_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_reg_110 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln883_fu_142_p2 == 1'd0) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_fu_60 <= j_V_fu_159_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_fu_60 <= 9'd0;
    end
end

always @ (*) begin
    if (((n_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_frequency_V_TDATA_blk_n = in_frequency_V_TVALID_int;
    end else begin
        in_frequency_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((in_frequency_V_TVALID == 1'b1) & (regslice_both_in_frequency_V_U_ack_in == 1'b1))) begin
        in_frequency_V_TREADY = 1'b1;
    end else begin
        in_frequency_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_frequency_V_TREADY_int = 1'b1;
    end else begin
        in_frequency_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln883_fu_142_p2 == 1'd0) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_value_V_TDATA_blk_n = in_value_V_TVALID_int;
    end else begin
        in_value_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((in_value_V_TVALID == 1'b1) & (regslice_both_in_value_V_U_ack_in == 1'b1))) begin
        in_value_V_TREADY = 1'b1;
    end else begin
        in_value_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (1'b1 == ap_CS_fsm_state2) & (ap_predicate_op24_read_state2 == 1'b1))) begin
        in_value_V_TREADY_int = 1'b1;
    end else begin
        in_value_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((n_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        n_out_blk_n = n_out_full_n;
    end else begin
        n_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((n_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        n_out_write = 1'b1;
    end else begin
        n_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        out_frequency_V_ce0 = 1'b1;
    end else begin
        out_frequency_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln883_fu_142_p2 == 1'd0) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_frequency_V_we0 = 1'b1;
    end else begin
        out_frequency_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        out_value_V_ce0 = 1'b1;
    end else begin
        out_value_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln883_fu_142_p2 == 1'd0) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_value_V_we0 = 1'b1;
    end else begin
        out_value_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~(((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0))) & (icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((n_out_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = (((in_value_V_TVALID_int == 1'b0) & (ap_predicate_op24_read_state2 == 1'b1)) | ((icmp_ln11_fu_130_p2 == 1'd0) & (in_frequency_V_TVALID_int == 1'b0)));
end

always @ (*) begin
    ap_predicate_op24_read_state2 = ((icmp_ln883_fu_142_p2 == 1'd0) & (icmp_ln11_fu_130_p2 == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign i_fu_136_p2 = (i_0_i_reg_110 + 9'd1);

assign icmp_ln11_fu_130_p2 = ((i_0_i_reg_110 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln883_fu_142_p2 = ((in_frequency_V_TDATA_int == 32'd0) ? 1'b1 : 1'b0);

assign j_V_fu_159_p2 = (9'd1 + t_V_fu_60);

assign n_out_din = t_V_fu_60;

assign out_frequency_V_address0 = zext_ln544_fu_148_p1;

assign out_frequency_V_d0 = in_frequency_V_TDATA_int;

assign out_value_V_address0 = zext_ln544_fu_148_p1;

assign out_value_V_d0 = in_value_V_TDATA_int[8:0];

assign start_out = real_start;

assign zext_ln544_fu_148_p1 = t_V_fu_60;

endmodule //filter
