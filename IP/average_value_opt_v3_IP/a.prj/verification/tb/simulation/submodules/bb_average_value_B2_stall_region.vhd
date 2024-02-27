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

-- VHDL created from bb_average_value_B2_stall_region
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

entity bb_average_value_B2_stall_region is
    port (
        out_unnamed_average_value2_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_average_value2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_average_value2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_average_value2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_average_value2_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_average_value2_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_average_value2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_a : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(63 downto 0);  -- ufix64
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_average_value2_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_average_value2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_average_value2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_average_value2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_N : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_average_value_B2_stall_region;

architecture normal of bb_average_value_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component average_value_B2_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value is
        port (
            in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_N : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_a : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit14_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit14_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit14_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_average_value2_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B2_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B2_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B2_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_c0_exit14_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_average_value_B2_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_average_value_B2_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B2_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B2_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_average_value_B2_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,42)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= average_value_B2_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,35)
    bubble_join_stall_entry_q <= in_forked;

    -- bubble_select_stall_entry(BITSELECT,36)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));

    -- average_value_B2_merge_reg_aunroll_x(BLACKBOX,2)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theaverage_value_B2_merge_reg_aunroll_x : average_value_B2_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_average_value_B2_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => average_value_B2_merge_reg_aunroll_x_out_data_out_0,
        out_stall_out => average_value_B2_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => average_value_B2_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_average_value_B2_merge_reg_aunroll_x(STALLENABLE,39)
    -- Valid signal propagation
    SE_out_average_value_B2_merge_reg_aunroll_x_V0 <= SE_out_average_value_B2_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_average_value_B2_merge_reg_aunroll_x_backStall <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_o_stall or not (SE_out_average_value_B2_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_average_value_B2_merge_reg_aunroll_x_wireValid <= average_value_B2_merge_reg_aunroll_x_out_valid_out;

    -- SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x(STALLENABLE,41)
    -- Valid signal propagation
    SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_V0 <= SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_wireValid <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_o_valid;

    -- bubble_join_average_value_B2_merge_reg_aunroll_x(BITJOIN,28)
    bubble_join_average_value_B2_merge_reg_aunroll_x_q <= average_value_B2_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_average_value_B2_merge_reg_aunroll_x(BITSELECT,29)
    bubble_select_average_value_B2_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_average_value_B2_merge_reg_aunroll_x_q(0 downto 0));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x(BLACKBOX,11)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit14_0@10
    -- out out_c0_exit14_1@10
    -- out out_c0_exit14_2@10
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out@20000000
    -- out out_intel_reserved_ffwd_0_0@20000000
    -- out out_intel_reserved_ffwd_1_0@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@10
    -- out out_pipeline_valid_out@20000000
    -- out out_unnamed_average_value2_avm_address@20000000
    -- out out_unnamed_average_value2_avm_burstcount@20000000
    -- out out_unnamed_average_value2_avm_byteenable@20000000
    -- out out_unnamed_average_value2_avm_enable@20000000
    -- out out_unnamed_average_value2_avm_read@20000000
    -- out out_unnamed_average_value2_avm_write@20000000
    -- out out_unnamed_average_value2_avm_writedata@20000000
    thei_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x : i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value
    PORT MAP (
        in_c0_eni1_0 => GND_q,
        in_c0_eni1_1 => bubble_select_average_value_B2_merge_reg_aunroll_x_b,
        in_N => in_N,
        in_a => in_a,
        in_flush => in_flush,
        in_i_stall => SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_backStall,
        in_i_valid => SE_out_average_value_B2_merge_reg_aunroll_x_V0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_unnamed_average_value2_avm_readdata => in_unnamed_average_value2_avm_readdata,
        in_unnamed_average_value2_avm_readdatavalid => in_unnamed_average_value2_avm_readdatavalid,
        in_unnamed_average_value2_avm_waitrequest => in_unnamed_average_value2_avm_waitrequest,
        in_unnamed_average_value2_avm_writeack => in_unnamed_average_value2_avm_writeack,
        out_c0_exit14_2 => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_c0_exit14_2,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out,
        out_intel_reserved_ffwd_0_0 => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_1_0 => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_intel_reserved_ffwd_1_0,
        out_o_stall => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_pipeline_valid_out,
        out_unnamed_average_value2_avm_address => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_address,
        out_unnamed_average_value2_avm_burstcount => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_burstcount,
        out_unnamed_average_value2_avm_byteenable => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_byteenable,
        out_unnamed_average_value2_avm_enable => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_enable,
        out_unnamed_average_value2_avm_read => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_read,
        out_unnamed_average_value2_avm_write => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_write,
        out_unnamed_average_value2_avm_writedata => i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_unnamed_average_value2_avm_address <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_address;
    out_unnamed_average_value2_avm_enable <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_enable;
    out_unnamed_average_value2_avm_read <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_read;
    out_unnamed_average_value2_avm_write <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_write;
    out_unnamed_average_value2_avm_writedata <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_writedata;
    out_unnamed_average_value2_avm_byteenable <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_byteenable;
    out_unnamed_average_value2_avm_burstcount <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_unnamed_average_value2_avm_burstcount;

    -- dupName_0_regfree_osync_x(GPOUT,7)
    out_intel_reserved_ffwd_1_0 <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_intel_reserved_ffwd_1_0;

    -- bubble_join_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x(BITJOIN,31)
    bubble_join_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_q <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_c0_exit14_2;

    -- bubble_select_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x(BITSELECT,32)
    bubble_select_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_q(0 downto 0));

    -- dupName_0_sync_out_x(GPOUT,9)@10
    out_c0_exe2 <= bubble_select_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_b;
    out_valid_out <= SE_out_i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_V0;

    -- ext_sig_sync_out(GPOUT,16)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,20)
    out_pipeline_valid_out <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,22)
    out_intel_reserved_ffwd_0_0 <= i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value_aunroll_x_out_intel_reserved_ffwd_0_0;

    -- sync_out(GPOUT,26)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
