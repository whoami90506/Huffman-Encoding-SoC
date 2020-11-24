// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_encoding_TDATA "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_data_V.dat"
`define TV_OUT_encoding_TKEEP "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_keep_V.dat"
`define TV_OUT_encoding_TSTRB "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_strb_V.dat"
`define TV_OUT_encoding_TUSER "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_user_V.dat"
`define TV_OUT_encoding_TLAST "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_last_V.dat"
`define TV_OUT_encoding_TID "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_id_V.dat"
`define TV_OUT_encoding_TDEST "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_encoding (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_encoding_TDATA,
    input [4 - 1:0] TRAN_encoding_TKEEP,
    input [4 - 1:0] TRAN_encoding_TSTRB,
    input TRAN_encoding_TUSER,
    input TRAN_encoding_TLAST,
    input TRAN_encoding_TID,
    input TRAN_encoding_TDEST,
    input TRAN_encoding_TVALID,
    output TRAN_encoding_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_encoding_TVALID_temp;
    wire encoding_TDATA_full;
    wire encoding_TDATA_empty;
    reg encoding_TDATA_write_en;
    reg [32 - 1:0] encoding_TDATA_write_data;
    reg encoding_TDATA_read_en;
    wire [32 - 1:0] encoding_TDATA_read_data;
    
    fifo #(256, 32) fifo_encoding_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TDATA_write_en),
        .write_data(encoding_TDATA_write_data),
        .read_clock(clk),
        .read_en(encoding_TDATA_read_en),
        .read_data(encoding_TDATA_read_data),
        .full(encoding_TDATA_full),
        .empty(encoding_TDATA_empty));
    
    always @ (*) begin
        encoding_TDATA_write_en <= TRAN_encoding_TVALID;
        encoding_TDATA_write_data <= TRAN_encoding_TDATA;
        encoding_TDATA_read_en <= 0;
    end
    wire encoding_TKEEP_full;
    wire encoding_TKEEP_empty;
    reg encoding_TKEEP_write_en;
    reg [4 - 1:0] encoding_TKEEP_write_data;
    reg encoding_TKEEP_read_en;
    wire [4 - 1:0] encoding_TKEEP_read_data;
    
    fifo #(256, 4) fifo_encoding_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TKEEP_write_en),
        .write_data(encoding_TKEEP_write_data),
        .read_clock(clk),
        .read_en(encoding_TKEEP_read_en),
        .read_data(encoding_TKEEP_read_data),
        .full(encoding_TKEEP_full),
        .empty(encoding_TKEEP_empty));
    
    always @ (*) begin
        encoding_TKEEP_write_en <= TRAN_encoding_TVALID;
        encoding_TKEEP_write_data <= TRAN_encoding_TKEEP;
        encoding_TKEEP_read_en <= 0;
    end
    wire encoding_TSTRB_full;
    wire encoding_TSTRB_empty;
    reg encoding_TSTRB_write_en;
    reg [4 - 1:0] encoding_TSTRB_write_data;
    reg encoding_TSTRB_read_en;
    wire [4 - 1:0] encoding_TSTRB_read_data;
    
    fifo #(256, 4) fifo_encoding_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TSTRB_write_en),
        .write_data(encoding_TSTRB_write_data),
        .read_clock(clk),
        .read_en(encoding_TSTRB_read_en),
        .read_data(encoding_TSTRB_read_data),
        .full(encoding_TSTRB_full),
        .empty(encoding_TSTRB_empty));
    
    always @ (*) begin
        encoding_TSTRB_write_en <= TRAN_encoding_TVALID;
        encoding_TSTRB_write_data <= TRAN_encoding_TSTRB;
        encoding_TSTRB_read_en <= 0;
    end
    wire encoding_TUSER_full;
    wire encoding_TUSER_empty;
    reg encoding_TUSER_write_en;
    reg [1 - 1:0] encoding_TUSER_write_data;
    reg encoding_TUSER_read_en;
    wire [1 - 1:0] encoding_TUSER_read_data;
    
    fifo #(256, 1) fifo_encoding_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TUSER_write_en),
        .write_data(encoding_TUSER_write_data),
        .read_clock(clk),
        .read_en(encoding_TUSER_read_en),
        .read_data(encoding_TUSER_read_data),
        .full(encoding_TUSER_full),
        .empty(encoding_TUSER_empty));
    
    always @ (*) begin
        encoding_TUSER_write_en <= TRAN_encoding_TVALID;
        encoding_TUSER_write_data <= TRAN_encoding_TUSER;
        encoding_TUSER_read_en <= 0;
    end
    wire encoding_TLAST_full;
    wire encoding_TLAST_empty;
    reg encoding_TLAST_write_en;
    reg [1 - 1:0] encoding_TLAST_write_data;
    reg encoding_TLAST_read_en;
    wire [1 - 1:0] encoding_TLAST_read_data;
    
    fifo #(256, 1) fifo_encoding_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TLAST_write_en),
        .write_data(encoding_TLAST_write_data),
        .read_clock(clk),
        .read_en(encoding_TLAST_read_en),
        .read_data(encoding_TLAST_read_data),
        .full(encoding_TLAST_full),
        .empty(encoding_TLAST_empty));
    
    always @ (*) begin
        encoding_TLAST_write_en <= TRAN_encoding_TVALID;
        encoding_TLAST_write_data <= TRAN_encoding_TLAST;
        encoding_TLAST_read_en <= 0;
    end
    wire encoding_TID_full;
    wire encoding_TID_empty;
    reg encoding_TID_write_en;
    reg [1 - 1:0] encoding_TID_write_data;
    reg encoding_TID_read_en;
    wire [1 - 1:0] encoding_TID_read_data;
    
    fifo #(256, 1) fifo_encoding_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TID_write_en),
        .write_data(encoding_TID_write_data),
        .read_clock(clk),
        .read_en(encoding_TID_read_en),
        .read_data(encoding_TID_read_data),
        .full(encoding_TID_full),
        .empty(encoding_TID_empty));
    
    always @ (*) begin
        encoding_TID_write_en <= TRAN_encoding_TVALID;
        encoding_TID_write_data <= TRAN_encoding_TID;
        encoding_TID_read_en <= 0;
    end
    wire encoding_TDEST_full;
    wire encoding_TDEST_empty;
    reg encoding_TDEST_write_en;
    reg [1 - 1:0] encoding_TDEST_write_data;
    reg encoding_TDEST_read_en;
    wire [1 - 1:0] encoding_TDEST_read_data;
    
    fifo #(256, 1) fifo_encoding_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(encoding_TDEST_write_en),
        .write_data(encoding_TDEST_write_data),
        .read_clock(clk),
        .read_en(encoding_TDEST_read_en),
        .read_data(encoding_TDEST_read_data),
        .full(encoding_TDEST_full),
        .empty(encoding_TDEST_empty));
    
    always @ (*) begin
        encoding_TDEST_write_en <= TRAN_encoding_TVALID;
        encoding_TDEST_write_data <= TRAN_encoding_TDEST;
        encoding_TDEST_read_en <= 0;
    end
    assign TRAN_encoding_TVALID = TRAN_encoding_TVALID_temp;

    
    assign TRAN_encoding_TREADY = ~(encoding_TDATA_full || encoding_TKEEP_full || encoding_TSTRB_full || encoding_TUSER_full || encoding_TLAST_full || encoding_TID_full || encoding_TDEST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [207:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [207:0] rm_0x(input [207:0] token);
        reg [207:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_encoding_TDATA;
    
    assign transaction = transaction_save_encoding_TDATA;
    
    initial begin : AXI_stream_receiver_encoding_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TDATA = 0;
        fifo_encoding_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TDATA);
                while (~fifo_encoding_TDATA.empty) begin
                    fifo_encoding_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TDATA = transaction_save_encoding_TDATA + 1;
                fifo_encoding_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_encoding_TKEEP;
    
    initial begin : AXI_stream_receiver_encoding_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TKEEP = 0;
        fifo_encoding_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TKEEP);
                while (~fifo_encoding_TKEEP.empty) begin
                    fifo_encoding_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TKEEP = transaction_save_encoding_TKEEP + 1;
                fifo_encoding_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_encoding_TSTRB;
    
    initial begin : AXI_stream_receiver_encoding_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TSTRB = 0;
        fifo_encoding_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TSTRB);
                while (~fifo_encoding_TSTRB.empty) begin
                    fifo_encoding_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TSTRB = transaction_save_encoding_TSTRB + 1;
                fifo_encoding_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_encoding_TUSER;
    
    initial begin : AXI_stream_receiver_encoding_TUSER
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TUSER = 0;
        fifo_encoding_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TUSER);
                while (~fifo_encoding_TUSER.empty) begin
                    fifo_encoding_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TUSER = transaction_save_encoding_TUSER + 1;
                fifo_encoding_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_encoding_TLAST;
    
    initial begin : AXI_stream_receiver_encoding_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TLAST = 0;
        fifo_encoding_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TLAST);
                while (~fifo_encoding_TLAST.empty) begin
                    fifo_encoding_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TLAST = transaction_save_encoding_TLAST + 1;
                fifo_encoding_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_encoding_TID;
    
    initial begin : AXI_stream_receiver_encoding_TID
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TID = 0;
        fifo_encoding_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TID);
                while (~fifo_encoding_TID.empty) begin
                    fifo_encoding_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TID = transaction_save_encoding_TID + 1;
                fifo_encoding_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_encoding_TDEST;
    
    initial begin : AXI_stream_receiver_encoding_TDEST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_encoding_TDEST = 0;
        fifo_encoding_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_encoding_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_encoding_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_encoding_TDEST);
                while (~fifo_encoding_TDEST.empty) begin
                    fifo_encoding_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_encoding_TDEST = transaction_save_encoding_TDEST + 1;
                fifo_encoding_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
