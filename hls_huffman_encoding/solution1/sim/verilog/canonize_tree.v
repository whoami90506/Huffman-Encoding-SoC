// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canonize_tree (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        sorted_value_V_address0,
        sorted_value_V_ce0,
        sorted_value_V_q0,
        val_assign6_loc_dout,
        val_assign6_loc_empty_n,
        val_assign6_loc_read,
        codeword_length_histogram_V_address0,
        codeword_length_histogram_V_ce0,
        codeword_length_histogram_V_q0,
        symbol_bits_V_address0,
        symbol_bits_V_ce0,
        symbol_bits_V_we0,
        symbol_bits_V_d0
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
output  [7:0] sorted_value_V_address0;
output   sorted_value_V_ce0;
input  [8:0] sorted_value_V_q0;
input  [8:0] val_assign6_loc_dout;
input   val_assign6_loc_empty_n;
output   val_assign6_loc_read;
output  [5:0] codeword_length_histogram_V_address0;
output   codeword_length_histogram_V_ce0;
input  [8:0] codeword_length_histogram_V_q0;
output  [7:0] symbol_bits_V_address0;
output   symbol_bits_V_ce0;
output   symbol_bits_V_we0;
output  [4:0] symbol_bits_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg sorted_value_V_ce0;
reg val_assign6_loc_read;
reg codeword_length_histogram_V_ce0;
reg[7:0] symbol_bits_V_address0;
reg symbol_bits_V_ce0;
reg symbol_bits_V_we0;
reg[4:0] symbol_bits_V_d0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    val_assign6_loc_blk_n;
reg   [8:0] val_assign6_loc_read_reg_244;
reg    ap_block_state1;
wire   [8:0] i_fu_174_p2;
wire    ap_CS_fsm_state2;
wire   [8:0] k_fu_195_p2;
reg   [8:0] k_reg_267;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln879_fu_201_p2;
reg   [0:0] icmp_ln879_reg_272;
wire   [0:0] icmp_ln21_fu_190_p2;
wire   [8:0] length_V_fu_207_p2;
reg   [8:0] length_V_reg_276;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln879_4_fu_218_p2;
reg   [8:0] sorted_value_V_load_reg_299;
wire    ap_CS_fsm_state6;
wire   [8:0] count_V_2_fu_229_p2;
reg   [8:0] count_V_2_reg_304;
reg   [8:0] i_0_i_i_reg_116;
wire   [0:0] icmp_ln11_fu_168_p2;
reg   [8:0] p_066_0_i_i_reg_127;
wire    ap_CS_fsm_state7;
reg   [8:0] i_op_assign_reg_139;
reg   [8:0] t_V_5_reg_151;
wire   [63:0] zext_ln12_fu_180_p1;
wire   [63:0] zext_ln544_fu_213_p1;
wire   [63:0] zext_ln32_fu_224_p1;
wire   [63:0] zext_ln544_9_fu_235_p1;
reg   [8:0] length_V_1_fu_58;
wire   [4:0] trunc_ln209_fu_239_p1;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
end

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
        end else if (((icmp_ln21_fu_190_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((val_assign6_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_reg_116 <= 9'd0;
    end else if (((icmp_ln11_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_i_reg_116 <= i_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_op_assign_reg_139 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_op_assign_reg_139 <= k_reg_267;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln879_4_fu_218_p2 == 1'd1) & (icmp_ln879_reg_272 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln879_4_fu_218_p2 == 1'd0) & (icmp_ln879_reg_272 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
        length_V_1_fu_58 <= length_V_reg_276;
    end else if (((icmp_ln11_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        length_V_1_fu_58 <= 9'd64;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_066_0_i_i_reg_127 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        p_066_0_i_i_reg_127 <= count_V_2_reg_304;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_4_fu_218_p2 == 1'd0) & (icmp_ln879_reg_272 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_V_5_reg_151 <= codeword_length_histogram_V_q0;
    end else if (((icmp_ln21_fu_190_p2 == 1'd0) & (icmp_ln879_fu_201_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        t_V_5_reg_151 <= p_066_0_i_i_reg_127;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        count_V_2_reg_304 <= count_V_2_fu_229_p2;
        sorted_value_V_load_reg_299 <= sorted_value_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln21_fu_190_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln879_reg_272 <= icmp_ln879_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_reg_267 <= k_fu_195_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        length_V_reg_276 <= length_V_fu_207_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((val_assign6_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        val_assign6_loc_read_reg_244 <= val_assign6_loc_dout;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_190_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((icmp_ln21_fu_190_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        codeword_length_histogram_V_ce0 = 1'b1;
    end else begin
        codeword_length_histogram_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sorted_value_V_ce0 = 1'b1;
    end else begin
        sorted_value_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        symbol_bits_V_address0 = zext_ln544_9_fu_235_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        symbol_bits_V_address0 = zext_ln12_fu_180_p1;
    end else begin
        symbol_bits_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7))) begin
        symbol_bits_V_ce0 = 1'b1;
    end else begin
        symbol_bits_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        symbol_bits_V_d0 = trunc_ln209_fu_239_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        symbol_bits_V_d0 = 5'd0;
    end else begin
        symbol_bits_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((icmp_ln11_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        symbol_bits_V_we0 = 1'b1;
    end else begin
        symbol_bits_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        val_assign6_loc_blk_n = val_assign6_loc_empty_n;
    end else begin
        val_assign6_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((val_assign6_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        val_assign6_loc_read = 1'b1;
    end else begin
        val_assign6_loc_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((val_assign6_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln11_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln21_fu_190_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln21_fu_190_p2 == 1'd0) & (icmp_ln879_fu_201_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & ((icmp_ln879_4_fu_218_p2 == 1'd0) | (icmp_ln879_reg_272 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((val_assign6_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign codeword_length_histogram_V_address0 = zext_ln544_fu_213_p1;

assign count_V_2_fu_229_p2 = ($signed(9'd511) + $signed(t_V_5_reg_151));

assign i_fu_174_p2 = (i_0_i_i_reg_116 + 9'd1);

assign icmp_ln11_fu_168_p2 = ((i_0_i_i_reg_116 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln21_fu_190_p2 = ((i_op_assign_reg_139 == val_assign6_loc_read_reg_244) ? 1'b1 : 1'b0);

assign icmp_ln879_4_fu_218_p2 = ((codeword_length_histogram_V_q0 == 9'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_201_p2 = ((p_066_0_i_i_reg_127 == 9'd0) ? 1'b1 : 1'b0);

assign k_fu_195_p2 = (i_op_assign_reg_139 + 9'd1);

assign length_V_fu_207_p2 = ($signed(length_V_1_fu_58) + $signed(9'd511));

assign sorted_value_V_address0 = zext_ln32_fu_224_p1;

assign trunc_ln209_fu_239_p1 = length_V_1_fu_58[4:0];

assign zext_ln12_fu_180_p1 = i_0_i_i_reg_116;

assign zext_ln32_fu_224_p1 = i_op_assign_reg_139;

assign zext_ln544_9_fu_235_p1 = sorted_value_V_load_reg_299;

assign zext_ln544_fu_213_p1 = length_V_fu_207_p2;

endmodule //canonize_tree
