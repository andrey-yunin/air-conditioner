-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from bb_average_value_B1_start_stall_region
-- VHDL created on Thu May 26 10:22:42 2022


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity bb_average_value_B1_start_stall_region is
    port (
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_average_value_B1_start_stall_region;

architecture normal of bb_average_value_B1_start_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_wt_entry_average_value_c0_enter_average_value is
        port (
            in_unnamed_average_value0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component average_value_B1_start_merge_reg is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_throttle_pop_average_value12 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iord_bl_do_unnamed_average_value1_average_value14 is
        port (
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B1_start_merge_reg_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B1_start_merge_reg_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_average_value_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_average_value_out_feedback_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_average_value_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_throttle_pop_average_value_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_average_value1_average_value_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_average_value1_average_value_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_do_unnamed_average_value1_average_value_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_acl_pop_i1_throttle_pop_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_acl_pop_i1_throttle_pop_average_value_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B1_start_merge_reg_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_average_value_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_average_value_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_pop_i1_throttle_pop_average_value_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_average_value1_average_value_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_average_value1_average_value_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_average_value1_average_value_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_do_unnamed_average_value1_average_value_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg(STALLENABLE,65)
    -- Valid signal propagation
    bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_V0 <= bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_s_tv_0 <= SE_out_i_iord_bl_do_unnamed_average_value1_average_value_backStall and bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backEN <= not (bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_v_s_0 <= bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backEN and SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_V0;
    -- Backward Stall generation
    bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backStall <= not (bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_v_s_0);
    bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backEN = "0") THEN
                bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0 and bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_s_tv_0;
            ELSE
                bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x(STALLENABLE,42)
    -- Valid signal propagation
    SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_V0 <= SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_backStall <= bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_backStall or not (SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_wireValid <= i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_o_valid;

    -- i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x(BLACKBOX,11)@1
    -- in in_i_stall@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x : i_sfc_c0_wt_entry_average_value_c0_enter_average_value
    PORT MAP (
        in_unnamed_average_value0_0 => GND_q,
        in_i_stall => SE_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_backStall,
        in_i_valid => SE_out_average_value_B1_start_merge_reg_V0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out => i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out => i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out,
        out_o_stall => i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,49)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= average_value_B1_start_merge_reg_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- average_value_B1_start_merge_reg(BLACKBOX,12)@0
    -- in in_stall_in@20000000
    -- out out_data_out@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theaverage_value_B1_start_merge_reg : average_value_B1_start_merge_reg
    PORT MAP (
        in_data_in => GND_q,
        in_stall_in => SE_out_average_value_B1_start_merge_reg_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_stall_out => average_value_B1_start_merge_reg_out_stall_out,
        out_valid_out => average_value_B1_start_merge_reg_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_average_value_B1_start_merge_reg(STALLENABLE,44)
    SE_out_average_value_B1_start_merge_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_average_value_B1_start_merge_reg_fromReg0 <= (others => '0');
            SE_out_average_value_B1_start_merge_reg_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_average_value_B1_start_merge_reg_fromReg0 <= SE_out_average_value_B1_start_merge_reg_toReg0;
            -- Succesor 1
            SE_out_average_value_B1_start_merge_reg_fromReg1 <= SE_out_average_value_B1_start_merge_reg_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_average_value_B1_start_merge_reg_consumed0 <= (not (i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_o_stall) and SE_out_average_value_B1_start_merge_reg_wireValid) or SE_out_average_value_B1_start_merge_reg_fromReg0;
    SE_out_average_value_B1_start_merge_reg_consumed1 <= (not (i_acl_pop_i1_throttle_pop_average_value_out_stall_out) and SE_out_average_value_B1_start_merge_reg_wireValid) or SE_out_average_value_B1_start_merge_reg_fromReg1;
    -- Consuming
    SE_out_average_value_B1_start_merge_reg_StallValid <= SE_out_average_value_B1_start_merge_reg_backStall and SE_out_average_value_B1_start_merge_reg_wireValid;
    SE_out_average_value_B1_start_merge_reg_toReg0 <= SE_out_average_value_B1_start_merge_reg_StallValid and SE_out_average_value_B1_start_merge_reg_consumed0;
    SE_out_average_value_B1_start_merge_reg_toReg1 <= SE_out_average_value_B1_start_merge_reg_StallValid and SE_out_average_value_B1_start_merge_reg_consumed1;
    -- Backward Stall generation
    SE_out_average_value_B1_start_merge_reg_or0 <= SE_out_average_value_B1_start_merge_reg_consumed0;
    SE_out_average_value_B1_start_merge_reg_wireStall <= not (SE_out_average_value_B1_start_merge_reg_consumed1 and SE_out_average_value_B1_start_merge_reg_or0);
    SE_out_average_value_B1_start_merge_reg_backStall <= SE_out_average_value_B1_start_merge_reg_wireStall;
    -- Valid signal propagation
    SE_out_average_value_B1_start_merge_reg_V0 <= SE_out_average_value_B1_start_merge_reg_wireValid and not (SE_out_average_value_B1_start_merge_reg_fromReg0);
    SE_out_average_value_B1_start_merge_reg_V1 <= SE_out_average_value_B1_start_merge_reg_wireValid and not (SE_out_average_value_B1_start_merge_reg_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_average_value_B1_start_merge_reg_wireValid <= average_value_B1_start_merge_reg_out_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_pop_i1_throttle_pop_average_value(BLACKBOX,23)@1
    -- in in_stall_in@20000000
    -- out out_data_out@2
    -- out out_feedback_stall_out_1@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@2
    thei_acl_pop_i1_throttle_pop_average_value : i_acl_pop_i1_throttle_pop_average_value12
    PORT MAP (
        in_data_in => GND_q,
        in_dir => GND_q,
        in_feedback_in_1 => in_feedback_in_1,
        in_feedback_valid_in_1 => in_feedback_valid_in_1,
        in_predicate => GND_q,
        in_stall_in => SE_out_i_acl_pop_i1_throttle_pop_average_value_backStall,
        in_valid_in => SE_out_average_value_B1_start_merge_reg_V1,
        out_data_out => i_acl_pop_i1_throttle_pop_average_value_out_data_out,
        out_feedback_stall_out_1 => i_acl_pop_i1_throttle_pop_average_value_out_feedback_stall_out_1,
        out_stall_out => i_acl_pop_i1_throttle_pop_average_value_out_stall_out,
        out_valid_out => i_acl_pop_i1_throttle_pop_average_value_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_pop_i1_throttle_pop_average_value(STALLENABLE,46)
    -- Valid signal propagation
    SE_out_i_acl_pop_i1_throttle_pop_average_value_V0 <= SE_out_i_acl_pop_i1_throttle_pop_average_value_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_pop_i1_throttle_pop_average_value_backStall <= i_iord_bl_do_unnamed_average_value1_average_value_out_o_stall or not (SE_out_i_acl_pop_i1_throttle_pop_average_value_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_pop_i1_throttle_pop_average_value_wireValid <= i_acl_pop_i1_throttle_pop_average_value_out_valid_out;

    -- SE_out_i_iord_bl_do_unnamed_average_value1_average_value(STALLENABLE,48)
    -- Valid signal propagation
    SE_out_i_iord_bl_do_unnamed_average_value1_average_value_V0 <= SE_out_i_iord_bl_do_unnamed_average_value1_average_value_wireValid;
    -- Backward Stall generation
    SE_out_i_iord_bl_do_unnamed_average_value1_average_value_backStall <= in_stall_in or not (SE_out_i_iord_bl_do_unnamed_average_value1_average_value_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_do_unnamed_average_value1_average_value_and0 <= i_iord_bl_do_unnamed_average_value1_average_value_out_o_valid;
    SE_out_i_iord_bl_do_unnamed_average_value1_average_value_wireValid <= bubble_out_i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_1_reg_V0 and SE_out_i_iord_bl_do_unnamed_average_value1_average_value_and0;

    -- bubble_join_i_acl_pop_i1_throttle_pop_average_value(BITJOIN,37)
    bubble_join_i_acl_pop_i1_throttle_pop_average_value_q <= i_acl_pop_i1_throttle_pop_average_value_out_data_out;

    -- bubble_select_i_acl_pop_i1_throttle_pop_average_value(BITSELECT,38)
    bubble_select_i_acl_pop_i1_throttle_pop_average_value_b <= STD_LOGIC_VECTOR(bubble_join_i_acl_pop_i1_throttle_pop_average_value_q(0 downto 0));

    -- i_iord_bl_do_unnamed_average_value1_average_value(BLACKBOX,24)@2
    -- in in_i_stall@20000000
    -- out out_iord_bl_do_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_do_unnamed_average_value1_average_value : i_iord_bl_do_unnamed_average_value1_average_value14
    PORT MAP (
        in_i_dependence => bubble_select_i_acl_pop_i1_throttle_pop_average_value_b,
        in_i_stall => SE_out_i_iord_bl_do_unnamed_average_value1_average_value_backStall,
        in_i_valid => SE_out_i_acl_pop_i1_throttle_pop_average_value_V0,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        out_iord_bl_do_o_fifoready => i_iord_bl_do_unnamed_average_value1_average_value_out_iord_bl_do_o_fifoready,
        out_o_stall => i_iord_bl_do_unnamed_average_value1_average_value_out_o_stall,
        out_o_valid => i_iord_bl_do_unnamed_average_value1_average_value_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,2)
    out_iord_bl_do_o_fifoready <= i_iord_bl_do_unnamed_average_value1_average_value_out_iord_bl_do_o_fifoready;

    -- dupName_0_sync_out_x(GPOUT,6)@2
    out_valid_out <= SE_out_i_iord_bl_do_unnamed_average_value1_average_value_V0;

    -- ext_sig_sync_out(GPOUT,19)
    out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out <= i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out <= i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out;

    -- feedback_stall_out_1_sync(GPOUT,21)
    out_feedback_stall_out_1 <= i_acl_pop_i1_throttle_pop_average_value_out_feedback_stall_out_1;

    -- pipeline_valid_out_sync(GPOUT,28)
    out_pipeline_valid_out <= i_sfc_c0_wt_entry_average_value_c0_enter_average_value_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,32)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
