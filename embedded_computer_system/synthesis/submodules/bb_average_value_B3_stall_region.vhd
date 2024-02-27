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

-- VHDL created from bb_average_value_B3_stall_region
-- VHDL created on Thu May 26 10:22:44 2022


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

entity bb_average_value_B3_stall_region is
    port (
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(63 downto 0);  -- ufix64
        out_iowr_nb_return_o_fifodata : out std_logic_vector(31 downto 0);  -- ufix32
        out_iowr_nb_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- ufix8
        in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_N : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_average_value_B3_stall_region;

architecture normal of bb_average_value_B3_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value is
        port (
            in_unnamed_average_value5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_N : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit18_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit18_1 : out std_logic_vector(31 downto 0);  -- Floating Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_throttle_push_average_value135 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_nb_return_unnamed_average_value8_average_value134 is
        port (
            in_i_data : in std_logic_vector(31 downto 0);  -- Floating Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_nb_return_o_fifodata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_iowr_nb_return_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_c0_exit18_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_throttle_push_average_value_out_feedback_out_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_throttle_push_average_value_out_feedback_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_throttle_push_average_value_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_throttle_push_average_value_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_nb_return_unnamed_average_value8_average_value_out_iowr_nb_return_o_fifodata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_iowr_nb_return_unnamed_average_value8_average_value_out_iowr_nb_return_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_nb_return_unnamed_average_value8_average_value_out_o_ack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_nb_return_unnamed_average_value8_average_value_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_nb_return_unnamed_average_value8_average_value_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_iowr_nb_return_unnamed_average_value8_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_iowr_nb_return_unnamed_average_value8_average_value_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_throttle_push_average_value_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_throttle_push_average_value_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_acl_push_i1_throttle_push_average_value_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,41)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_o_stall or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x(BLACKBOX,10)@0
    -- in in_i_stall@20000000
    -- out out_c0_exit18_0@28
    -- out out_c0_exit18_1@28
    -- out out_o_stall@20000000
    -- out out_o_valid@28
    thei_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x : i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value
    PORT MAP (
        in_unnamed_average_value5_0 => GND_q,
        in_N => in_N,
        in_i_stall => SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_backStall,
        in_i_valid => SE_stall_entry_V0,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        out_c0_exit18_1 => i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_c0_exit18_1,
        out_o_stall => i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x(STALLENABLE,36)
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_V0 <= SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_backStall <= i_iowr_nb_return_unnamed_average_value8_average_value_out_o_stall or not (SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_wireValid <= i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_o_valid;

    -- bubble_join_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x(BITJOIN,28)
    bubble_join_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_q <= i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_out_c0_exit18_1;

    -- bubble_select_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x(BITSELECT,29)
    bubble_select_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_q(31 downto 0));

    -- i_iowr_nb_return_unnamed_average_value8_average_value(BLACKBOX,19)@28
    -- in in_i_stall@20000000
    -- out out_iowr_nb_return_o_fifodata@20000000
    -- out out_iowr_nb_return_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_nb_return_unnamed_average_value8_average_value : i_iowr_nb_return_unnamed_average_value8_average_value134
    PORT MAP (
        in_i_data => bubble_select_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_b,
        in_i_stall => SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value_aunroll_x_V0,
        out_iowr_nb_return_o_fifodata => i_iowr_nb_return_unnamed_average_value8_average_value_out_iowr_nb_return_o_fifodata,
        out_iowr_nb_return_o_fifovalid => i_iowr_nb_return_unnamed_average_value8_average_value_out_iowr_nb_return_o_fifovalid,
        out_o_ack => i_iowr_nb_return_unnamed_average_value8_average_value_out_o_ack,
        out_o_stall => i_iowr_nb_return_unnamed_average_value8_average_value_out_o_stall,
        out_o_valid => i_iowr_nb_return_unnamed_average_value8_average_value_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_iowr_nb_return_unnamed_average_value8_average_value(STALLENABLE,40)
    -- Valid signal propagation
    SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_V0 <= SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_wireValid;
    -- Backward Stall generation
    SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_backStall <= i_acl_push_i1_throttle_push_average_value_out_stall_out or not (SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_wireValid <= i_iowr_nb_return_unnamed_average_value8_average_value_out_o_valid;

    -- bubble_join_i_iowr_nb_return_unnamed_average_value8_average_value(BITJOIN,32)
    bubble_join_i_iowr_nb_return_unnamed_average_value8_average_value_q <= i_iowr_nb_return_unnamed_average_value8_average_value_out_o_ack;

    -- bubble_select_i_iowr_nb_return_unnamed_average_value8_average_value(BITSELECT,33)
    bubble_select_i_iowr_nb_return_unnamed_average_value8_average_value_b <= STD_LOGIC_VECTOR(bubble_join_i_iowr_nb_return_unnamed_average_value8_average_value_q(0 downto 0));

    -- i_acl_push_i1_throttle_push_average_value(BLACKBOX,18)@28
    -- in in_stall_in@20000000
    -- out out_data_out@29
    -- out out_feedback_out_1@20000000
    -- out out_feedback_valid_out_1@20000000
    -- out out_stall_out@20000000
    -- out out_valid_out@29
    thei_acl_push_i1_throttle_push_average_value : i_acl_push_i1_throttle_push_average_value135
    PORT MAP (
        in_data_in => bubble_select_i_iowr_nb_return_unnamed_average_value8_average_value_b,
        in_feedback_stall_in_1 => in_feedback_stall_in_1,
        in_stall_in => SE_out_i_acl_push_i1_throttle_push_average_value_backStall,
        in_valid_in => SE_out_i_iowr_nb_return_unnamed_average_value8_average_value_V0,
        out_feedback_out_1 => i_acl_push_i1_throttle_push_average_value_out_feedback_out_1,
        out_feedback_valid_out_1 => i_acl_push_i1_throttle_push_average_value_out_feedback_valid_out_1,
        out_stall_out => i_acl_push_i1_throttle_push_average_value_out_stall_out,
        out_valid_out => i_acl_push_i1_throttle_push_average_value_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_acl_push_i1_throttle_push_average_value(STALLENABLE,38)
    -- Valid signal propagation
    SE_out_i_acl_push_i1_throttle_push_average_value_V0 <= SE_out_i_acl_push_i1_throttle_push_average_value_wireValid;
    -- Backward Stall generation
    SE_out_i_acl_push_i1_throttle_push_average_value_backStall <= in_stall_in or not (SE_out_i_acl_push_i1_throttle_push_average_value_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_acl_push_i1_throttle_push_average_value_wireValid <= i_acl_push_i1_throttle_push_average_value_out_valid_out;

    -- dupName_0_sync_out_x(GPOUT,6)@29
    out_valid_out <= SE_out_i_acl_push_i1_throttle_push_average_value_V0;

    -- ext_sig_sync_out(GPOUT,14)
    out_iowr_nb_return_o_fifodata <= i_iowr_nb_return_unnamed_average_value8_average_value_out_iowr_nb_return_o_fifodata;
    out_iowr_nb_return_o_fifovalid <= i_iowr_nb_return_unnamed_average_value8_average_value_out_iowr_nb_return_o_fifovalid;

    -- feedback_out_1_sync(GPOUT,15)
    out_feedback_out_1 <= i_acl_push_i1_throttle_push_average_value_out_feedback_out_1;

    -- feedback_valid_out_1_sync(GPOUT,17)
    out_feedback_valid_out_1 <= i_acl_push_i1_throttle_push_average_value_out_feedback_valid_out_1;

    -- sync_out(GPOUT,26)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
