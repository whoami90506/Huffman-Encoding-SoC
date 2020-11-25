-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Block_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    extLd_loc_dout : IN STD_LOGIC_VECTOR (8 downto 0);
    extLd_loc_empty_n : IN STD_LOGIC;
    extLd_loc_read : OUT STD_LOGIC;
    num_nonzero_symbols : OUT STD_LOGIC_VECTOR (31 downto 0);
    num_nonzero_symbols_ap_vld : OUT STD_LOGIC );
end;


architecture behav of Block_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal extLd_loc_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal extLd_fu_35_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal num_nonzero_symbols_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


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
                elsif ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    num_nonzero_symbols_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                num_nonzero_symbols_preg(0) <= '0';
                num_nonzero_symbols_preg(1) <= '0';
                num_nonzero_symbols_preg(2) <= '0';
                num_nonzero_symbols_preg(3) <= '0';
                num_nonzero_symbols_preg(4) <= '0';
                num_nonzero_symbols_preg(5) <= '0';
                num_nonzero_symbols_preg(6) <= '0';
                num_nonzero_symbols_preg(7) <= '0';
                num_nonzero_symbols_preg(8) <= '0';
            else
                if ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                                        num_nonzero_symbols_preg(8 downto 0) <= extLd_fu_35_p1(8 downto 0);
                end if; 
            end if;
        end if;
    end process;

    num_nonzero_symbols_preg(31 downto 9) <= "00000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, extLd_loc_empty_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, extLd_loc_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, extLd_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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


    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, extLd_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    extLd_fu_35_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(extLd_loc_dout),32));

    extLd_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, extLd_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            extLd_loc_blk_n <= extLd_loc_empty_n;
        else 
            extLd_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    extLd_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, extLd_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            extLd_loc_read <= ap_const_logic_1;
        else 
            extLd_loc_read <= ap_const_logic_0;
        end if; 
    end process;


    num_nonzero_symbols_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, extLd_loc_empty_n, extLd_fu_35_p1, num_nonzero_symbols_preg)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            num_nonzero_symbols <= extLd_fu_35_p1;
        else 
            num_nonzero_symbols <= num_nonzero_symbols_preg;
        end if; 
    end process;


    num_nonzero_symbols_ap_vld_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, extLd_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (extLd_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            num_nonzero_symbols_ap_vld <= ap_const_logic_1;
        else 
            num_nonzero_symbols_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;