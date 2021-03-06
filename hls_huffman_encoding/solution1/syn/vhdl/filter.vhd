-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filter is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    in_value_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    in_value_V_ce0 : OUT STD_LOGIC;
    in_value_V_q0 : IN STD_LOGIC_VECTOR (8 downto 0);
    in_frequency_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    in_frequency_V_ce0 : OUT STD_LOGIC;
    in_frequency_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_value_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_value_V_ce0 : OUT STD_LOGIC;
    out_value_V_we0 : OUT STD_LOGIC;
    out_value_V_d0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    out_frequency_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_frequency_V_ce0 : OUT STD_LOGIC;
    out_frequency_V_we0 : OUT STD_LOGIC;
    out_frequency_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    n_out_din : OUT STD_LOGIC_VECTOR (8 downto 0);
    n_out_full_n : IN STD_LOGIC;
    n_out_write : OUT STD_LOGIC );
end;


architecture behav of filter is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal n_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal i_0_i_reg_131 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln11_fu_151_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_157_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal zext_ln13_fu_163_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln13_reg_205 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln13_reg_205_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal in_frequency_V_load_reg_215 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln883_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln883_reg_221 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln883_reg_221_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln544_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln544_reg_225 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln544_reg_225_pp0_iter3_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal in_value_V_load_reg_235 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal t_V_fu_68 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_V_fu_178_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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
                elsif (((n_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln11_fu_151_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_0_i_reg_131 <= i_fu_157_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_reg_131 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    t_V_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln883_fu_168_p2 = ap_const_lv1_0))) then 
                t_V_fu_68 <= j_V_fu_178_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_fu_68 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln883_reg_221 <= icmp_ln883_fu_168_p2;
                icmp_ln883_reg_221_pp0_iter3_reg <= icmp_ln883_reg_221;
                    zext_ln544_reg_225_pp0_iter3_reg(8 downto 0) <= zext_ln544_reg_225(8 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                in_frequency_V_load_reg_215 <= in_frequency_V_q0;
                    zext_ln13_reg_205_pp0_iter1_reg(8 downto 0) <= zext_ln13_reg_205(8 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln883_reg_221 = ap_const_lv1_0))) then
                in_value_V_load_reg_235 <= in_value_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln11_fu_151_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    zext_ln13_reg_205(8 downto 0) <= zext_ln13_fu_163_p1(8 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln883_fu_168_p2 = ap_const_lv1_0))) then
                    zext_ln544_reg_225(8 downto 0) <= zext_ln544_fu_173_p1(8 downto 0);
            end if;
        end if;
    end process;
    zext_ln13_reg_205(63 downto 9) <= "0000000000000000000000000000000000000000000000000000000";
    zext_ln13_reg_205_pp0_iter1_reg(63 downto 9) <= "0000000000000000000000000000000000000000000000000000000";
    zext_ln544_reg_225(63 downto 9) <= "0000000000000000000000000000000000000000000000000000000";
    zext_ln544_reg_225_pp0_iter3_reg(63 downto 9) <= "0000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, n_out_full_n, ap_CS_fsm_state7, icmp_ln11_fu_151_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln11_fu_151_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((icmp_ln11_fu_151_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                if (((n_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln11_fu_151_p2)
    begin
        if ((icmp_ln11_fu_151_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, n_out_full_n, ap_CS_fsm_state7)
    begin
        if (((n_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    i_fu_157_p2 <= std_logic_vector(unsigned(i_0_i_reg_131) + unsigned(ap_const_lv9_1));
    icmp_ln11_fu_151_p2 <= "1" when (i_0_i_reg_131 = ap_const_lv9_100) else "0";
    icmp_ln883_fu_168_p2 <= "1" when (in_frequency_V_load_reg_215 = ap_const_lv32_0) else "0";
    in_frequency_V_address0 <= zext_ln13_fu_163_p1(8 - 1 downto 0);

    in_frequency_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in_frequency_V_ce0 <= ap_const_logic_1;
        else 
            in_frequency_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_value_V_address0 <= zext_ln13_reg_205_pp0_iter1_reg(8 - 1 downto 0);

    in_value_V_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            in_value_V_ce0 <= ap_const_logic_1;
        else 
            in_value_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(n_out_full_n, ap_CS_fsm_state7)
    begin
        if (((n_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_178_p2 <= std_logic_vector(unsigned(t_V_fu_68) + unsigned(ap_const_lv9_1));

    n_out_blk_n_assign_proc : process(n_out_full_n, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            n_out_blk_n <= n_out_full_n;
        else 
            n_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    n_out_din <= t_V_fu_68;

    n_out_write_assign_proc : process(n_out_full_n, ap_CS_fsm_state7)
    begin
        if (((n_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            n_out_write <= ap_const_logic_1;
        else 
            n_out_write <= ap_const_logic_0;
        end if; 
    end process;

    out_frequency_V_address0 <= zext_ln544_fu_173_p1(8 - 1 downto 0);

    out_frequency_V_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            out_frequency_V_ce0 <= ap_const_logic_1;
        else 
            out_frequency_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_frequency_V_d0 <= in_frequency_V_load_reg_215;

    out_frequency_V_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln883_fu_168_p2, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln883_fu_168_p2 = ap_const_lv1_0))) then 
            out_frequency_V_we0 <= ap_const_logic_1;
        else 
            out_frequency_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    out_value_V_address0 <= zext_ln544_reg_225_pp0_iter3_reg(8 - 1 downto 0);

    out_value_V_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            out_value_V_ce0 <= ap_const_logic_1;
        else 
            out_value_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_value_V_d0 <= in_value_V_load_reg_235;

    out_value_V_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln883_reg_221_pp0_iter3_reg, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (icmp_ln883_reg_221_pp0_iter3_reg = ap_const_lv1_0))) then 
            out_value_V_we0 <= ap_const_logic_1;
        else 
            out_value_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln13_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_reg_131),64));
    zext_ln544_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_V_fu_68),64));
end behav;
