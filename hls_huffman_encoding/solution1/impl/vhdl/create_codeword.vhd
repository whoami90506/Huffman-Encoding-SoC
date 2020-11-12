-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity create_codeword is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    symbol_bits_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    symbol_bits_V_ce0 : OUT STD_LOGIC;
    symbol_bits_V_q0 : IN STD_LOGIC_VECTOR (4 downto 0);
    codeword_length_histogram_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    codeword_length_histogram_V_ce0 : OUT STD_LOGIC;
    codeword_length_histogram_V_q0 : IN STD_LOGIC_VECTOR (8 downto 0);
    encoding_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    encoding_V_ce0 : OUT STD_LOGIC;
    encoding_V_we0 : OUT STD_LOGIC;
    encoding_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of create_codeword is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_pp1_stage0 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_pp1_stage1 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_pp1_stage2 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_pp1_stage3 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_pp1_stage4 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv27_0 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000000";
    constant ap_const_lv5_1B : STD_LOGIC_VECTOR (4 downto 0) := "11011";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv6_1B : STD_LOGIC_VECTOR (5 downto 0) := "011011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv27_1 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i1_0_reg_170 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln14_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_227_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln22_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln22_reg_361 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage0 : signal is "none";
    signal ap_block_state5_pp1_stage0_iter0 : BOOLEAN;
    signal ap_block_state10_pp1_stage0_iter1 : BOOLEAN;
    signal ap_block_pp1_stage0_11001 : BOOLEAN;
    signal i_4_fu_239_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_4_reg_365 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp1_iter0 : STD_LOGIC := '0';
    signal zext_ln24_fu_245_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln24_reg_370 : STD_LOGIC_VECTOR (63 downto 0);
    signal length_V_reg_381 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_pp1_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage1 : signal is "none";
    signal ap_block_state6_pp1_stage1_iter0 : BOOLEAN;
    signal ap_block_pp1_stage1_11001 : BOOLEAN;
    signal icmp_ln883_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln883_reg_389 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp1_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage2 : signal is "none";
    signal ap_block_state7_pp1_stage2_iter0 : BOOLEAN;
    signal ap_block_pp1_stage2_11001 : BOOLEAN;
    signal first_codeword_V_add_3_reg_393 : STD_LOGIC_VECTOR (4 downto 0);
    signal first_codeword_V_q0 : STD_LOGIC_VECTOR (26 downto 0);
    signal out_reversed_V_1_reg_398 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_CS_fsm_pp1_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage3 : signal is "none";
    signal ap_block_state8_pp1_stage3_iter0 : BOOLEAN;
    signal ap_block_pp1_stage3_11001 : BOOLEAN;
    signal p_Result_s_fu_259_p4 : STD_LOGIC_VECTOR (26 downto 0);
    signal p_Result_s_reg_403 : STD_LOGIC_VECTOR (26 downto 0);
    signal ret_V_fu_272_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ret_V_reg_409 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln556_fu_282_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal sub_ln556_reg_415 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln796_fu_319_p3 : STD_LOGIC_VECTOR (21 downto 0);
    signal select_ln796_reg_420 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_CS_fsm_pp1_stage4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage4 : signal is "none";
    signal ap_block_state9_pp1_stage4_iter0 : BOOLEAN;
    signal ap_block_pp1_stage4_11001 : BOOLEAN;
    signal add_ln700_fu_327_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal add_ln700_reg_425 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_block_pp1_stage0_subdone : BOOLEAN;
    signal ap_condition_pp1_exit_iter0_state5 : STD_LOGIC;
    signal ap_enable_reg_pp1_iter1 : STD_LOGIC := '0';
    signal ap_block_pp1_stage4_subdone : BOOLEAN;
    signal first_codeword_V_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal first_codeword_V_ce0 : STD_LOGIC;
    signal first_codeword_V_we0 : STD_LOGIC;
    signal first_codeword_V_d0 : STD_LOGIC_VECTOR (26 downto 0);
    signal i_0_reg_158 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_phi_mux_i1_0_phi_fu_174_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_pp1_stage0 : BOOLEAN;
    signal zext_ln16_1_fu_193_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln16_fu_199_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln544_fu_255_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp1_stage2 : BOOLEAN;
    signal encoding_V_addr_1_gep_fu_150_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln_fu_218_p3 : STD_LOGIC_VECTOR (26 downto 0);
    signal zext_ln209_fu_338_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln16_fu_187_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln1503_fu_208_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal zext_ln1503_fu_204_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln1503_fu_212_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal ap_block_pp1_stage3 : BOOLEAN;
    signal zext_ln215_fu_269_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln790_fu_278_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp1_stage4 : BOOLEAN;
    signal zext_ln556_fu_295_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal zext_ln808_fu_303_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal r_V_fu_298_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal lshr_ln808_fu_306_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal p_Result_1_fu_288_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln796_fu_311_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal trunc_ln796_1_fu_315_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal tmp_2_fu_332_p3 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp1_stage1_subdone : BOOLEAN;
    signal ap_block_pp1_stage2_subdone : BOOLEAN;
    signal ap_block_pp1_stage3_subdone : BOOLEAN;
    signal ap_idle_pp1 : STD_LOGIC;
    signal ap_enable_pp1 : STD_LOGIC;

    component create_codeword_fmb6 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (26 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (26 downto 0) );
    end component;



