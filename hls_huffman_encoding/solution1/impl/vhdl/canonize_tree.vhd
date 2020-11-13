-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canonize_tree is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sorted_value_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    sorted_value_V_ce0 : OUT STD_LOGIC;
    sorted_value_V_q0 : IN STD_LOGIC_VECTOR (8 downto 0);
    val_assign7_loc_dout : IN STD_LOGIC_VECTOR (8 downto 0);
    val_assign7_loc_empty_n : IN STD_LOGIC;
    val_assign7_loc_read : OUT STD_LOGIC;
    codeword_length_histogram_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    codeword_length_histogram_V_ce0 : OUT STD_LOGIC;
    codeword_length_histogram_V_q0 : IN STD_LOGIC_VECTOR (8 downto 0);
    symbol_bits_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    symbol_bits_V_ce0 : OUT STD_LOGIC;
    symbol_bits_V_we0 : OUT STD_LOGIC;
    symbol_bits_V_d0 : OUT STD_LOGIC_VECTOR (4 downto 0) );
end;


architecture behav of canonize_tree is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv9_40 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_1FF : STD_LOGIC_VECTOR (8 downto 0) := "111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal val_assign7_loc_blk_n : STD_LOGIC;
    signal val_assign7_loc_read_reg_244 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal i_fu_174_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal k_fu_195_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal k_reg_267 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln879_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_reg_272 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln21_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal length_V_fu_207_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal length_V_reg_276 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln879_4_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sorted_value_V_load_reg_299 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal count_V_2_fu_229_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal count_V_2_reg_304 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_0_i_i_reg_116 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln11_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_066_0_i_i_reg_127 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal i_op_assign_reg_139 : STD_LOGIC_VECTOR (8 downto 0);
    signal t_V_5_reg_151 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln12_fu_180_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln544_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln32_fu_224_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln544_9_fu_235_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal length_V_1_fu_58 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln209_fu_239_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);


