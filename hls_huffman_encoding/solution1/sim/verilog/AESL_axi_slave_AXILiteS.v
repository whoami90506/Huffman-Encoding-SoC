// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_AXILiteS (
    clk,
    reset,
    TRAN_s_axi_AXILiteS_AWADDR,
    TRAN_s_axi_AXILiteS_AWVALID,
    TRAN_s_axi_AXILiteS_AWREADY,
    TRAN_s_axi_AXILiteS_WVALID,
    TRAN_s_axi_AXILiteS_WREADY,
    TRAN_s_axi_AXILiteS_WDATA,
    TRAN_s_axi_AXILiteS_WSTRB,
    TRAN_s_axi_AXILiteS_ARADDR,
    TRAN_s_axi_AXILiteS_ARVALID,
    TRAN_s_axi_AXILiteS_ARREADY,
    TRAN_s_axi_AXILiteS_RVALID,
    TRAN_s_axi_AXILiteS_RREADY,
    TRAN_s_axi_AXILiteS_RDATA,
    TRAN_s_axi_AXILiteS_RRESP,
    TRAN_s_axi_AXILiteS_BVALID,
    TRAN_s_axi_AXILiteS_BREADY,
    TRAN_s_axi_AXILiteS_BRESP,
    TRAN_AXILiteS_read_data_finish,
    TRAN_AXILiteS_start_in,
    TRAN_AXILiteS_idle_in,
    TRAN_AXILiteS_ready_in,
    TRAN_AXILiteS_done_in,
    TRAN_AXILiteS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_OUT_num_nonzero_symbols "../tv/rtldatafile/rtl.huffman_encoding.autotvout_num_nonzero_symbols.dat"
parameter ADDR_WIDTH = 5;
parameter DATA_WIDTH = 32;
parameter num_nonzero_symbols_DEPTH = 1;
reg [31 : 0] num_nonzero_symbols_OPERATE_DEPTH = 0;
parameter num_nonzero_symbols_c_bitwidth = 32;
parameter num_nonzero_symbols_data_out_addr = 16;
parameter num_nonzero_symbols_valid_out_addr = 20;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_AWADDR;
output  TRAN_s_axi_AXILiteS_AWVALID;
input  TRAN_s_axi_AXILiteS_AWREADY;
output  TRAN_s_axi_AXILiteS_WVALID;
input  TRAN_s_axi_AXILiteS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_AXILiteS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_ARADDR;
output  TRAN_s_axi_AXILiteS_ARVALID;
input  TRAN_s_axi_AXILiteS_ARREADY;
input  TRAN_s_axi_AXILiteS_RVALID;
output  TRAN_s_axi_AXILiteS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_RRESP;
input  TRAN_s_axi_AXILiteS_BVALID;
output  TRAN_s_axi_AXILiteS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_BRESP;
output TRAN_AXILiteS_read_data_finish;
input     clk;
input     reset;
input     TRAN_AXILiteS_start_in;
input     TRAN_AXILiteS_done_in;
input     TRAN_AXILiteS_ready_in;
input     TRAN_AXILiteS_idle_in;
input     TRAN_AXILiteS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_num_nonzero_symbols [num_nonzero_symbols_DEPTH - 1 : 0];
reg num_nonzero_symbols_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
//read num_nonzero_symbols reg
reg [31 : 0] read_num_nonzero_symbols_count = 0;
reg read_num_nonzero_symbols_run_flag = 0;
reg read_one_num_nonzero_symbols_data_done = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_AXILiteS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_AXILiteS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_AXILiteS_WVALID = WVALID_reg;
assign TRAN_s_axi_AXILiteS_WDATA = WDATA_reg;
assign TRAN_s_axi_AXILiteS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_AXILiteS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_AXILiteS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_AXILiteS_RREADY = RREADY_reg;
assign TRAN_s_axi_AXILiteS_BREADY = BREADY_reg;
assign TRAN_AXILiteS_read_data_finish = 1 & num_nonzero_symbols_read_data_finish;
always @(TRAN_AXILiteS_done_in) 
begin
    AESL_done_index_reg <= TRAN_AXILiteS_done_in;
end
always @(TRAN_AXILiteS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in | ready_initial;
end

always @(reset or process_0_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_AXILiteS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_AXILiteS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_AXILiteS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_AXILiteS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        num_nonzero_symbols_read_data_finish <= 0;
        read_num_nonzero_symbols_run_flag <= 0; 
        read_num_nonzero_symbols_count = 0;
        count_operate_depth_by_bitwidth_and_depth (num_nonzero_symbols_c_bitwidth, num_nonzero_symbols_DEPTH, num_nonzero_symbols_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            read_num_nonzero_symbols_run_flag = 1; 
        end
        if (TRAN_AXILiteS_transaction_done_in === 1) begin
            num_nonzero_symbols_read_data_finish <= 0;
            read_num_nonzero_symbols_count = 0; 
        end
        if (read_one_num_nonzero_symbols_data_done === 1) begin
            read_num_nonzero_symbols_count = read_num_nonzero_symbols_count + 1;
            if (read_num_nonzero_symbols_count == num_nonzero_symbols_OPERATE_DEPTH) begin
                read_num_nonzero_symbols_run_flag <= 0; 
                num_nonzero_symbols_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_num_nonzero_symbols
    integer read_num_nonzero_symbols_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = num_nonzero_symbols_c_bitwidth;
    process_num = 0;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_0_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_num_nonzero_symbols_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read num_nonzero_symbols vld
                read (num_nonzero_symbols_valid_out_addr, RDATA_reg, read_num_nonzero_symbols_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read num_nonzero_symbols data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (num_nonzero_symbols_data_out_addr + read_num_nonzero_symbols_count * four_byte_num * 4 + i * 4, RDATA_reg, read_num_nonzero_symbols_resp);
                        if (num_nonzero_symbols_c_bitwidth < 32) begin
                            mem_num_nonzero_symbols[read_num_nonzero_symbols_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < num_nonzero_symbols_c_bitwidth) begin
                                    mem_num_nonzero_symbols[read_num_nonzero_symbols_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_num_nonzero_symbols_data_done <= 1;
                    @(posedge clk);
                    read_one_num_nonzero_symbols_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_0_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_num_nonzero_symbols_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [num_nonzero_symbols_c_bitwidth - 1 : 0] mem_tmp; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (num_nonzero_symbols_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (num_nonzero_symbols_read_data_finish !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_num_nonzero_symbols, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_num_nonzero_symbols); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (num_nonzero_symbols_DEPTH - num_nonzero_symbols_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_num_nonzero_symbols[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_num_nonzero_symbols[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = mem_num_nonzero_symbols[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = mem_num_nonzero_symbols[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_num_nonzero_symbols[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_num_nonzero_symbols[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[i]);
          end
      end 
      if (factor == 4) begin
          if ((num_nonzero_symbols_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][23:16]);
          end
          if ((num_nonzero_symbols_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][15:8]);
          end
          if ((num_nonzero_symbols_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((num_nonzero_symbols_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_num_nonzero_symbols[num_nonzero_symbols_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_AXILiteS_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
