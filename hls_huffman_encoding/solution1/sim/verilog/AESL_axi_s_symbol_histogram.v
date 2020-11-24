// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_symbol_histogram_TDATA "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_data_V.dat"
`define TV_IN_symbol_histogram_TKEEP "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_keep_V.dat"
`define TV_IN_symbol_histogram_TSTRB "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_strb_V.dat"
`define TV_IN_symbol_histogram_TUSER "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_user_V.dat"
`define TV_IN_symbol_histogram_TLAST "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_last_V.dat"
`define TV_IN_symbol_histogram_TID "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_id_V.dat"
`define TV_IN_symbol_histogram_TDEST "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_symbol_histogram (
    input clk,
    input reset,
    output [48 - 1:0] TRAN_symbol_histogram_TDATA,
    output [6 - 1:0] TRAN_symbol_histogram_TKEEP,
    output [6 - 1:0] TRAN_symbol_histogram_TSTRB,
    output TRAN_symbol_histogram_TUSER,
    output TRAN_symbol_histogram_TLAST,
    output TRAN_symbol_histogram_TID,
    output TRAN_symbol_histogram_TDEST,
    output TRAN_symbol_histogram_TVALID,
    input TRAN_symbol_histogram_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_symbol_histogram_TVALID_temp;
    wire symbol_histogram_TDATA_full;
    wire symbol_histogram_TDATA_empty;
    reg symbol_histogram_TDATA_write_en;
    reg [48 - 1:0] symbol_histogram_TDATA_write_data;
    reg symbol_histogram_TDATA_read_en;
    wire [48 - 1:0] symbol_histogram_TDATA_read_data;
    
    fifo #(256, 48) fifo_symbol_histogram_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TDATA_write_en),
        .write_data(symbol_histogram_TDATA_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TDATA_read_en),
        .read_data(symbol_histogram_TDATA_read_data),
        .full(symbol_histogram_TDATA_full),
        .empty(symbol_histogram_TDATA_empty));
    
    always @ (*) begin
        symbol_histogram_TDATA_write_en <= 0;
        symbol_histogram_TDATA_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TDATA = symbol_histogram_TDATA_read_data;
    wire symbol_histogram_TKEEP_full;
    wire symbol_histogram_TKEEP_empty;
    reg symbol_histogram_TKEEP_write_en;
    reg [6 - 1:0] symbol_histogram_TKEEP_write_data;
    reg symbol_histogram_TKEEP_read_en;
    wire [6 - 1:0] symbol_histogram_TKEEP_read_data;
    
    fifo #(256, 6) fifo_symbol_histogram_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TKEEP_write_en),
        .write_data(symbol_histogram_TKEEP_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TKEEP_read_en),
        .read_data(symbol_histogram_TKEEP_read_data),
        .full(symbol_histogram_TKEEP_full),
        .empty(symbol_histogram_TKEEP_empty));
    
    always @ (*) begin
        symbol_histogram_TKEEP_write_en <= 0;
        symbol_histogram_TKEEP_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TKEEP = symbol_histogram_TKEEP_read_data;
    wire symbol_histogram_TSTRB_full;
    wire symbol_histogram_TSTRB_empty;
    reg symbol_histogram_TSTRB_write_en;
    reg [6 - 1:0] symbol_histogram_TSTRB_write_data;
    reg symbol_histogram_TSTRB_read_en;
    wire [6 - 1:0] symbol_histogram_TSTRB_read_data;
    
    fifo #(256, 6) fifo_symbol_histogram_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TSTRB_write_en),
        .write_data(symbol_histogram_TSTRB_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TSTRB_read_en),
        .read_data(symbol_histogram_TSTRB_read_data),
        .full(symbol_histogram_TSTRB_full),
        .empty(symbol_histogram_TSTRB_empty));
    
    always @ (*) begin
        symbol_histogram_TSTRB_write_en <= 0;
        symbol_histogram_TSTRB_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TSTRB = symbol_histogram_TSTRB_read_data;
    wire symbol_histogram_TUSER_full;
    wire symbol_histogram_TUSER_empty;
    reg symbol_histogram_TUSER_write_en;
    reg [1 - 1:0] symbol_histogram_TUSER_write_data;
    reg symbol_histogram_TUSER_read_en;
    wire [1 - 1:0] symbol_histogram_TUSER_read_data;
    
    fifo #(256, 1) fifo_symbol_histogram_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TUSER_write_en),
        .write_data(symbol_histogram_TUSER_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TUSER_read_en),
        .read_data(symbol_histogram_TUSER_read_data),
        .full(symbol_histogram_TUSER_full),
        .empty(symbol_histogram_TUSER_empty));
    
    always @ (*) begin
        symbol_histogram_TUSER_write_en <= 0;
        symbol_histogram_TUSER_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TUSER = symbol_histogram_TUSER_read_data;
    wire symbol_histogram_TLAST_full;
    wire symbol_histogram_TLAST_empty;
    reg symbol_histogram_TLAST_write_en;
    reg [1 - 1:0] symbol_histogram_TLAST_write_data;
    reg symbol_histogram_TLAST_read_en;
    wire [1 - 1:0] symbol_histogram_TLAST_read_data;
    
    fifo #(256, 1) fifo_symbol_histogram_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TLAST_write_en),
        .write_data(symbol_histogram_TLAST_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TLAST_read_en),
        .read_data(symbol_histogram_TLAST_read_data),
        .full(symbol_histogram_TLAST_full),
        .empty(symbol_histogram_TLAST_empty));
    
    always @ (*) begin
        symbol_histogram_TLAST_write_en <= 0;
        symbol_histogram_TLAST_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TLAST = symbol_histogram_TLAST_read_data;
    wire symbol_histogram_TID_full;
    wire symbol_histogram_TID_empty;
    reg symbol_histogram_TID_write_en;
    reg [1 - 1:0] symbol_histogram_TID_write_data;
    reg symbol_histogram_TID_read_en;
    wire [1 - 1:0] symbol_histogram_TID_read_data;
    
    fifo #(256, 1) fifo_symbol_histogram_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TID_write_en),
        .write_data(symbol_histogram_TID_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TID_read_en),
        .read_data(symbol_histogram_TID_read_data),
        .full(symbol_histogram_TID_full),
        .empty(symbol_histogram_TID_empty));
    
    always @ (*) begin
        symbol_histogram_TID_write_en <= 0;
        symbol_histogram_TID_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TID = symbol_histogram_TID_read_data;
    wire symbol_histogram_TDEST_full;
    wire symbol_histogram_TDEST_empty;
    reg symbol_histogram_TDEST_write_en;
    reg [1 - 1:0] symbol_histogram_TDEST_write_data;
    reg symbol_histogram_TDEST_read_en;
    wire [1 - 1:0] symbol_histogram_TDEST_read_data;
    
    fifo #(256, 1) fifo_symbol_histogram_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(symbol_histogram_TDEST_write_en),
        .write_data(symbol_histogram_TDEST_write_data),
        .read_clock(clk),
        .read_en(symbol_histogram_TDEST_read_en),
        .read_data(symbol_histogram_TDEST_read_data),
        .full(symbol_histogram_TDEST_full),
        .empty(symbol_histogram_TDEST_empty));
    
    always @ (*) begin
        symbol_histogram_TDEST_write_en <= 0;
        symbol_histogram_TDEST_read_en <= TRAN_symbol_histogram_TREADY & TRAN_symbol_histogram_TVALID;
    end
    
    assign TRAN_symbol_histogram_TDEST = symbol_histogram_TDEST_read_data;
    assign TRAN_symbol_histogram_TVALID = TRAN_symbol_histogram_TVALID_temp;

    
    assign TRAN_symbol_histogram_TVALID_temp = ~(symbol_histogram_TDATA_empty || symbol_histogram_TKEEP_empty || symbol_histogram_TSTRB_empty || symbol_histogram_TUSER_empty || symbol_histogram_TLAST_empty || symbol_histogram_TID_empty || symbol_histogram_TDEST_empty);
    
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
    
    reg [31:0] transaction_load_symbol_histogram_TDATA;
    
    assign transaction = transaction_load_symbol_histogram_TDATA;
    
    initial begin : AXI_stream_driver_symbol_histogram_TDATA
        integer fp;
        reg [207:0] token;
        reg [48 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TDATA = 0;
        fifo_symbol_histogram_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TDATA.snapshot();
                end else begin
                    fifo_symbol_histogram_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TDATA = transaction_load_symbol_histogram_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_symbol_histogram_TKEEP;
    
    initial begin : AXI_stream_driver_symbol_histogram_TKEEP
        integer fp;
        reg [207:0] token;
        reg [6 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TKEEP = 0;
        fifo_symbol_histogram_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TKEEP, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TKEEP);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TKEEP.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TKEEP.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TKEEP.snapshot();
                end else begin
                    fifo_symbol_histogram_TKEEP.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TKEEP = transaction_load_symbol_histogram_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_symbol_histogram_TSTRB;
    
    initial begin : AXI_stream_driver_symbol_histogram_TSTRB
        integer fp;
        reg [207:0] token;
        reg [6 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TSTRB = 0;
        fifo_symbol_histogram_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TSTRB, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TSTRB);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TSTRB.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TSTRB.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TSTRB.snapshot();
                end else begin
                    fifo_symbol_histogram_TSTRB.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TSTRB = transaction_load_symbol_histogram_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_symbol_histogram_TUSER;
    
    initial begin : AXI_stream_driver_symbol_histogram_TUSER
        integer fp;
        reg [207:0] token;
        reg [1 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TUSER = 0;
        fifo_symbol_histogram_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TUSER, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TUSER);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TUSER.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TUSER.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TUSER.snapshot();
                end else begin
                    fifo_symbol_histogram_TUSER.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TUSER = transaction_load_symbol_histogram_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_symbol_histogram_TLAST;
    
    initial begin : AXI_stream_driver_symbol_histogram_TLAST
        integer fp;
        reg [207:0] token;
        reg [1 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TLAST = 0;
        fifo_symbol_histogram_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TLAST, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TLAST);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TLAST.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TLAST.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TLAST.snapshot();
                end else begin
                    fifo_symbol_histogram_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TLAST = transaction_load_symbol_histogram_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_symbol_histogram_TID;
    
    initial begin : AXI_stream_driver_symbol_histogram_TID
        integer fp;
        reg [207:0] token;
        reg [1 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TID = 0;
        fifo_symbol_histogram_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TID, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TID);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TID.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TID.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TID.snapshot();
                end else begin
                    fifo_symbol_histogram_TID.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TID = transaction_load_symbol_histogram_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_symbol_histogram_TDEST;
    
    initial begin : AXI_stream_driver_symbol_histogram_TDEST
        integer fp;
        reg [207:0] token;
        reg [1 - 1:0] data;
        reg [207:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_symbol_histogram_TDEST = 0;
        fifo_symbol_histogram_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_symbol_histogram_TDEST, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_symbol_histogram_TDEST);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_symbol_histogram_TDEST.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_symbol_histogram_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_symbol_histogram_TDEST.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_symbol_histogram_TDEST.snapshot();
                end else begin
                    fifo_symbol_histogram_TDEST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_symbol_histogram_TDEST = transaction_load_symbol_histogram_TDEST + 1;
            end
        end
    end

endmodule