begin




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
                elsif (((icmp_ln21_fu_190_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((val_assign7_loc_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_i_reg_116 <= ap_const_lv9_0;
            elsif (((icmp_ln11_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_i_i_reg_116 <= i_fu_174_p2;
            end if; 
        end if;
    end process;

    i_op_assign_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln11_fu_168_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_op_assign_reg_139 <= ap_const_lv9_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_op_assign_reg_139 <= k_reg_267;
            end if; 
        end if;
    end process;

    length_V_1_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((icmp_ln879_4_fu_218_p2 = ap_const_lv1_1) and (icmp_ln879_reg_272 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln879_4_fu_218_p2 = ap_const_lv1_0) and (icmp_ln879_reg_272 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
                length_V_1_fu_58 <= length_V_reg_276;
            elsif (((icmp_ln11_fu_168_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                length_V_1_fu_58 <= ap_const_lv9_40;
            end if; 
        end if;
    end process;

    p_066_0_i_i_reg_127_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln11_fu_168_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_066_0_i_i_reg_127 <= ap_const_lv9_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                p_066_0_i_i_reg_127 <= count_V_2_reg_304;
            end if; 
        end if;
    end process;

    t_V_5_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln879_4_fu_218_p2 = ap_const_lv1_0) and (icmp_ln879_reg_272 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                t_V_5_reg_151 <= codeword_length_histogram_V_q0;
            elsif (((icmp_ln21_fu_190_p2 = ap_const_lv1_0) and (icmp_ln879_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                t_V_5_reg_151 <= p_066_0_i_i_reg_127;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                count_V_2_reg_304 <= count_V_2_fu_229_p2;
                sorted_value_V_load_reg_299 <= sorted_value_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln21_fu_190_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                icmp_ln879_reg_272 <= icmp_ln879_fu_201_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                k_reg_267 <= k_fu_195_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                length_V_reg_276 <= length_V_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((val_assign7_loc_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                val_assign7_loc_read_reg_244 <= val_assign7_loc_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, val_assign7_loc_empty_n, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln879_fu_201_p2, icmp_ln879_reg_272, icmp_ln21_fu_190_p2, ap_CS_fsm_state5, icmp_ln879_4_fu_218_p2, icmp_ln11_fu_168_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((val_assign7_loc_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln11_fu_168_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln21_fu_190_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((icmp_ln21_fu_190_p2 = ap_const_lv1_0) and (icmp_ln879_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and ((icmp_ln879_4_fu_218_p2 = ap_const_lv1_0) or (icmp_ln879_reg_272 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, val_assign7_loc_empty_n)
    begin
                ap_block_state1 <= ((val_assign7_loc_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state3, icmp_ln21_fu_190_p2)
    begin
        if (((icmp_ln21_fu_190_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, icmp_ln21_fu_190_p2)
    begin
        if (((icmp_ln21_fu_190_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    codeword_length_histogram_V_address0 <= zext_ln544_fu_213_p1(6 - 1 downto 0);

    codeword_length_histogram_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            codeword_length_histogram_V_ce0 <= ap_const_logic_1;
        else 
            codeword_length_histogram_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    count_V_2_fu_229_p2 <= std_logic_vector(signed(ap_const_lv9_1FF) + signed(t_V_5_reg_151));
    i_fu_174_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_116) + unsigned(ap_const_lv9_1));
    icmp_ln11_fu_168_p2 <= "1" when (i_0_i_i_reg_116 = ap_const_lv9_100) else "0";
    icmp_ln21_fu_190_p2 <= "1" when (i_op_assign_reg_139 = val_assign7_loc_read_reg_244) else "0";
    icmp_ln879_4_fu_218_p2 <= "1" when (codeword_length_histogram_V_q0 = ap_const_lv9_0) else "0";
    icmp_ln879_fu_201_p2 <= "1" when (p_066_0_i_i_reg_127 = ap_const_lv9_0) else "0";
    k_fu_195_p2 <= std_logic_vector(unsigned(i_op_assign_reg_139) + unsigned(ap_const_lv9_1));
    length_V_fu_207_p2 <= std_logic_vector(unsigned(length_V_1_fu_58) + unsigned(ap_const_lv9_1FF));
    sorted_value_V_address0 <= zext_ln32_fu_224_p1(8 - 1 downto 0);

    sorted_value_V_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            sorted_value_V_ce0 <= ap_const_logic_1;
        else 
            sorted_value_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    symbol_bits_V_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state7, zext_ln12_fu_180_p1, zext_ln544_9_fu_235_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            symbol_bits_V_address0 <= zext_ln544_9_fu_235_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            symbol_bits_V_address0 <= zext_ln12_fu_180_p1(8 - 1 downto 0);
        else 
            symbol_bits_V_address0 <= "XXXXXXXX";
        end if; 
    end process;


    symbol_bits_V_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            symbol_bits_V_ce0 <= ap_const_logic_1;
        else 
            symbol_bits_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    symbol_bits_V_d0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state7, trunc_ln209_fu_239_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            symbol_bits_V_d0 <= trunc_ln209_fu_239_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            symbol_bits_V_d0 <= ap_const_lv5_0;
        else 
            symbol_bits_V_d0 <= "XXXXX";
        end if; 
    end process;


    symbol_bits_V_we0_assign_proc : process(ap_CS_fsm_state2, icmp_ln11_fu_168_p2, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or ((icmp_ln11_fu_168_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            symbol_bits_V_we0 <= ap_const_logic_1;
        else 
            symbol_bits_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln209_fu_239_p1 <= length_V_1_fu_58(5 - 1 downto 0);

    val_assign7_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, val_assign7_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            val_assign7_loc_blk_n <= val_assign7_loc_empty_n;
        else 
            val_assign7_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    val_assign7_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, val_assign7_loc_empty_n)
    begin
        if ((not(((val_assign7_loc_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            val_assign7_loc_read <= ap_const_logic_1;
        else 
            val_assign7_loc_read <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln12_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_i_reg_116),64));
    zext_ln32_fu_224_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_op_assign_reg_139),64));
    zext_ln544_9_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sorted_value_V_load_reg_299),64));
    zext_ln544_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(length_V_fu_207_p2),64));
end behav;
