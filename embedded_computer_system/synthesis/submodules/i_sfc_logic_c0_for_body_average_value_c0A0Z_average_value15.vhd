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

-- VHDL created from i_sfc_logic_c0_for_body_average_value_c0_enter12_average_value15
-- VHDL created on Tue May 03 12:42:13 2022


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

entity i_sfc_logic_c0_for_body_average_value_c0_enter12_average_value15 is
    port (
        out_unnamed_average_value2_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_average_value2_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_average_value2_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_average_value2_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_average_value2_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_average_value2_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_average_value2_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_N : in std_logic_vector(31 downto 0);  -- ufix32
        in_a : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(63 downto 0);  -- ufix64
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_average_value2_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_average_value2_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_average_value2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_average_value2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_average_value_c0_enter12_average_value15;

architecture normal of i_sfc_logic_c0_for_body_average_value_c0_enter12_average_value15 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_average_value21 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_i_036_pop6_average_value32 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups_pop9_average_value17 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_9 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations_pop8_average_value23 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i64_temp_0_0_035_pop7_average_value42 is
        port (
            in_data_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration_average_value30 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_average_value52 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_i_036_push6_average_value46 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups_push9_average_value55 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_9 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations_push8_average_value26 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i64_temp_0_0_035_push7_average_value44 is
        port (
            in_data_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_average_value3_average_value57 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_0_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_average_value4_average_value59 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_1_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_average_value2_average_value40 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_average_value2_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_syncbuf_a_sync_buffer_average_value34 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_n_sync_buffer4_average_value48 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_n_sync_buffer_average_value37 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add_i_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_inc_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cleanups_shl_average_value_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_conv_i_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups_average_value_average_value54_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_value_i_i_average_value_average_value36_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_value_i_i_average_value_average_value36_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_value_i_i_average_value_average_value36_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_value_i_i_average_value_average_value36_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_value_i_i_average_value_average_value36_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_value_i_i_average_value_average_value36_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i64_0gr_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_4294967295_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_pipeline_keep_going_average_value_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_average_value_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_average_value_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_average_value_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_average_value_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_average_value_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_i_036_pop6_average_value_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_036_pop6_average_value_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop9_average_value_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop9_average_value_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop8_average_value_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop8_average_value_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_average_value_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_average_value_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_average_value_out_feedback_out_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_average_value_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_i_036_push6_average_value_out_feedback_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_036_push6_average_value_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push9_average_value_out_feedback_out_9 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push9_average_value_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push8_average_value_out_feedback_out_8 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push8_average_value_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i64_temp_0_0_035_push7_average_value_out_feedback_out_7 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i64_temp_0_0_035_push7_average_value_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_i_i_average_value_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_add_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_add_i_i_average_value_vt_select_32_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cleanups_shl_average_value_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_average_value_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp34_phi_decision5_xor_rm_average_value_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp34_phi_decision5_xor_rm_average_value_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp34_phi_decision5_xor_rm_average_value_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp34_phi_decision5_xor_rm_average_value_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv4_i_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv4_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv4_i_i_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i26_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i26_average_value_vt_select_32_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_average_value3_average_value_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_src_unnamed_average_value4_average_value_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_first_cleanup_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor_or_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_last_initeration_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_masked_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_next_initerations_average_value_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations_average_value_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notexit_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_a_sync_buffer_average_value_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_n_sync_buffer4_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_sync_buffer_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value19_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_average_value19_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_average_value19_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value28_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_average_value28_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value51_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid136_i_next_cleanups_average_value_average_value54_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid143_i_next_initerations_average_value_average_value25_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid145_i_next_initerations_average_value_average_value25_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_24_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_24_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_25_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_25_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_26_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_26_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_join_27_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_28_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_28_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_29_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_29_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_30_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_30_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_align_31_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_join_32_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_conv_i_i26_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv_i_i26_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value28_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value28_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (2 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im12_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im12_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im15_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im15_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im18_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im18_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im21_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_im21_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (8 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_f : STD_LOGIC_VECTOR (8 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_g : STD_LOGIC_VECTOR (8 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_h : STD_LOGIC_VECTOR (8 downto 0);
    signal i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_i : STD_LOGIC_VECTOR (8 downto 0);
    signal redist0_i_unnamed_average_value51_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_average_value51_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_first_cleanup_average_value_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_first_cleanup_average_value_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pipeline_keep_going_average_value_out_data_out_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni1_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_c0_eni1_1_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c_i4_0gr(CONSTANT,50)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_average_value_vt_const_3(CONSTANT,74)
    i_cleanups_shl_average_value_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,51)
    c_i4_1gr_q <= "0001";

    -- redist8_sync_in_aunroll_x_in_i_valid_1(DELAY,208)
    redist8_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist8_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_aunroll_x_in_i_valid_3(DELAY,209)
    redist9_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_1_q, xout => redist9_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist2_i_first_cleanup_average_value_q_3(DELAY,202)
    redist2_i_first_cleanup_average_value_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_first_cleanup_average_value_q, xout => redist2_i_first_cleanup_average_value_q_3_q, clk => clock, aclr => resetn );

    -- i_syncbuf_n_sync_buffer4_average_value(BLACKBOX,107)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_n_sync_buffer4_average_value : i_syncbuf_n_sync_buffer4_average_value48
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_sync_buffer4_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,49)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_acl_push_i32_i_036_push6_average_value(BLACKBOX,65)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i32_i_036_push6_average_value : i_acl_push_i32_i_036_push6_average_value46
    PORT MAP (
        in_data_in => bgTrunc_i_inc_average_value_sel_x_b,
        in_feedback_stall_in_6 => i_acl_pop_i32_i_036_pop6_average_value_out_feedback_stall_out_6,
        in_keep_going => i_acl_pipeline_keep_going_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i32_i_036_push6_average_value_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i32_i_036_push6_average_value_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,48)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_i_036_pop6_average_value(BLACKBOX,59)@1
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i32_i_036_pop6_average_value : i_acl_pop_i32_i_036_pop6_average_value32
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_6 => i_acl_push_i32_i_036_push6_average_value_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i32_i_036_push6_average_value_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_i_036_pop6_average_value_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i32_i_036_pop6_average_value_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_average_value(ADD,97)@1
    i_inc_average_value_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_i_036_pop6_average_value_out_data_out);
    i_inc_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_average_value_a) + UNSIGNED(i_inc_average_value_b));
    i_inc_average_value_q <= i_inc_average_value_o(32 downto 0);

    -- bgTrunc_i_inc_average_value_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc_average_value_sel_x_b <= i_inc_average_value_q(31 downto 0);

    -- i_exitcond_average_value(LOGICAL,90)@1
    i_exitcond_average_value_q <= "1" WHEN bgTrunc_i_inc_average_value_sel_x_b = i_syncbuf_n_sync_buffer4_average_value_out_buffer_out ELSE "0";

    -- i_unnamed_average_value51(LOGICAL,117)@1
    i_unnamed_average_value51_q <= i_exitcond_average_value_q or i_cmp34_phi_decision5_xor_rm_average_value_c;

    -- redist0_i_unnamed_average_value51_q_3(DELAY,200)
    redist0_i_unnamed_average_value51_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_average_value51_q, xout => redist0_i_unnamed_average_value51_q_3_q, clk => clock, aclr => resetn );

    -- i_notexit_average_value(LOGICAL,104)@4
    i_notexit_average_value_q <= redist0_i_unnamed_average_value51_q_3_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_average_value(BLACKBOX,64)@4
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i1_notexitcond_average_value : i_acl_push_i1_notexitcond_average_value52
    PORT MAP (
        in_data_in => i_notexit_average_value_q,
        in_feedback_stall_in_3 => i_acl_pipeline_keep_going_average_value_out_not_exitcond_stall_out,
        in_first_cleanup => redist2_i_first_cleanup_average_value_q_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_3 => i_acl_push_i1_notexitcond_average_value_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i1_notexitcond_average_value_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1(DELAY,204)
    redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_average_value_out_data_out, xout => redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0Idx1Rng1_uid143_i_next_initerations_average_value_average_value25_shift_x(BITSELECT,142)@2
    rightShiftStage0Idx1Rng1_uid143_i_next_initerations_average_value_average_value25_shift_x_b <= i_acl_pop_i4_initerations_pop8_average_value_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid145_i_next_initerations_average_value_average_value25_shift_x(BITJOIN,144)@2
    rightShiftStage0Idx1_uid145_i_next_initerations_average_value_average_value25_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid143_i_next_initerations_average_value_average_value25_shift_x_b;

    -- i_acl_push_i4_initerations_push8_average_value(BLACKBOX,67)@2
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i4_initerations_push8_average_value : i_acl_push_i4_initerations_push8_average_value26
    PORT MAP (
        in_data_in => i_next_initerations_average_value_vt_join_q,
        in_feedback_stall_in_8 => i_acl_pop_i4_initerations_pop8_average_value_out_feedback_stall_out_8,
        in_keep_going => redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- redist6_sync_in_aunroll_x_in_c0_eni1_1_1(DELAY,206)
    redist6_sync_in_aunroll_x_in_c0_eni1_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni1_1, xout => redist6_sync_in_aunroll_x_in_c0_eni1_1_1_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i4_initerations_pop8_average_value(BLACKBOX,61)@2
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i4_initerations_pop8_average_value : i_acl_pop_i4_initerations_pop8_average_value23
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist6_sync_in_aunroll_x_in_c0_eni1_1_1_q,
        in_feedback_in_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i4_initerations_pop8_average_value_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i4_initerations_pop8_average_value_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x(MUX,146)@2
    rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_s <= VCC_q;
    rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_combproc: PROCESS (rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_s, i_acl_pop_i4_initerations_pop8_average_value_out_data_out, rightShiftStage0Idx1_uid145_i_next_initerations_average_value_average_value25_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_q <= i_acl_pop_i4_initerations_pop8_average_value_out_data_out;
            WHEN "1" => rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_q <= rightShiftStage0Idx1_uid145_i_next_initerations_average_value_average_value25_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_average_value_vt_select_2(BITSELECT,103)@2
    i_next_initerations_average_value_vt_select_2_b <= rightShiftStage0_uid147_i_next_initerations_average_value_average_value25_shift_x_q(2 downto 0);

    -- i_next_initerations_average_value_vt_join(BITJOIN,102)@2
    i_next_initerations_average_value_vt_join_q <= GND_q & i_next_initerations_average_value_vt_select_2_b;

    -- i_unnamed_average_value28_BitSelect_for_a(BITSELECT,189)@2
    i_unnamed_average_value28_BitSelect_for_a_b <= i_next_initerations_average_value_vt_join_q(0 downto 0);

    -- i_unnamed_average_value28_join(BITJOIN,190)@2
    i_unnamed_average_value28_join_q <= GND_q & GND_q & GND_q & i_unnamed_average_value28_BitSelect_for_a_b;

    -- i_unnamed_average_value28_vt_select_0(BITSELECT,116)@2
    i_unnamed_average_value28_vt_select_0_b <= i_unnamed_average_value28_join_q(0 downto 0);

    -- i_unnamed_average_value28_vt_join(BITJOIN,115)@2
    i_unnamed_average_value28_vt_join_q <= i_cleanups_shl_average_value_vt_const_3_q & i_unnamed_average_value28_vt_select_0_b;

    -- i_last_initeration_average_value(LOGICAL,98)@2
    i_last_initeration_average_value_q <= "1" WHEN i_unnamed_average_value28_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_average_value(BLACKBOX,63)@2
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_lastiniteration_average_value : i_acl_push_i1_lastiniteration_average_value30
    PORT MAP (
        in_data_in => i_last_initeration_average_value_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_average_value_out_initeration_stall_out,
        in_keep_going => redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_2 => i_acl_push_i1_lastiniteration_average_value_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_lastiniteration_average_value_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_average_value(BLACKBOX,58)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_average_value : i_acl_pipeline_keep_going_average_value21
    PORT MAP (
        in_data_in => in_c0_eni1_1,
        in_initeration_in => i_acl_push_i1_lastiniteration_average_value_out_feedback_out_2,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration_average_value_out_feedback_valid_out_2,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_average_value_out_feedback_out_3,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_average_value_out_feedback_valid_out_3,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pipeline_keep_going_average_value_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going_average_value_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_average_value_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going_average_value_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_average_value_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_average_value_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x(BITSELECT,134)@1
    leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x_in <= i_acl_pop_i4_cleanups_pop9_average_value_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x_b <= leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid136_i_next_cleanups_average_value_average_value54_shift_x(BITJOIN,135)@1
    leftShiftStage0Idx1_uid136_i_next_cleanups_average_value_average_value54_shift_x_q <= leftShiftStage0Idx1Rng1_uid135_i_next_cleanups_average_value_average_value54_shift_x_b & GND_q;

    -- i_or_average_value(LOGICAL,105)@1
    i_or_average_value_q <= i_unnamed_average_value51_q or i_xor_average_value_q;

    -- i_cleanups_shl_average_value_sel_x(BITSELECT,21)@1
    i_cleanups_shl_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_or_average_value_q(0 downto 0)), 4));

    -- i_cleanups_shl_average_value_vt_select_0(BITSELECT,76)@1
    i_cleanups_shl_average_value_vt_select_0_b <= i_cleanups_shl_average_value_sel_x_b(0 downto 0);

    -- i_cleanups_shl_average_value_vt_join(BITJOIN,75)@1
    i_cleanups_shl_average_value_vt_join_q <= i_cleanups_shl_average_value_vt_const_3_q & i_cleanups_shl_average_value_vt_select_0_b;

    -- i_next_cleanups_average_value_average_value54_shift_narrow_x(BITSELECT,27)@1
    i_next_cleanups_average_value_average_value54_shift_narrow_x_b <= i_cleanups_shl_average_value_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x(BITSELECT,136)@1
    leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x_in <= i_next_cleanups_average_value_average_value54_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x_b <= leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x(MUX,137)@1
    leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_s <= leftShiftStageSel0Dto0_uid137_i_next_cleanups_average_value_average_value54_shift_x_b;
    leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_combproc: PROCESS (leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_s, i_acl_pop_i4_cleanups_pop9_average_value_out_data_out, leftShiftStage0Idx1_uid136_i_next_cleanups_average_value_average_value54_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_q <= i_acl_pop_i4_cleanups_pop9_average_value_out_data_out;
            WHEN "1" => leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_q <= leftShiftStage0Idx1_uid136_i_next_cleanups_average_value_average_value54_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push9_average_value(BLACKBOX,66)@1
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i4_cleanups_push9_average_value : i_acl_push_i4_cleanups_push9_average_value55
    PORT MAP (
        in_data_in => leftShiftStage0_uid138_i_next_cleanups_average_value_average_value54_shift_x_q,
        in_feedback_stall_in_9 => i_acl_pop_i4_cleanups_pop9_average_value_out_feedback_stall_out_9,
        in_keep_going => i_acl_pipeline_keep_going_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_9 => i_acl_push_i4_cleanups_push9_average_value_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i4_cleanups_push9_average_value_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_7gr(CONSTANT,52)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop9_average_value(BLACKBOX,60)@1
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i4_cleanups_pop9_average_value : i_acl_pop_i4_cleanups_pop9_average_value17
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_9 => i_acl_push_i4_cleanups_push9_average_value_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i4_cleanups_push9_average_value_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i4_cleanups_pop9_average_value_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i4_cleanups_pop9_average_value_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_average_value19(LOGICAL,109)@1
    i_unnamed_average_value19_q <= i_acl_pop_i4_cleanups_pop9_average_value_out_data_out and c_i4_1gr_q;

    -- i_unnamed_average_value19_vt_select_0(BITSELECT,112)@1
    i_unnamed_average_value19_vt_select_0_b <= i_unnamed_average_value19_q(0 downto 0);

    -- i_unnamed_average_value19_vt_join(BITJOIN,111)@1
    i_unnamed_average_value19_vt_join_q <= i_cleanups_shl_average_value_vt_const_3_q & i_unnamed_average_value19_vt_select_0_b;

    -- i_first_cleanup_average_value(LOGICAL,93)@1
    i_first_cleanup_average_value_q <= "1" WHEN i_unnamed_average_value19_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_xor_average_value(LOGICAL,118)@1
    i_xor_average_value_q <= i_first_cleanup_average_value_q xor VCC_q;

    -- i_syncbuf_n_sync_buffer_average_value(BLACKBOX,108)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_n_sync_buffer_average_value : i_syncbuf_n_sync_buffer_average_value37
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_sync_buffer_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp34_phi_decision5_xor_rm_average_value(COMPARE,77)@1
    i_cmp34_phi_decision5_xor_rm_average_value_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_n_sync_buffer_average_value_out_buffer_out(31)) & i_syncbuf_n_sync_buffer_average_value_out_buffer_out));
    i_cmp34_phi_decision5_xor_rm_average_value_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp34_phi_decision5_xor_rm_average_value_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp34_phi_decision5_xor_rm_average_value_a) - SIGNED(i_cmp34_phi_decision5_xor_rm_average_value_b));
    i_cmp34_phi_decision5_xor_rm_average_value_c(0) <= i_cmp34_phi_decision5_xor_rm_average_value_o(33);

    -- i_first_cleanup_xor_or_average_value(LOGICAL,94)@1
    i_first_cleanup_xor_or_average_value_q <= i_cmp34_phi_decision5_xor_rm_average_value_c or i_xor_average_value_q;

    -- i_value_i_i_average_value_average_value36_mult_multconst_x(CONSTANT,36)
    i_value_i_i_average_value_average_value36_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom_average_value_sel_x(BITSELECT,23)@1
    i_idxprom_average_value_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_acl_pop_i32_i_036_pop6_average_value_out_data_out(31 downto 0)), 64)));

    -- i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select(BITSELECT,199)@1
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_b <= i_idxprom_average_value_sel_x_b(8 downto 0);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_c <= i_idxprom_average_value_sel_x_b(62 downto 54);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_d <= i_idxprom_average_value_sel_x_b(17 downto 9);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_e <= i_idxprom_average_value_sel_x_b(63 downto 63);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_f <= i_idxprom_average_value_sel_x_b(26 downto 18);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_g <= i_idxprom_average_value_sel_x_b(35 downto 27);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_h <= i_idxprom_average_value_sel_x_b(44 downto 36);
    i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_i <= i_idxprom_average_value_sel_x_b(53 downto 45);

    -- i_value_i_i_average_value_average_value36_mult_x_im9_shift0(BITSHIFT,194)@1
    i_value_i_i_average_value_average_value36_mult_x_im9_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_e & "00";
    i_value_i_i_average_value_average_value36_mult_x_im9_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im9_shift0_qint(2 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_31(BITSHIFT,179)@1
    i_value_i_i_average_value_average_value36_mult_x_align_31_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im9_shift0_q) & "000000";
    i_value_i_i_average_value_average_value36_mult_x_align_31_q <= i_value_i_i_average_value_average_value36_mult_x_align_31_qint(9 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_im21_shift0(BITSHIFT,198)@1
    i_value_i_i_average_value_average_value36_mult_x_im21_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_i & "00";
    i_value_i_i_average_value_average_value36_mult_x_im21_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im21_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_30(BITSHIFT,178)@1
    i_value_i_i_average_value_average_value36_mult_x_align_30_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im21_shift0_q) & "000000";
    i_value_i_i_average_value_average_value36_mult_x_align_30_q <= i_value_i_i_average_value_average_value36_mult_x_align_30_qint(17 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_im15_shift0(BITSHIFT,196)@1
    i_value_i_i_average_value_average_value36_mult_x_im15_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_g & "00";
    i_value_i_i_average_value_average_value36_mult_x_im15_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im15_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_29(BITSHIFT,177)@1
    i_value_i_i_average_value_average_value36_mult_x_align_29_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im15_shift0_q) & "000000";
    i_value_i_i_average_value_average_value36_mult_x_align_29_q <= i_value_i_i_average_value_average_value36_mult_x_align_29_qint(17 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_im6_shift0(BITSHIFT,193)@1
    i_value_i_i_average_value_average_value36_mult_x_im6_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_d & "00";
    i_value_i_i_average_value_average_value36_mult_x_im6_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im6_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_28(BITSHIFT,176)@1
    i_value_i_i_average_value_average_value36_mult_x_align_28_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im6_shift0_q) & "000000000";
    i_value_i_i_average_value_average_value36_mult_x_align_28_q <= i_value_i_i_average_value_average_value36_mult_x_align_28_qint(20 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_join_32(BITJOIN,180)@1
    i_value_i_i_average_value_average_value36_mult_x_join_32_q <= i_value_i_i_average_value_average_value36_mult_x_align_31_q & i_value_i_i_average_value_average_value36_mult_x_align_30_q & i_value_i_i_average_value_average_value36_mult_x_align_29_q & i_value_i_i_average_value_average_value36_mult_x_align_28_q;

    -- i_value_i_i_average_value_average_value36_mult_x_im3_shift0(BITSHIFT,192)@1
    i_value_i_i_average_value_average_value36_mult_x_im3_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_c & "00";
    i_value_i_i_average_value_average_value36_mult_x_im3_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im3_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_26(BITSHIFT,174)@1
    i_value_i_i_average_value_average_value36_mult_x_align_26_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im3_shift0_q) & "000000";
    i_value_i_i_average_value_average_value36_mult_x_align_26_q <= i_value_i_i_average_value_average_value36_mult_x_align_26_qint(17 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_im18_shift0(BITSHIFT,197)@1
    i_value_i_i_average_value_average_value36_mult_x_im18_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_h & "00";
    i_value_i_i_average_value_average_value36_mult_x_im18_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im18_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_25(BITSHIFT,173)@1
    i_value_i_i_average_value_average_value36_mult_x_align_25_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im18_shift0_q) & "000000";
    i_value_i_i_average_value_average_value36_mult_x_align_25_q <= i_value_i_i_average_value_average_value36_mult_x_align_25_qint(17 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_im12_shift0(BITSHIFT,195)@1
    i_value_i_i_average_value_average_value36_mult_x_im12_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_f & "00";
    i_value_i_i_average_value_average_value36_mult_x_im12_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im12_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_align_24(BITSHIFT,172)@1
    i_value_i_i_average_value_average_value36_mult_x_align_24_qint <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im12_shift0_q) & "000000";
    i_value_i_i_average_value_average_value36_mult_x_align_24_q <= i_value_i_i_average_value_average_value36_mult_x_align_24_qint(17 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_im0_shift0(BITSHIFT,191)@1
    i_value_i_i_average_value_average_value36_mult_x_im0_shift0_qint <= i_value_i_i_average_value_average_value36_mult_x_bs1_merged_bit_select_b & "00";
    i_value_i_i_average_value_average_value36_mult_x_im0_shift0_q <= i_value_i_i_average_value_average_value36_mult_x_im0_shift0_qint(10 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_x_join_27(BITJOIN,175)@1
    i_value_i_i_average_value_average_value36_mult_x_join_27_q <= i_value_i_i_average_value_average_value36_mult_x_align_26_q & i_value_i_i_average_value_average_value36_mult_x_align_25_q & i_value_i_i_average_value_average_value36_mult_x_align_24_q & STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_im0_shift0_q);

    -- i_value_i_i_average_value_average_value36_mult_x_result_add_0_0(ADD,181)@1
    i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00" & i_value_i_i_average_value_average_value36_mult_x_join_27_q);
    i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_mult_x_join_32_q);
    i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_a) + UNSIGNED(i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_b));
    i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_q <= i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_o(67 downto 0);

    -- i_value_i_i_average_value_average_value36_mult_extender_x(BITJOIN,35)@1
    i_value_i_i_average_value_average_value36_mult_extender_x_q <= i_value_i_i_average_value_average_value36_mult_multconst_x_q & i_value_i_i_average_value_average_value36_mult_x_result_add_0_0_q(66 downto 0);

    -- i_value_i_i_average_value_average_value36_trunc_sel_x(BITSELECT,37)@1
    i_value_i_i_average_value_average_value36_trunc_sel_x_b <= i_value_i_i_average_value_average_value36_mult_extender_x_q(63 downto 0);

    -- i_syncbuf_a_sync_buffer_average_value(BLACKBOX,106)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_a_sync_buffer_average_value : i_syncbuf_a_sync_buffer_average_value34
    PORT MAP (
        in_buffer_in => in_a,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_a_sync_buffer_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_value_i_i_average_value_average_value36_add_x(ADD,38)@1
    i_value_i_i_average_value_average_value36_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_a_sync_buffer_average_value_out_buffer_out);
    i_value_i_i_average_value_average_value36_add_x_b <= STD_LOGIC_VECTOR("0" & i_value_i_i_average_value_average_value36_trunc_sel_x_b);
    i_value_i_i_average_value_average_value36_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_value_i_i_average_value_average_value36_add_x_a) + UNSIGNED(i_value_i_i_average_value_average_value36_add_x_b));
    i_value_i_i_average_value_average_value36_add_x_q <= i_value_i_i_average_value_average_value36_add_x_o(64 downto 0);

    -- i_value_i_i_average_value_average_value36_dupName_0_trunc_sel_x(BITSELECT,32)@1
    i_value_i_i_average_value_average_value36_dupName_0_trunc_sel_x_b <= i_value_i_i_average_value_average_value36_add_x_q(63 downto 0);

    -- i_load_unnamed_average_value2_average_value(BLACKBOX,99)@1
    -- in in_i_stall@20000000
    -- out out_o_readdata@5
    -- out out_o_stall@4
    -- out out_o_valid@5
    -- out out_unnamed_average_value2_avm_address@20000000
    -- out out_unnamed_average_value2_avm_burstcount@20000000
    -- out out_unnamed_average_value2_avm_byteenable@20000000
    -- out out_unnamed_average_value2_avm_enable@20000000
    -- out out_unnamed_average_value2_avm_read@20000000
    -- out out_unnamed_average_value2_avm_write@20000000
    -- out out_unnamed_average_value2_avm_writedata@20000000
    thei_load_unnamed_average_value2_average_value : i_load_unnamed_average_value2_average_value40
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_value_i_i_average_value_average_value36_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_first_cleanup_xor_or_average_value_q,
        in_i_stall => GND_q,
        in_i_valid => in_i_valid,
        in_unnamed_average_value2_avm_readdata => in_unnamed_average_value2_avm_readdata,
        in_unnamed_average_value2_avm_readdatavalid => in_unnamed_average_value2_avm_readdatavalid,
        in_unnamed_average_value2_avm_waitrequest => in_unnamed_average_value2_avm_waitrequest,
        in_unnamed_average_value2_avm_writeack => in_unnamed_average_value2_avm_writeack,
        out_o_readdata => i_load_unnamed_average_value2_average_value_out_o_readdata,
        out_unnamed_average_value2_avm_address => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_address,
        out_unnamed_average_value2_avm_burstcount => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_burstcount,
        out_unnamed_average_value2_avm_byteenable => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_byteenable,
        out_unnamed_average_value2_avm_enable => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_enable,
        out_unnamed_average_value2_avm_read => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_read,
        out_unnamed_average_value2_avm_write => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_write,
        out_unnamed_average_value2_avm_writedata => i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,5)
    out_unnamed_average_value2_avm_address <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_address;
    out_unnamed_average_value2_avm_enable <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_enable;
    out_unnamed_average_value2_avm_read <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_read;
    out_unnamed_average_value2_avm_write <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_write;
    out_unnamed_average_value2_avm_writedata <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_writedata;
    out_unnamed_average_value2_avm_byteenable <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_byteenable;
    out_unnamed_average_value2_avm_burstcount <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_burstcount;

    -- redist10_sync_in_aunroll_x_in_i_valid_4(DELAY,210)
    redist10_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_3_q, xout => redist10_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- i_conv_i_i_average_value_sel_x(BITSELECT,22)@5
    i_conv_i_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_load_unnamed_average_value2_average_value_out_o_readdata(31 downto 0)), 64));

    -- i_conv_i_i_average_value_vt_select_31(BITSELECT,89)@5
    i_conv_i_i_average_value_vt_select_31_b <= i_conv_i_i_average_value_sel_x_b(31 downto 0);

    -- i_conv_i_i_average_value_vt_join(BITJOIN,88)@5
    i_conv_i_i_average_value_vt_join_q <= c_i32_0gr_q & i_conv_i_i_average_value_vt_select_31_b;

    -- redist3_i_first_cleanup_average_value_q_4(DELAY,203)
    redist3_i_first_cleanup_average_value_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_first_cleanup_average_value_q_3_q, xout => redist3_i_first_cleanup_average_value_q_4_q, clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_average_value4_average_value(BLACKBOX,92)@5
    -- out out_intel_reserved_ffwd_1_0@20000000
    thei_ffwd_src_unnamed_average_value4_average_value : i_ffwd_src_unnamed_average_value4_average_value59
    PORT MAP (
        in_enable_in => redist3_i_first_cleanup_average_value_q_4_q,
        in_src_data_in_1_0 => i_conv_i_i_average_value_vt_join_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_4_q,
        out_intel_reserved_ffwd_1_0 => i_ffwd_src_unnamed_average_value4_average_value_out_intel_reserved_ffwd_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_add_i_i_average_value_vt_const_63(CONSTANT,70)
    i_add_i_i_average_value_vt_const_63_q <= "0000000000000000000000000000000";

    -- c_i64_4294967295(CONSTANT,54)
    c_i64_4294967295_q <= "0000000000000000000000000000000011111111111111111111111111111111";

    -- i_conv4_i_i_average_value(LOGICAL,78)@5
    i_conv4_i_i_average_value_q <= i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_data_out and c_i64_4294967295_q;

    -- i_conv4_i_i_average_value_vt_select_31(BITSELECT,81)@5
    i_conv4_i_i_average_value_vt_select_31_b <= i_conv4_i_i_average_value_q(31 downto 0);

    -- i_conv4_i_i_average_value_vt_join(BITJOIN,80)@5
    i_conv4_i_i_average_value_vt_join_q <= c_i32_0gr_q & i_conv4_i_i_average_value_vt_select_31_b;

    -- i_add_i_i_average_value(ADD,69)@5
    i_add_i_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_conv_i_i_average_value_vt_join_q);
    i_add_i_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_conv4_i_i_average_value_vt_join_q);
    i_add_i_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_i_average_value_a) + UNSIGNED(i_add_i_i_average_value_b));
    i_add_i_i_average_value_q <= i_add_i_i_average_value_o(64 downto 0);

    -- bgTrunc_i_add_i_i_average_value_sel_x(BITSELECT,2)@5
    bgTrunc_i_add_i_i_average_value_sel_x_b <= i_add_i_i_average_value_q(63 downto 0);

    -- i_add_i_i_average_value_vt_select_32(BITSELECT,72)@5
    i_add_i_i_average_value_vt_select_32_b <= bgTrunc_i_add_i_i_average_value_sel_x_b(32 downto 0);

    -- i_add_i_i_average_value_vt_join(BITJOIN,71)@5
    i_add_i_i_average_value_vt_join_q <= i_add_i_i_average_value_vt_const_63_q & i_add_i_i_average_value_vt_select_32_b;

    -- i_conv_i_i26_average_value_BitSelect_for_a(BITSELECT,185)@5
    i_conv_i_i26_average_value_BitSelect_for_a_b <= i_add_i_i_average_value_vt_join_q(32 downto 0);

    -- i_conv_i_i26_average_value_join(BITJOIN,186)@5
    i_conv_i_i26_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv_i_i26_average_value_BitSelect_for_a_b;

    -- i_conv_i_i26_average_value_vt_select_32(BITSELECT,85)@5
    i_conv_i_i26_average_value_vt_select_32_b <= i_conv_i_i26_average_value_join_q(32 downto 0);

    -- i_conv_i_i26_average_value_vt_join(BITJOIN,84)@5
    i_conv_i_i26_average_value_vt_join_q <= i_add_i_i_average_value_vt_const_63_q & i_conv_i_i26_average_value_vt_select_32_b;

    -- i_acl_push_i64_temp_0_0_035_push7_average_value(BLACKBOX,68)@5
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i64_temp_0_0_035_push7_average_value : i_acl_push_i64_temp_0_0_035_push7_average_value44
    PORT MAP (
        in_data_in => i_conv_i_i26_average_value_vt_join_q,
        in_feedback_stall_in_7 => i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_feedback_stall_out_7,
        in_keep_going => redist5_i_acl_pipeline_keep_going_average_value_out_data_out_4_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_4_q,
        out_feedback_out_7 => i_acl_push_i64_temp_0_0_035_push7_average_value_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i64_temp_0_0_035_push7_average_value_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist7_sync_in_aunroll_x_in_c0_eni1_1_4(DELAY,207)
    redist7_sync_in_aunroll_x_in_c0_eni1_1_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_c0_eni1_1_1_q, xout => redist7_sync_in_aunroll_x_in_c0_eni1_1_4_q, clk => clock, aclr => resetn );

    -- c_i64_0gr(CONSTANT,53)
    c_i64_0gr_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- i_acl_pop_i64_temp_0_0_035_pop7_average_value(BLACKBOX,62)@5
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i64_temp_0_0_035_pop7_average_value : i_acl_pop_i64_temp_0_0_035_pop7_average_value42
    PORT MAP (
        in_data_in => c_i64_0gr_q,
        in_dir => redist7_sync_in_aunroll_x_in_c0_eni1_1_4_q,
        in_feedback_in_7 => i_acl_push_i64_temp_0_0_035_push7_average_value_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i64_temp_0_0_035_push7_average_value_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_4_q,
        out_data_out => i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_average_value3_average_value(BLACKBOX,91)@5
    -- out out_intel_reserved_ffwd_0_0@20000000
    thei_ffwd_src_unnamed_average_value3_average_value : i_ffwd_src_unnamed_average_value3_average_value57
    PORT MAP (
        in_enable_in => redist3_i_first_cleanup_average_value_q_4_q,
        in_src_data_in_0_0 => i_acl_pop_i64_temp_0_0_035_pop7_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_4_q,
        out_intel_reserved_ffwd_0_0 => i_ffwd_src_unnamed_average_value3_average_value_out_intel_reserved_ffwd_0_0,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_unnamed_average_value51_q_4(DELAY,201)
    redist1_i_unnamed_average_value51_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_average_value51_q_3_q, xout => redist1_i_unnamed_average_value51_q_4_q, clk => clock, aclr => resetn );

    -- i_masked_average_value(LOGICAL,100)@5
    i_masked_average_value_q <= redist1_i_unnamed_average_value51_q_4_q and redist3_i_first_cleanup_average_value_q_4_q;

    -- redist5_i_acl_pipeline_keep_going_average_value_out_data_out_4(DELAY,205)
    redist5_i_acl_pipeline_keep_going_average_value_out_data_out_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_acl_pipeline_keep_going_average_value_out_data_out_1_q, xout => redist5_i_acl_pipeline_keep_going_average_value_out_data_out_4_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,43)@5
    out_c0_exi2_0 <= GND_q;
    out_c0_exi2_1 <= redist5_i_acl_pipeline_keep_going_average_value_out_data_out_4_q;
    out_c0_exi2_2 <= i_masked_average_value_q;
    out_intel_reserved_ffwd_0_0 <= i_ffwd_src_unnamed_average_value3_average_value_out_intel_reserved_ffwd_0_0;
    out_intel_reserved_ffwd_1_0 <= i_ffwd_src_unnamed_average_value4_average_value_out_intel_reserved_ffwd_1_0;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_4_q;

    -- ext_sig_sync_out(GPOUT,57)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out <= i_acl_pipeline_keep_going_average_value_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out <= i_acl_pipeline_keep_going_average_value_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,125)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_average_value_out_pipeline_valid_out;

END normal;
