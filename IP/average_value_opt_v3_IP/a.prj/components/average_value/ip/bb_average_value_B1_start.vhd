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

-- VHDL created from bb_average_value_B1_start
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

entity bb_average_value_B1_start is
    port (
        in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_N : in std_logic_vector(31 downto 0);  -- ufix32
        in_a : in std_logic_vector(63 downto 0);  -- ufix64
        in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_average_value_B1_start;

architecture normal of bb_average_value_B1_start is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component average_value_B1_start_branch is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component average_value_B1_start_merge is
        port (
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_average_value_B1_start_stall_region is
        port (
            in_feedback_in_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifodata : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_do_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_do_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal average_value_B1_start_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B1_start_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B1_start_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B1_start_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal average_value_B1_start_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_feedback_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_iord_bl_do_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_average_value_B1_start_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- average_value_B1_start_merge(BLACKBOX,3)
    theaverage_value_B1_start_merge : average_value_B1_start_merge
    PORT MAP (
        in_stall_in => bb_average_value_B1_start_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_stall_out_0 => average_value_B1_start_merge_out_stall_out_0,
        out_stall_out_1 => average_value_B1_start_merge_out_stall_out_1,
        out_valid_out => average_value_B1_start_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- average_value_B1_start_branch(BLACKBOX,2)
    theaverage_value_B1_start_branch : average_value_B1_start_branch
    PORT MAP (
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_average_value_B1_start_stall_region_out_valid_out,
        out_stall_out => average_value_B1_start_branch_out_stall_out,
        out_valid_out_0 => average_value_B1_start_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_average_value_B1_start_stall_region(BLACKBOX,4)
    thebb_average_value_B1_start_stall_region : bb_average_value_B1_start_stall_region
    PORT MAP (
        in_feedback_in_1 => in_feedback_in_1,
        in_feedback_valid_in_1 => in_feedback_valid_in_1,
        in_iord_bl_do_i_fifodata => in_iord_bl_do_i_fifodata,
        in_iord_bl_do_i_fifovalid => in_iord_bl_do_i_fifovalid,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => average_value_B1_start_branch_out_stall_out,
        in_valid_in => average_value_B1_start_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out => bb_average_value_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out => bb_average_value_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out,
        out_feedback_stall_out_1 => bb_average_value_B1_start_stall_region_out_feedback_stall_out_1,
        out_iord_bl_do_o_fifoready => bb_average_value_B1_start_stall_region_out_iord_bl_do_o_fifoready,
        out_pipeline_valid_out => bb_average_value_B1_start_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_average_value_B1_start_stall_region_out_stall_out,
        out_valid_out => bb_average_value_B1_start_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- feedback_stall_out_1_sync(GPOUT,6)
    out_feedback_stall_out_1 <= bb_average_value_B1_start_stall_region_out_feedback_stall_out_1;

    -- out_exiting_stall_out(GPOUT,15)
    out_exiting_stall_out <= bb_average_value_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,16)
    out_exiting_valid_out <= bb_average_value_B1_start_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going9_average_value_exiting_valid_out;

    -- out_iord_bl_do_o_fifoready(GPOUT,17)
    out_iord_bl_do_o_fifoready <= bb_average_value_B1_start_stall_region_out_iord_bl_do_o_fifoready;

    -- out_stall_out_0(GPOUT,18)
    out_stall_out_0 <= average_value_B1_start_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,19)
    out_stall_out_1 <= average_value_B1_start_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,20)
    out_valid_out_0 <= average_value_B1_start_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,22)
    out_pipeline_valid_out <= bb_average_value_B1_start_stall_region_out_pipeline_valid_out;

END normal;