begin
    first_codeword_V_U : component create_codeword_fmb6
    generic map (
        DataWidth => 27,
        AddressRange => 27,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => first_codeword_V_address0,
        ce0 => first_codeword_V_ce0,
        we0 => first_codeword_V_we0,
        d0 => first_codeword_V_d0,
        q0 => first_codeword_V_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_logic_1 = ap_condition_pp1_exit_iter0_state5) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone)) or ((ap_const_logic_1 = ap_CS_fsm_pp1_stage4) and (ap_const_boolean_0 = ap_block_pp1_stage4_subdone)))) then 
                    ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i1_0_reg_170_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i1_0_reg_170 <= ap_const_lv9_0;
            elsif (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln22_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
                i1_0_reg_170 <= i_4_reg_365;
            end if; 
        end if;
    end process;

    i_0_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_158 <= i_fu_227_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_158 <= ap_const_lv5_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (icmp_ln883_reg_389 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage4) and (ap_const_boolean_0 = ap_block_pp1_stage4_11001))) then
                add_ln700_reg_425 <= add_ln700_fu_327_p2;
                select_ln796_reg_420 <= select_ln796_fu_319_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (icmp_ln883_fu_250_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2) and (ap_const_boolean_0 = ap_block_pp1_stage2_11001))) then
                first_codeword_V_add_3_reg_393 <= zext_ln544_fu_255_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then
                i_4_reg_365 <= i_4_fu_239_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then
                icmp_ln22_reg_361 <= icmp_ln22_fu_233_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2) and (ap_const_boolean_0 = ap_block_pp1_stage2_11001))) then
                icmp_ln883_reg_389 <= icmp_ln883_fu_250_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage1) and (ap_const_boolean_0 = ap_block_pp1_stage1_11001))) then
                length_V_reg_381 <= symbol_bits_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (icmp_ln883_reg_389 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage3) and (ap_const_boolean_0 = ap_block_pp1_stage3_11001))) then
                out_reversed_V_1_reg_398 <= first_codeword_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (icmp_ln883_reg_389 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage3) and (ap_const_boolean_0 = ap_block_pp1_stage3_11001))) then
                p_Result_s_reg_403 <= p_Result_s_fu_259_p4;
                ret_V_reg_409 <= ret_V_fu_272_p2;
                sub_ln556_reg_415 <= sub_ln556_fu_282_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln22_fu_233_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then
                    zext_ln24_reg_370(8 downto 0) <= zext_ln24_fu_245_p1(8 downto 0);
            end if;
        end if;
    end process;
    zext_ln24_reg_370(63 downto 9) <= "0000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln14_fu_181_p2, icmp_ln22_fu_233_p2, ap_enable_reg_pp1_iter0, ap_block_pp1_stage0_subdone, ap_block_pp1_stage4_subdone, ap_block_pp1_stage1_subdone, ap_block_pp1_stage2_subdone, ap_block_pp1_stage3_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln14_fu_181_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
            when ap_ST_fsm_pp1_stage0 => 
                if ((not(((icmp_ln22_fu_233_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage1;
                elsif (((icmp_ln22_fu_233_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                end if;
            when ap_ST_fsm_pp1_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp1_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage1;
                end if;
            when ap_ST_fsm_pp1_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp1_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage2;
                end if;
            when ap_ST_fsm_pp1_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp1_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage3;
                end if;
            when ap_ST_fsm_pp1_stage4 => 
                if ((ap_const_boolean_0 = ap_block_pp1_stage4_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage4;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    add_ln1503_fu_212_p2 <= std_logic_vector(unsigned(trunc_ln1503_fu_208_p1) + unsigned(zext_ln1503_fu_204_p1));
    add_ln16_fu_187_p2 <= std_logic_vector(signed(ap_const_lv5_1F) + signed(i_0_reg_158));
    add_ln700_fu_327_p2 <= std_logic_vector(unsigned(ap_const_lv27_1) + unsigned(out_reversed_V_1_reg_398));
    ap_CS_fsm_pp1_stage0 <= ap_CS_fsm(4);
    ap_CS_fsm_pp1_stage1 <= ap_CS_fsm(5);
    ap_CS_fsm_pp1_stage2 <= ap_CS_fsm(6);
    ap_CS_fsm_pp1_stage3 <= ap_CS_fsm(7);
    ap_CS_fsm_pp1_stage4 <= ap_CS_fsm(8);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
        ap_block_pp1_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage4_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage4_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state10_pp1_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp1_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp1_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp1_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp1_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp1_stage4_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp1_exit_iter0_state5_assign_proc : process(icmp_ln22_fu_233_p2)
    begin
        if ((icmp_ln22_fu_233_p2 = ap_const_lv1_1)) then 
            ap_condition_pp1_exit_iter0_state5 <= ap_const_logic_1;
        else 
            ap_condition_pp1_exit_iter0_state5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp1 <= (ap_idle_pp1 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp1_assign_proc : process(ap_enable_reg_pp1_iter0, ap_enable_reg_pp1_iter1)
    begin
        if (((ap_enable_reg_pp1_iter0 = ap_const_logic_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_0))) then 
            ap_idle_pp1 <= ap_const_logic_1;
        else 
            ap_idle_pp1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i1_0_phi_fu_174_p4_assign_proc : process(i1_0_reg_170, icmp_ln22_reg_361, ap_CS_fsm_pp1_stage0, i_4_reg_365, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0)
    begin
        if (((icmp_ln22_reg_361 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_i1_0_phi_fu_174_p4 <= i_4_reg_365;
        else 
            ap_phi_mux_i1_0_phi_fu_174_p4 <= i1_0_reg_170;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    codeword_length_histogram_V_address0 <= zext_ln16_1_fu_193_p1(6 - 1 downto 0);

    codeword_length_histogram_V_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            codeword_length_histogram_V_ce0 <= ap_const_logic_1;
        else 
            codeword_length_histogram_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    encoding_V_addr_1_gep_fu_150_p3 <= zext_ln24_reg_370(8 - 1 downto 0);

    encoding_V_address0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter0, zext_ln24_reg_370, ap_CS_fsm_pp1_stage2, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, ap_block_pp1_stage2, encoding_V_addr_1_gep_fu_150_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            encoding_V_address0 <= encoding_V_addr_1_gep_fu_150_p3;
        elsif (((ap_const_boolean_0 = ap_block_pp1_stage2) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2))) then 
            encoding_V_address0 <= zext_ln24_reg_370(8 - 1 downto 0);
        else 
            encoding_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    encoding_V_ce0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0, ap_CS_fsm_pp1_stage2, ap_block_pp1_stage2_11001, ap_enable_reg_pp1_iter1)
    begin
        if ((((ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2) and (ap_const_boolean_0 = ap_block_pp1_stage2_11001)) or ((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1)))) then 
            encoding_V_ce0 <= ap_const_logic_1;
        else 
            encoding_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    encoding_V_d0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter0, ap_CS_fsm_pp1_stage2, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, ap_block_pp1_stage2, zext_ln209_fu_338_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            encoding_V_d0 <= zext_ln209_fu_338_p1;
        elsif (((ap_const_boolean_0 = ap_block_pp1_stage2) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2))) then 
            encoding_V_d0 <= ap_const_lv32_0;
        else 
            encoding_V_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    encoding_V_we0_assign_proc : process(icmp_ln22_reg_361, ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0, icmp_ln883_fu_250_p2, icmp_ln883_reg_389, ap_CS_fsm_pp1_stage2, ap_block_pp1_stage2_11001, ap_enable_reg_pp1_iter1)
    begin
        if ((((icmp_ln22_reg_361 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2) and (ap_const_boolean_0 = ap_block_pp1_stage2_11001) and (icmp_ln883_fu_250_p2 = ap_const_lv1_1)) or ((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln883_reg_389 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1)))) then 
            encoding_V_we0 <= ap_const_logic_1;
        else 
            encoding_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    first_codeword_V_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter0, ap_CS_fsm_pp1_stage2, first_codeword_V_add_3_reg_393, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, zext_ln16_1_fu_193_p1, zext_ln16_fu_199_p1, zext_ln544_fu_255_p1, ap_block_pp1_stage2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            first_codeword_V_address0 <= first_codeword_V_add_3_reg_393;
        elsif (((ap_const_boolean_0 = ap_block_pp1_stage2) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2))) then 
            first_codeword_V_address0 <= zext_ln544_fu_255_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            first_codeword_V_address0 <= zext_ln16_fu_199_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            first_codeword_V_address0 <= zext_ln16_1_fu_193_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            first_codeword_V_address0 <= ap_const_lv64_0(5 - 1 downto 0);
        else 
            first_codeword_V_address0 <= "XXXXX";
        end if; 
    end process;


    first_codeword_V_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0, ap_CS_fsm_pp1_stage2, ap_block_pp1_stage2_11001, ap_enable_reg_pp1_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage2) and (ap_const_boolean_0 = ap_block_pp1_stage2_11001)) or ((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            first_codeword_V_ce0 <= ap_const_logic_1;
        else 
            first_codeword_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    first_codeword_V_d0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state3, ap_CS_fsm_pp1_stage0, add_ln700_reg_425, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, shl_ln_fu_218_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            first_codeword_V_d0 <= add_ln700_reg_425;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            first_codeword_V_d0 <= shl_ln_fu_218_p3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            first_codeword_V_d0 <= ap_const_lv27_0;
        else 
            first_codeword_V_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    first_codeword_V_we0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ap_CS_fsm_state3, ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, icmp_ln883_reg_389, ap_enable_reg_pp1_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln883_reg_389 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            first_codeword_V_we0 <= ap_const_logic_1;
        else 
            first_codeword_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    i_4_fu_239_p2 <= std_logic_vector(unsigned(ap_phi_mux_i1_0_phi_fu_174_p4) + unsigned(ap_const_lv9_1));
    i_fu_227_p2 <= std_logic_vector(unsigned(ap_const_lv5_1) + unsigned(i_0_reg_158));
    icmp_ln14_fu_181_p2 <= "1" when (i_0_reg_158 = ap_const_lv5_1B) else "0";
    icmp_ln22_fu_233_p2 <= "1" when (ap_phi_mux_i1_0_phi_fu_174_p4 = ap_const_lv9_100) else "0";
    icmp_ln883_fu_250_p2 <= "1" when (length_V_reg_381 = ap_const_lv5_0) else "0";
    lshr_ln808_fu_306_p2 <= std_logic_vector(shift_right(unsigned(p_Result_s_reg_403),to_integer(unsigned('0' & zext_ln808_fu_303_p1(27-1 downto 0)))));
    p_Result_1_fu_288_p3 <= ret_V_reg_409(5 downto 5);
    
    p_Result_s_fu_259_p4_proc : process(first_codeword_V_q0)
    variable vlo_cpy : STD_LOGIC_VECTOR(27+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(27+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(27 - 1 downto 0);
    variable p_Result_s_fu_259_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(27 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(27 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(27 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(5 - 1 downto 0) := ap_const_lv32_1A(5 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(5 - 1 downto 0) := ap_const_lv32_0(5 - 1 downto 0);
        v0_cpy := first_codeword_V_q0;
        if (vlo_cpy(5 - 1 downto 0) > vhi_cpy(5 - 1 downto 0)) then
            vhi_cpy(5-1 downto 0) := std_logic_vector(27-1-unsigned(ap_const_lv32_0(5-1 downto 0)));
            vlo_cpy(5-1 downto 0) := std_logic_vector(27-1-unsigned(ap_const_lv32_1A(5-1 downto 0)));
            for p_Result_s_fu_259_p4_i in 0 to 27-1 loop
                v0_cpy(p_Result_s_fu_259_p4_i) := first_codeword_V_q0(27-1-p_Result_s_fu_259_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(5-1 downto 0)))));

        section := (others=>'0');
        section(5-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(5-1 downto 0)) - unsigned(vlo_cpy(5-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(27-1 downto 0)))));
        res_mask := res_mask(27-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        p_Result_s_fu_259_p4 <= resvalue(27-1 downto 0);
    end process;

    r_V_fu_298_p2 <= std_logic_vector(shift_left(unsigned(p_Result_s_reg_403),to_integer(unsigned('0' & zext_ln556_fu_295_p1(27-1 downto 0)))));
    ret_V_fu_272_p2 <= std_logic_vector(unsigned(ap_const_lv6_1B) - unsigned(zext_ln215_fu_269_p1));
    select_ln796_fu_319_p3 <= 
        trunc_ln796_fu_311_p1 when (p_Result_1_fu_288_p3(0) = '1') else 
        trunc_ln796_1_fu_315_p1;
    shl_ln_fu_218_p3 <= (add_ln1503_fu_212_p2 & ap_const_lv1_0);
    sub_ln556_fu_282_p2 <= std_logic_vector(unsigned(ap_const_lv3_0) - unsigned(trunc_ln790_fu_278_p1));
    symbol_bits_V_address0 <= zext_ln24_fu_245_p1(8 - 1 downto 0);

    symbol_bits_V_ce0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            symbol_bits_V_ce0 <= ap_const_logic_1;
        else 
            symbol_bits_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_fu_332_p3 <= (select_ln796_reg_420 & length_V_reg_381);
    trunc_ln1503_fu_208_p1 <= first_codeword_V_q0(26 - 1 downto 0);
    trunc_ln790_fu_278_p1 <= ret_V_fu_272_p2(3 - 1 downto 0);
    trunc_ln796_1_fu_315_p1 <= lshr_ln808_fu_306_p2(22 - 1 downto 0);
    trunc_ln796_fu_311_p1 <= r_V_fu_298_p2(22 - 1 downto 0);
    zext_ln1503_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(codeword_length_histogram_V_q0),26));
    zext_ln16_1_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln16_fu_187_p2),64));
    zext_ln16_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_158),64));
    zext_ln209_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_332_p3),32));
    zext_ln215_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(length_V_reg_381),6));
    zext_ln24_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i1_0_phi_fu_174_p4),64));
    zext_ln544_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(length_V_reg_381),64));
    zext_ln556_fu_295_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln556_reg_415),27));
    zext_ln808_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_reg_409),27));
end behav;
