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

-- VHDL created from i_sfc_logic_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value15
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

entity i_sfc_logic_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value15 is
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
end i_sfc_logic_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value15;

architecture normal of i_sfc_logic_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_m_z_exit_average_value_c0_enter12_average_value15 is

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


    component i_acl_pop_i32_i_039_pop6_average_value32 is
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


    component i_acl_pop_i64_temp_0_0_038_pop7_average_value47 is
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


    component i_acl_push_i1_notexitcond_average_value57 is
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


    component i_acl_push_i32_i_039_push6_average_value51 is
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


    component i_acl_push_i4_cleanups_push9_average_value60 is
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


    component i_acl_push_i64_temp_0_0_038_push7_average_value49 is
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


    component i_ffwd_src_unnamed_average_value3_average_value62 is
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


    component i_ffwd_src_unnamed_average_value4_average_value64 is
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
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Floating Point
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


    component i_syncbuf_n_sync_buffer4_average_value53 is
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
    signal bgTrunc_i_sub_i_i_average_value_sel_x_b : STD_LOGIC_VECTOR (279 downto 0);
    signal i_arrayidx2_average_value_average_value36_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx2_average_value_average_value36_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx2_average_value_average_value36_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx2_average_value_average_value36_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx2_average_value_average_value36_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx2_average_value_average_value36_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_cleanups_shl_average_value_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_conv_i_i_i1_i_average_value_sel_x_b : STD_LOGIC_VECTOR (279 downto 0);
    signal i_conv_i_i_i_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups_average_value_average_value59_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom_i_i_i5_i_average_value_sel_x_b : STD_LOGIC_VECTOR (279 downto 0);
    signal i_shl_i_i_i_i_average_value_average_value45_shift_narrow_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal c_i280_0gr_q : STD_LOGIC_VECTOR (279 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8388607_q : STD_LOGIC_VECTOR (31 downto 0);
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
    signal i_acl_pop_i32_i_039_pop6_average_value_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_039_pop6_average_value_out_feedback_stall_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop9_average_value_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop9_average_value_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop8_average_value_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop8_average_value_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_average_value_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_average_value_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_average_value_out_feedback_out_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_average_value_out_feedback_valid_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_i_039_push6_average_value_out_feedback_out_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_039_push6_average_value_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push9_average_value_out_feedback_out_9 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push9_average_value_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push8_average_value_out_feedback_out_8 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push8_average_value_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i64_temp_0_0_038_push7_average_value_out_feedback_out_7 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i64_temp_0_0_038_push7_average_value_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_i_i_average_value_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_add_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_add_i_i_average_value_vt_select_32_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_and3_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_and3_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and3_i_average_value_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and4_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and4_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_and4_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and4_i_average_value_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_cleanups_shl_average_value_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_average_value_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_phi_decision5_xor_rm_average_value_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp37_phi_decision5_xor_rm_average_value_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp37_phi_decision5_xor_rm_average_value_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp37_phi_decision5_xor_rm_average_value_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i_average_value_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_conv4_i_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv4_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv4_i_i_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i24_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i24_average_value_vt_select_32_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv_i_i26_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i26_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_i26_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i_i1_i_average_value_vt_const_279_q : STD_LOGIC_VECTOR (256 downto 0);
    signal i_conv_i_i_i1_i_average_value_vt_join_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_conv_i_i_i1_i_average_value_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
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
    signal i_or_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_or_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_i_average_value_vt_select_22_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_sh_prom_i_i_i5_i_average_value_vt_const_279_q : STD_LOGIC_VECTOR (271 downto 0);
    signal i_sh_prom_i_i_i5_i_average_value_vt_join_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_sh_prom_i_i_i5_i_average_value_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_shr2_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (22 downto 0);
    signal i_shr2_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr2_i_average_value_vt_select_8_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_shr_i_i_i_i36_average_value_vt_const_279_q : STD_LOGIC_VECTOR (133 downto 0);
    signal i_shr_i_i_i_i36_average_value_vt_join_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_shr_i_i_i_i36_average_value_vt_select_145_b : STD_LOGIC_VECTOR (145 downto 0);
    signal i_sub_i_i_average_value_a : STD_LOGIC_VECTOR (280 downto 0);
    signal i_sub_i_i_average_value_b : STD_LOGIC_VECTOR (280 downto 0);
    signal i_sub_i_i_average_value_o : STD_LOGIC_VECTOR (280 downto 0);
    signal i_sub_i_i_average_value_q : STD_LOGIC_VECTOR (280 downto 0);
    signal i_syncbuf_a_sync_buffer_average_value_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_n_sync_buffer4_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_sync_buffer_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value19_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_average_value19_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_average_value19_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value28_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_average_value28_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value56_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_24_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_24_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_25_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_25_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_26_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_26_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_join_27_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_28_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_28_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_29_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_29_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_30_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_30_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_align_31_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_join_32_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid225_i_next_cleanups_average_value_average_value59_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid232_i_next_initerations_average_value_average_value25_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid234_i_next_initerations_average_value_average_value25_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (247 downto 0);
    signal leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (247 downto 0);
    signal leftShiftStage0Idx1_uid243_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (215 downto 0);
    signal leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (215 downto 0);
    signal leftShiftStage0Idx2_uid246_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx3Pad96_uid247_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (95 downto 0);
    signal leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (183 downto 0);
    signal leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (183 downto 0);
    signal leftShiftStage0Idx3_uid249_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx4Pad128_uid250_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (151 downto 0);
    signal leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (151 downto 0);
    signal leftShiftStage0Idx4_uid252_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx5Pad160_uid253_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (159 downto 0);
    signal leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (119 downto 0);
    signal leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (119 downto 0);
    signal leftShiftStage0Idx5_uid255_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx6Pad192_uid256_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (87 downto 0);
    signal leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (87 downto 0);
    signal leftShiftStage0Idx6_uid258_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0Idx7Pad224_uid259_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (223 downto 0);
    signal leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx7_uid261_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (275 downto 0);
    signal leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (275 downto 0);
    signal leftShiftStage1Idx1_uid266_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx2Pad8_uid267_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (271 downto 0);
    signal leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (271 downto 0);
    signal leftShiftStage1Idx2_uid269_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx3Pad12_uid270_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (267 downto 0);
    signal leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (267 downto 0);
    signal leftShiftStage1Idx3_uid272_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx4Pad16_uid273_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (263 downto 0);
    signal leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (263 downto 0);
    signal leftShiftStage1Idx4_uid275_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx5Pad20_uid276_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (259 downto 0);
    signal leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (259 downto 0);
    signal leftShiftStage1Idx5_uid278_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (255 downto 0);
    signal leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (255 downto 0);
    signal leftShiftStage1Idx6_uid281_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1Idx7Pad28_uid282_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (251 downto 0);
    signal leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (251 downto 0);
    signal leftShiftStage1Idx7_uid284_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (278 downto 0);
    signal leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (278 downto 0);
    signal leftShiftStage2Idx1_uid289_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2Idx2Pad2_uid290_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (277 downto 0);
    signal leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (277 downto 0);
    signal leftShiftStage2Idx2_uid292_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x_in : STD_LOGIC_VECTOR (276 downto 0);
    signal leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x_b : STD_LOGIC_VECTOR (276 downto 0);
    signal leftShiftStage2Idx3_uid295_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage0Idx1Rng16_uid302_i_shr2_i_average_value_average_value44_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid304_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng4_uid307_i_shr2_i_average_value_average_value44_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage1Idx1_uid309_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng2_uid312_i_shr2_i_average_value_average_value44_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage2Idx1_uid314_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3Idx1Rng1_uid317_i_shr2_i_average_value_average_value44_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage3Idx1_uid319_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng128_uid326_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b : STD_LOGIC_VECTOR (151 downto 0);
    signal rightShiftStage0Idx1_uid328_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage1Idx1Rng4_uid331_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b : STD_LOGIC_VECTOR (275 downto 0);
    signal rightShiftStage1Idx1_uid333_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage2Idx1Rng2_uid336_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b : STD_LOGIC_VECTOR (277 downto 0);
    signal rightShiftStage2Idx1_uid338_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q : STD_LOGIC_VECTOR (279 downto 0);
    signal i_and3_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and3_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_i24_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv_i_i24_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_or_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value28_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value28_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (2 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im12_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im12_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im15_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im15_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im18_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im18_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im21_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_im21_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_tobool_i_average_value_cmp_sign_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool_i_average_value_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_f : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_g : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_h : STD_LOGIC_VECTOR (8 downto 0);
    signal i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_i : STD_LOGIC_VECTOR (8 downto 0);
    signal leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_unnamed_average_value56_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_average_value56_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_first_cleanup_average_value_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_first_cleanup_average_value_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_first_cleanup_average_value_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_conv_i_i26_average_value_vt_select_31_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_acl_pipeline_keep_going_average_value_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_c0_eni1_1_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- c_i4_0gr(CONSTANT,72)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_average_value_vt_const_3(CONSTANT,104)
    i_cleanups_shl_average_value_vt_const_3_q <= "000";

    -- c_i4_1gr(CONSTANT,73)
    c_i4_1gr_q <= "0001";

    -- redist8_sync_in_aunroll_x_in_i_valid_3(DELAY,377)
    redist8_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist8_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist2_i_first_cleanup_average_value_q_3(DELAY,371)
    redist2_i_first_cleanup_average_value_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_first_cleanup_average_value_q, xout => redist2_i_first_cleanup_average_value_q_3_q, clk => clock, aclr => resetn );

    -- i_syncbuf_n_sync_buffer4_average_value(BLACKBOX,158)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_n_sync_buffer4_average_value : i_syncbuf_n_sync_buffer4_average_value53
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_sync_buffer4_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,67)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_acl_push_i32_i_039_push6_average_value(BLACKBOX,87)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i32_i_039_push6_average_value : i_acl_push_i32_i_039_push6_average_value51
    PORT MAP (
        in_data_in => bgTrunc_i_inc_average_value_sel_x_b,
        in_feedback_stall_in_6 => i_acl_pop_i32_i_039_pop6_average_value_out_feedback_stall_out_6,
        in_keep_going => i_acl_pipeline_keep_going_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i32_i_039_push6_average_value_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i32_i_039_push6_average_value_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,66)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_i_039_pop6_average_value(BLACKBOX,81)@1
    -- out out_feedback_stall_out_6@20000000
    thei_acl_pop_i32_i_039_pop6_average_value : i_acl_pop_i32_i_039_pop6_average_value32
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_6 => i_acl_push_i32_i_039_push6_average_value_out_feedback_out_6,
        in_feedback_valid_in_6 => i_acl_push_i32_i_039_push6_average_value_out_feedback_valid_out_6,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_i_039_pop6_average_value_out_data_out,
        out_feedback_stall_out_6 => i_acl_pop_i32_i_039_pop6_average_value_out_feedback_stall_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_average_value(ADD,133)@1
    i_inc_average_value_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_i_039_pop6_average_value_out_data_out);
    i_inc_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_average_value_a) + UNSIGNED(i_inc_average_value_b));
    i_inc_average_value_q <= i_inc_average_value_o(32 downto 0);

    -- bgTrunc_i_inc_average_value_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc_average_value_sel_x_b <= i_inc_average_value_q(31 downto 0);

    -- i_exitcond_average_value(LOGICAL,126)@1
    i_exitcond_average_value_q <= "1" WHEN bgTrunc_i_inc_average_value_sel_x_b = i_syncbuf_n_sync_buffer4_average_value_out_buffer_out ELSE "0";

    -- i_unnamed_average_value56(LOGICAL,170)@1
    i_unnamed_average_value56_q <= i_exitcond_average_value_q or i_cmp37_phi_decision5_xor_rm_average_value_c;

    -- redist0_i_unnamed_average_value56_q_3(DELAY,369)
    redist0_i_unnamed_average_value56_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_average_value56_q, xout => redist0_i_unnamed_average_value56_q_3_q, clk => clock, aclr => resetn );

    -- i_notexit_average_value(LOGICAL,140)@4
    i_notexit_average_value_q <= redist0_i_unnamed_average_value56_q_3_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_average_value(BLACKBOX,86)@4
    -- out out_feedback_out_3@20000000
    -- out out_feedback_valid_out_3@20000000
    thei_acl_push_i1_notexitcond_average_value : i_acl_push_i1_notexitcond_average_value57
    PORT MAP (
        in_data_in => i_notexit_average_value_q,
        in_feedback_stall_in_3 => i_acl_pipeline_keep_going_average_value_out_not_exitcond_stall_out,
        in_first_cleanup => redist2_i_first_cleanup_average_value_q_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_3 => i_acl_push_i1_notexitcond_average_value_out_feedback_out_3,
        out_feedback_valid_out_3 => i_acl_push_i1_notexitcond_average_value_out_feedback_valid_out_3,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0Idx1Rng1_uid232_i_next_initerations_average_value_average_value25_shift_x(BITSELECT,231)@1
    rightShiftStage0Idx1Rng1_uid232_i_next_initerations_average_value_average_value25_shift_x_b <= i_acl_pop_i4_initerations_pop8_average_value_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid234_i_next_initerations_average_value_average_value25_shift_x(BITJOIN,233)@1
    rightShiftStage0Idx1_uid234_i_next_initerations_average_value_average_value25_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid232_i_next_initerations_average_value_average_value25_shift_x_b;

    -- i_acl_push_i4_initerations_push8_average_value(BLACKBOX,89)@1
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i4_initerations_push8_average_value : i_acl_push_i4_initerations_push8_average_value26
    PORT MAP (
        in_data_in => i_next_initerations_average_value_vt_join_q,
        in_feedback_stall_in_8 => i_acl_pop_i4_initerations_pop8_average_value_out_feedback_stall_out_8,
        in_keep_going => i_acl_pipeline_keep_going_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_initerations_pop8_average_value(BLACKBOX,83)@1
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i4_initerations_pop8_average_value : i_acl_pop_i4_initerations_pop8_average_value23
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i4_initerations_push8_average_value_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i4_initerations_pop8_average_value_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i4_initerations_pop8_average_value_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x(MUX,235)@1
    rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_s <= VCC_q;
    rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_combproc: PROCESS (rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_s, i_acl_pop_i4_initerations_pop8_average_value_out_data_out, rightShiftStage0Idx1_uid234_i_next_initerations_average_value_average_value25_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_q <= i_acl_pop_i4_initerations_pop8_average_value_out_data_out;
            WHEN "1" => rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_q <= rightShiftStage0Idx1_uid234_i_next_initerations_average_value_average_value25_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_average_value_vt_select_2(BITSELECT,139)@1
    i_next_initerations_average_value_vt_select_2_b <= rightShiftStage0_uid236_i_next_initerations_average_value_average_value25_shift_x_q(2 downto 0);

    -- i_next_initerations_average_value_vt_join(BITJOIN,138)@1
    i_next_initerations_average_value_vt_join_q <= GND_q & i_next_initerations_average_value_vt_select_2_b;

    -- i_unnamed_average_value28_BitSelect_for_a(BITSELECT,355)@1
    i_unnamed_average_value28_BitSelect_for_a_b <= i_next_initerations_average_value_vt_join_q(0 downto 0);

    -- i_unnamed_average_value28_join(BITJOIN,356)@1
    i_unnamed_average_value28_join_q <= GND_q & GND_q & GND_q & i_unnamed_average_value28_BitSelect_for_a_b;

    -- i_unnamed_average_value28_vt_select_0(BITSELECT,168)@1
    i_unnamed_average_value28_vt_select_0_b <= i_unnamed_average_value28_join_q(0 downto 0);

    -- i_unnamed_average_value28_vt_join(BITJOIN,167)@1
    i_unnamed_average_value28_vt_join_q <= i_cleanups_shl_average_value_vt_const_3_q & i_unnamed_average_value28_vt_select_0_b;

    -- i_last_initeration_average_value(LOGICAL,134)@1
    i_last_initeration_average_value_q <= "1" WHEN i_unnamed_average_value28_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_average_value(BLACKBOX,85)@1
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_lastiniteration_average_value : i_acl_push_i1_lastiniteration_average_value30
    PORT MAP (
        in_data_in => i_last_initeration_average_value_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_average_value_out_initeration_stall_out,
        in_keep_going => i_acl_pipeline_keep_going_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_2 => i_acl_push_i1_lastiniteration_average_value_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_lastiniteration_average_value_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_average_value(BLACKBOX,80)@1
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

    -- leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x(BITSELECT,223)@1
    leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x_in <= i_acl_pop_i4_cleanups_pop9_average_value_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x_b <= leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid225_i_next_cleanups_average_value_average_value59_shift_x(BITJOIN,224)@1
    leftShiftStage0Idx1_uid225_i_next_cleanups_average_value_average_value59_shift_x_q <= leftShiftStage0Idx1Rng1_uid224_i_next_cleanups_average_value_average_value59_shift_x_b & GND_q;

    -- i_or_average_value(LOGICAL,141)@1
    i_or_average_value_q <= i_unnamed_average_value56_q or i_xor_average_value_q;

    -- i_cleanups_shl_average_value_sel_x(BITSELECT,32)@1
    i_cleanups_shl_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_or_average_value_q(0 downto 0)), 4));

    -- i_cleanups_shl_average_value_vt_select_0(BITSELECT,106)@1
    i_cleanups_shl_average_value_vt_select_0_b <= i_cleanups_shl_average_value_sel_x_b(0 downto 0);

    -- i_cleanups_shl_average_value_vt_join(BITJOIN,105)@1
    i_cleanups_shl_average_value_vt_join_q <= i_cleanups_shl_average_value_vt_const_3_q & i_cleanups_shl_average_value_vt_select_0_b;

    -- i_next_cleanups_average_value_average_value59_shift_narrow_x(BITSELECT,39)@1
    i_next_cleanups_average_value_average_value59_shift_narrow_x_b <= i_cleanups_shl_average_value_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x(BITSELECT,225)@1
    leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x_in <= i_next_cleanups_average_value_average_value59_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x_b <= leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x(MUX,226)@1
    leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_s <= leftShiftStageSel0Dto0_uid226_i_next_cleanups_average_value_average_value59_shift_x_b;
    leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_combproc: PROCESS (leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_s, i_acl_pop_i4_cleanups_pop9_average_value_out_data_out, leftShiftStage0Idx1_uid225_i_next_cleanups_average_value_average_value59_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_q <= i_acl_pop_i4_cleanups_pop9_average_value_out_data_out;
            WHEN "1" => leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_q <= leftShiftStage0Idx1_uid225_i_next_cleanups_average_value_average_value59_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push9_average_value(BLACKBOX,88)@1
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i4_cleanups_push9_average_value : i_acl_push_i4_cleanups_push9_average_value60
    PORT MAP (
        in_data_in => leftShiftStage0_uid227_i_next_cleanups_average_value_average_value59_shift_x_q,
        in_feedback_stall_in_9 => i_acl_pop_i4_cleanups_pop9_average_value_out_feedback_stall_out_9,
        in_keep_going => i_acl_pipeline_keep_going_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_9 => i_acl_push_i4_cleanups_push9_average_value_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i4_cleanups_push9_average_value_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_7gr(CONSTANT,74)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_cleanups_pop9_average_value(BLACKBOX,82)@1
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

    -- i_unnamed_average_value19(LOGICAL,161)@1
    i_unnamed_average_value19_q <= i_acl_pop_i4_cleanups_pop9_average_value_out_data_out and c_i4_1gr_q;

    -- i_unnamed_average_value19_vt_select_0(BITSELECT,164)@1
    i_unnamed_average_value19_vt_select_0_b <= i_unnamed_average_value19_q(0 downto 0);

    -- i_unnamed_average_value19_vt_join(BITJOIN,163)@1
    i_unnamed_average_value19_vt_join_q <= i_cleanups_shl_average_value_vt_const_3_q & i_unnamed_average_value19_vt_select_0_b;

    -- i_first_cleanup_average_value(LOGICAL,129)@1
    i_first_cleanup_average_value_q <= "1" WHEN i_unnamed_average_value19_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_xor_average_value(LOGICAL,171)@1
    i_xor_average_value_q <= i_first_cleanup_average_value_q xor VCC_q;

    -- i_syncbuf_n_sync_buffer_average_value(BLACKBOX,159)@0
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

    -- i_cmp37_phi_decision5_xor_rm_average_value(COMPARE,107)@1
    i_cmp37_phi_decision5_xor_rm_average_value_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_n_sync_buffer_average_value_out_buffer_out(31)) & i_syncbuf_n_sync_buffer_average_value_out_buffer_out));
    i_cmp37_phi_decision5_xor_rm_average_value_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp37_phi_decision5_xor_rm_average_value_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp37_phi_decision5_xor_rm_average_value_a) - SIGNED(i_cmp37_phi_decision5_xor_rm_average_value_b));
    i_cmp37_phi_decision5_xor_rm_average_value_c(0) <= i_cmp37_phi_decision5_xor_rm_average_value_o(33);

    -- i_first_cleanup_xor_or_average_value(LOGICAL,130)@1
    i_first_cleanup_xor_or_average_value_q <= i_cmp37_phi_decision5_xor_rm_average_value_c or i_xor_average_value_q;

    -- i_arrayidx2_average_value_average_value36_mult_multconst_x(CONSTANT,26)
    i_arrayidx2_average_value_average_value36_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom_average_value_sel_x(BITSELECT,35)@1
    i_idxprom_average_value_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_acl_pop_i32_i_039_pop6_average_value_out_data_out(31 downto 0)), 64)));

    -- i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select(BITSELECT,367)@1
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_b <= i_idxprom_average_value_sel_x_b(8 downto 0);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_c <= i_idxprom_average_value_sel_x_b(62 downto 54);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_d <= i_idxprom_average_value_sel_x_b(17 downto 9);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_e <= i_idxprom_average_value_sel_x_b(63 downto 63);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_f <= i_idxprom_average_value_sel_x_b(26 downto 18);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_g <= i_idxprom_average_value_sel_x_b(35 downto 27);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_h <= i_idxprom_average_value_sel_x_b(44 downto 36);
    i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_i <= i_idxprom_average_value_sel_x_b(53 downto 45);

    -- i_arrayidx2_average_value_average_value36_mult_x_im9_shift0(BITSHIFT,360)@1
    i_arrayidx2_average_value_average_value36_mult_x_im9_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im9_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im9_shift0_qint(2 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_31(BITSHIFT,216)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_31_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im9_shift0_q) & "000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_31_q <= i_arrayidx2_average_value_average_value36_mult_x_align_31_qint(9 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_im21_shift0(BITSHIFT,364)@1
    i_arrayidx2_average_value_average_value36_mult_x_im21_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_i & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im21_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im21_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_30(BITSHIFT,215)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_30_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im21_shift0_q) & "000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_30_q <= i_arrayidx2_average_value_average_value36_mult_x_align_30_qint(17 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_im15_shift0(BITSHIFT,362)@1
    i_arrayidx2_average_value_average_value36_mult_x_im15_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_g & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im15_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im15_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_29(BITSHIFT,214)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_29_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im15_shift0_q) & "000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_29_q <= i_arrayidx2_average_value_average_value36_mult_x_align_29_qint(17 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_im6_shift0(BITSHIFT,359)@1
    i_arrayidx2_average_value_average_value36_mult_x_im6_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im6_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im6_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_28(BITSHIFT,213)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_28_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im6_shift0_q) & "000000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_28_q <= i_arrayidx2_average_value_average_value36_mult_x_align_28_qint(20 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_join_32(BITJOIN,217)@1
    i_arrayidx2_average_value_average_value36_mult_x_join_32_q <= i_arrayidx2_average_value_average_value36_mult_x_align_31_q & i_arrayidx2_average_value_average_value36_mult_x_align_30_q & i_arrayidx2_average_value_average_value36_mult_x_align_29_q & i_arrayidx2_average_value_average_value36_mult_x_align_28_q;

    -- i_arrayidx2_average_value_average_value36_mult_x_im3_shift0(BITSHIFT,358)@1
    i_arrayidx2_average_value_average_value36_mult_x_im3_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im3_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_26(BITSHIFT,211)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_26_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im3_shift0_q) & "000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_26_q <= i_arrayidx2_average_value_average_value36_mult_x_align_26_qint(17 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_im18_shift0(BITSHIFT,363)@1
    i_arrayidx2_average_value_average_value36_mult_x_im18_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_h & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im18_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im18_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_25(BITSHIFT,210)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_25_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im18_shift0_q) & "000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_25_q <= i_arrayidx2_average_value_average_value36_mult_x_align_25_qint(17 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_im12_shift0(BITSHIFT,361)@1
    i_arrayidx2_average_value_average_value36_mult_x_im12_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_f & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im12_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im12_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_align_24(BITSHIFT,209)@1
    i_arrayidx2_average_value_average_value36_mult_x_align_24_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im12_shift0_q) & "000000";
    i_arrayidx2_average_value_average_value36_mult_x_align_24_q <= i_arrayidx2_average_value_average_value36_mult_x_align_24_qint(17 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_im0_shift0(BITSHIFT,357)@1
    i_arrayidx2_average_value_average_value36_mult_x_im0_shift0_qint <= i_arrayidx2_average_value_average_value36_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx2_average_value_average_value36_mult_x_im0_shift0_q <= i_arrayidx2_average_value_average_value36_mult_x_im0_shift0_qint(10 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_x_join_27(BITJOIN,212)@1
    i_arrayidx2_average_value_average_value36_mult_x_join_27_q <= i_arrayidx2_average_value_average_value36_mult_x_align_26_q & i_arrayidx2_average_value_average_value36_mult_x_align_25_q & i_arrayidx2_average_value_average_value36_mult_x_align_24_q & STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_im0_shift0_q);

    -- i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0(ADD,218)@1
    i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00" & i_arrayidx2_average_value_average_value36_mult_x_join_27_q);
    i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_mult_x_join_32_q);
    i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_b));
    i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_q <= i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx2_average_value_average_value36_mult_extender_x(BITJOIN,25)@1
    i_arrayidx2_average_value_average_value36_mult_extender_x_q <= i_arrayidx2_average_value_average_value36_mult_multconst_x_q & i_arrayidx2_average_value_average_value36_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx2_average_value_average_value36_trunc_sel_x(BITSELECT,27)@1
    i_arrayidx2_average_value_average_value36_trunc_sel_x_b <= i_arrayidx2_average_value_average_value36_mult_extender_x_q(63 downto 0);

    -- i_syncbuf_a_sync_buffer_average_value(BLACKBOX,157)@0
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

    -- i_arrayidx2_average_value_average_value36_add_x(ADD,28)@1
    i_arrayidx2_average_value_average_value36_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_a_sync_buffer_average_value_out_buffer_out);
    i_arrayidx2_average_value_average_value36_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx2_average_value_average_value36_trunc_sel_x_b);
    i_arrayidx2_average_value_average_value36_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx2_average_value_average_value36_add_x_a) + UNSIGNED(i_arrayidx2_average_value_average_value36_add_x_b));
    i_arrayidx2_average_value_average_value36_add_x_q <= i_arrayidx2_average_value_average_value36_add_x_o(64 downto 0);

    -- i_arrayidx2_average_value_average_value36_dupName_0_trunc_sel_x(BITSELECT,22)@1
    i_arrayidx2_average_value_average_value36_dupName_0_trunc_sel_x_b <= i_arrayidx2_average_value_average_value36_add_x_q(63 downto 0);

    -- i_load_unnamed_average_value2_average_value(BLACKBOX,135)@1
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
        in_i_address => i_arrayidx2_average_value_average_value36_dupName_0_trunc_sel_x_b,
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

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_average_value2_avm_address <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_address;
    out_unnamed_average_value2_avm_enable <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_enable;
    out_unnamed_average_value2_avm_read <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_read;
    out_unnamed_average_value2_avm_write <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_write;
    out_unnamed_average_value2_avm_writedata <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_writedata;
    out_unnamed_average_value2_avm_byteenable <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_byteenable;
    out_unnamed_average_value2_avm_burstcount <= i_load_unnamed_average_value2_average_value_out_unnamed_average_value2_avm_burstcount;

    -- redist9_sync_in_aunroll_x_in_i_valid_5(DELAY,378)
    redist9_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_3_q, xout => redist9_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist10_sync_in_aunroll_x_in_i_valid_6(DELAY,379)
    redist10_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_5_q, xout => redist10_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- i_shr_i_i_i_i36_average_value_vt_const_279(CONSTANT,153)
    i_shr_i_i_i_i36_average_value_vt_const_279_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage2Idx2Pad2_uid290_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,289)
    leftShiftStage2Idx2Pad2_uid290_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "00";

    -- rightShiftStage2Idx1Rng2_uid336_i_shr_i_i_i_i36_average_value_average_value46_shift_x(BITSELECT,335)@6
    rightShiftStage2Idx1Rng2_uid336_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b <= rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q(279 downto 2);

    -- rightShiftStage2Idx1_uid338_i_shr_i_i_i_i36_average_value_average_value46_shift_x(BITJOIN,337)@6
    rightShiftStage2Idx1_uid338_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= leftShiftStage2Idx2Pad2_uid290_i_shl_i_i_i_i_average_value_average_value45_shift_x_q & rightShiftStage2Idx1Rng2_uid336_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b;

    -- rightShiftStage1Idx1Rng4_uid331_i_shr_i_i_i_i36_average_value_average_value46_shift_x(BITSELECT,330)@6
    rightShiftStage1Idx1Rng4_uid331_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b <= rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q(279 downto 4);

    -- rightShiftStage1Idx1_uid333_i_shr_i_i_i_i36_average_value_average_value46_shift_x(BITJOIN,332)@6
    rightShiftStage1Idx1_uid333_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= c_i4_0gr_q & rightShiftStage1Idx1Rng4_uid331_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b;

    -- leftShiftStage0Idx4Pad128_uid250_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,249)
    leftShiftStage0Idx4Pad128_uid250_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx1Rng128_uid326_i_shr_i_i_i_i36_average_value_average_value46_shift_x(BITSELECT,325)@6
    rightShiftStage0Idx1Rng128_uid326_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b <= i_cond_i_i_average_value_q(279 downto 128);

    -- rightShiftStage0Idx1_uid328_i_shr_i_i_i_i36_average_value_average_value46_shift_x(BITJOIN,327)@6
    rightShiftStage0Idx1_uid328_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= leftShiftStage0Idx4Pad128_uid250_i_shl_i_i_i_i_average_value_average_value45_shift_x_q & rightShiftStage0Idx1Rng128_uid326_i_shr_i_i_i_i36_average_value_average_value46_shift_x_b;

    -- c_i280_0gr(CONSTANT,64)
    c_i280_0gr_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- i_sub_i_i_average_value(SUB,156)@6
    i_sub_i_i_average_value_a <= STD_LOGIC_VECTOR("0" & c_i280_0gr_q);
    i_sub_i_i_average_value_b <= STD_LOGIC_VECTOR("0" & leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q);
    i_sub_i_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_i_i_average_value_a) - UNSIGNED(i_sub_i_i_average_value_b));
    i_sub_i_i_average_value_q <= i_sub_i_i_average_value_o(280 downto 0);

    -- bgTrunc_i_sub_i_i_average_value_sel_x(BITSELECT,4)@6
    bgTrunc_i_sub_i_i_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub_i_i_average_value_q(279 downto 0));

    -- leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,293)@5
    leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(276 downto 0);
    leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(276 downto 0);

    -- leftShiftStage2Idx3_uid295_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,294)@5
    leftShiftStage2Idx3_uid295_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage2Idx3Rng3_uid294_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & i_cleanups_shl_average_value_vt_const_3_q;

    -- leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,290)@5
    leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(277 downto 0);
    leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(277 downto 0);

    -- leftShiftStage2Idx2_uid292_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,291)@5
    leftShiftStage2Idx2_uid292_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage2Idx2Rng2_uid291_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage2Idx2Pad2_uid290_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,287)@5
    leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(278 downto 0);
    leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(278 downto 0);

    -- leftShiftStage2Idx1_uid289_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,288)@5
    leftShiftStage2Idx1_uid289_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage2Idx1Rng1_uid288_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & GND_q;

    -- leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,282)@5
    leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(251 downto 0);
    leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(251 downto 0);

    -- leftShiftStage1Idx7Pad28_uid282_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,281)
    leftShiftStage1Idx7Pad28_uid282_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "0000000000000000000000000000";

    -- leftShiftStage1Idx7_uid284_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,283)@5
    leftShiftStage1Idx7_uid284_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx7Rng28_uid283_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage1Idx7Pad28_uid282_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,279)@5
    leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(255 downto 0);
    leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(255 downto 0);

    -- i_and3_i_average_value_vt_const_31(CONSTANT,96)
    i_and3_i_average_value_vt_const_31_q <= "000000000000000000000000";

    -- leftShiftStage1Idx6_uid281_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,280)@5
    leftShiftStage1Idx6_uid281_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx6Rng24_uid280_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & i_and3_i_average_value_vt_const_31_q;

    -- leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,276)@5
    leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(259 downto 0);
    leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(259 downto 0);

    -- leftShiftStage1Idx5Pad20_uid276_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,275)
    leftShiftStage1Idx5Pad20_uid276_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "00000000000000000000";

    -- leftShiftStage1Idx5_uid278_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,277)@5
    leftShiftStage1Idx5_uid278_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx5Rng20_uid277_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage1Idx5Pad20_uid276_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,273)@5
    leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(263 downto 0);
    leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(263 downto 0);

    -- leftShiftStage1Idx4Pad16_uid273_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,272)
    leftShiftStage1Idx4Pad16_uid273_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "0000000000000000";

    -- leftShiftStage1Idx4_uid275_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,274)@5
    leftShiftStage1Idx4_uid275_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx4Rng16_uid274_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage1Idx4Pad16_uid273_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,270)@5
    leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(267 downto 0);
    leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(267 downto 0);

    -- leftShiftStage1Idx3Pad12_uid270_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,269)
    leftShiftStage1Idx3Pad12_uid270_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "000000000000";

    -- leftShiftStage1Idx3_uid272_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,271)@5
    leftShiftStage1Idx3_uid272_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx3Rng12_uid271_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage1Idx3Pad12_uid270_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,267)@5
    leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(271 downto 0);
    leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(271 downto 0);

    -- leftShiftStage1Idx2Pad8_uid267_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,266)
    leftShiftStage1Idx2Pad8_uid267_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "00000000";

    -- leftShiftStage1Idx2_uid269_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,268)@5
    leftShiftStage1Idx2_uid269_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx2Rng8_uid268_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage1Idx2Pad8_uid267_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,264)@5
    leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q(275 downto 0);
    leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(275 downto 0);

    -- leftShiftStage1Idx1_uid266_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,265)@5
    leftShiftStage1Idx1_uid266_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx1Rng4_uid265_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & c_i4_0gr_q;

    -- leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,259)@5
    leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(55 downto 0);
    leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(55 downto 0);

    -- leftShiftStage0Idx7Pad224_uid259_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,258)
    leftShiftStage0Idx7Pad224_uid259_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx7_uid261_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,260)@5
    leftShiftStage0Idx7_uid261_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx7Rng224_uid260_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage0Idx7Pad224_uid259_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,256)@5
    leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(87 downto 0);
    leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(87 downto 0);

    -- leftShiftStage0Idx6Pad192_uid256_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,255)
    leftShiftStage0Idx6Pad192_uid256_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx6_uid258_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,257)@5
    leftShiftStage0Idx6_uid258_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx6Rng192_uid257_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage0Idx6Pad192_uid256_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,253)@5
    leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(119 downto 0);
    leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(119 downto 0);

    -- leftShiftStage0Idx5Pad160_uid253_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,252)
    leftShiftStage0Idx5Pad160_uid253_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx5_uid255_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,254)@5
    leftShiftStage0Idx5_uid255_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx5Rng160_uid254_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage0Idx5Pad160_uid253_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,250)@5
    leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(151 downto 0);
    leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(151 downto 0);

    -- leftShiftStage0Idx4_uid252_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,251)@5
    leftShiftStage0Idx4_uid252_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx4Rng128_uid251_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage0Idx4Pad128_uid250_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,247)@5
    leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(183 downto 0);
    leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(183 downto 0);

    -- leftShiftStage0Idx3Pad96_uid247_i_shl_i_i_i_i_average_value_average_value45_shift_x(CONSTANT,246)
    leftShiftStage0Idx3Pad96_uid247_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid249_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,248)@5
    leftShiftStage0Idx3_uid249_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx3Rng96_uid248_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & leftShiftStage0Idx3Pad96_uid247_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;

    -- leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,244)@5
    leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(215 downto 0);
    leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(215 downto 0);

    -- c_i64_0gr(CONSTANT,75)
    c_i64_0gr_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx2_uid246_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,245)@5
    leftShiftStage0Idx2_uid246_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx2Rng64_uid245_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & c_i64_0gr_q;

    -- leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITSELECT,241)@5
    leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x_in <= i_conv_i_i_i1_i_average_value_vt_join_q(247 downto 0);
    leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x_b <= leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x_in(247 downto 0);

    -- leftShiftStage0Idx1_uid243_i_shl_i_i_i_i_average_value_average_value45_shift_x(BITJOIN,242)@5
    leftShiftStage0Idx1_uid243_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx1Rng32_uid242_i_shl_i_i_i_i_average_value_average_value45_shift_x_b & c_i32_0gr_q;

    -- i_conv_i_i_i1_i_average_value_vt_const_279(CONSTANT,122)
    i_conv_i_i_i1_i_average_value_vt_const_279_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";

    -- i_or_i_average_value_vt_const_31(CONSTANT,143)
    i_or_i_average_value_vt_const_31_q <= "000000001";

    -- i_and4_i_average_value_vt_const_31(CONSTANT,100)
    i_and4_i_average_value_vt_const_31_q <= "000000000";

    -- c_i32_8388607(CONSTANT,70)
    c_i32_8388607_q <= "00000000011111111111111111111111";

    -- i_and4_i_average_value(LOGICAL,99)@5
    i_and4_i_average_value_q <= i_load_unnamed_average_value2_average_value_out_o_readdata and c_i32_8388607_q;

    -- i_and4_i_average_value_vt_select_22(BITSELECT,102)@5
    i_and4_i_average_value_vt_select_22_b <= i_and4_i_average_value_q(22 downto 0);

    -- i_and4_i_average_value_vt_join(BITJOIN,101)@5
    i_and4_i_average_value_vt_join_q <= i_and4_i_average_value_vt_const_31_q & i_and4_i_average_value_vt_select_22_b;

    -- i_or_i_average_value_BitSelect_for_a(BITSELECT,352)@5
    i_or_i_average_value_BitSelect_for_a_b <= i_and4_i_average_value_vt_join_q(22 downto 0);

    -- i_or_i_average_value_join(BITJOIN,353)@5
    i_or_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & VCC_q & i_or_i_average_value_BitSelect_for_a_b;

    -- i_or_i_average_value_vt_select_22(BITSELECT,145)@5
    i_or_i_average_value_vt_select_22_b <= i_or_i_average_value_join_q(22 downto 0);

    -- i_or_i_average_value_vt_join(BITJOIN,144)@5
    i_or_i_average_value_vt_join_q <= i_or_i_average_value_vt_const_31_q & i_or_i_average_value_vt_select_22_b;

    -- i_conv_i_i_i1_i_average_value_sel_x(BITSELECT,33)@5
    i_conv_i_i_i1_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_or_i_average_value_vt_join_q(31 downto 0)), 280));

    -- i_conv_i_i_i1_i_average_value_vt_select_22(BITSELECT,124)@5
    i_conv_i_i_i1_i_average_value_vt_select_22_b <= i_conv_i_i_i1_i_average_value_sel_x_b(22 downto 0);

    -- i_conv_i_i_i1_i_average_value_vt_join(BITJOIN,123)@5
    i_conv_i_i_i1_i_average_value_vt_join_q <= i_conv_i_i_i1_i_average_value_vt_const_279_q & i_conv_i_i_i1_i_average_value_vt_select_22_b;

    -- leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x(MUX,262)@5
    leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_s <= leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_b;
    leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_combproc: PROCESS (leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_s, i_conv_i_i_i1_i_average_value_vt_join_q, leftShiftStage0Idx1_uid243_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage0Idx2_uid246_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage0Idx3_uid249_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage0Idx4_uid252_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage0Idx5_uid255_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage0Idx6_uid258_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage0Idx7_uid261_i_shl_i_i_i_i_average_value_average_value45_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= i_conv_i_i_i1_i_average_value_vt_join_q;
            WHEN "001" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx1_uid243_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "010" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx2_uid246_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "011" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx3_uid249_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "100" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx4_uid252_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "101" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx5_uid255_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "110" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx6_uid258_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "111" => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0Idx7_uid261_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x(MUX,285)@5
    leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_s <= leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_c;
    leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_combproc: PROCESS (leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_s, leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx1_uid266_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx2_uid269_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx3_uid272_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx4_uid275_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx5_uid278_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx6_uid281_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, leftShiftStage1Idx7_uid284_i_shl_i_i_i_i_average_value_average_value45_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_s) IS
            WHEN "000" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage0_uid263_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "001" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx1_uid266_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "010" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx2_uid269_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "011" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx3_uid272_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "100" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx4_uid275_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "101" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx5_uid278_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "110" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx6_uid281_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "111" => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1Idx7_uid284_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sh_prom_i_i_i5_i_average_value_vt_const_279(CONSTANT,147)
    i_sh_prom_i_i_i5_i_average_value_vt_const_279_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- i_shr2_i_average_value_vt_const_31(CONSTANT,150)
    i_shr2_i_average_value_vt_const_31_q <= "00000000000000000000000";

    -- rightShiftStage3Idx1Rng1_uid317_i_shr2_i_average_value_average_value44_shift_x(BITSELECT,316)@5
    rightShiftStage3Idx1Rng1_uid317_i_shr2_i_average_value_average_value44_shift_x_b <= rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q(31 downto 1);

    -- rightShiftStage3Idx1_uid319_i_shr2_i_average_value_average_value44_shift_x(BITJOIN,318)@5
    rightShiftStage3Idx1_uid319_i_shr2_i_average_value_average_value44_shift_x_q <= GND_q & rightShiftStage3Idx1Rng1_uid317_i_shr2_i_average_value_average_value44_shift_x_b;

    -- rightShiftStage2Idx1Rng2_uid312_i_shr2_i_average_value_average_value44_shift_x(BITSELECT,311)@5
    rightShiftStage2Idx1Rng2_uid312_i_shr2_i_average_value_average_value44_shift_x_b <= rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q(31 downto 2);

    -- rightShiftStage2Idx1_uid314_i_shr2_i_average_value_average_value44_shift_x(BITJOIN,313)@5
    rightShiftStage2Idx1_uid314_i_shr2_i_average_value_average_value44_shift_x_q <= leftShiftStage2Idx2Pad2_uid290_i_shl_i_i_i_i_average_value_average_value45_shift_x_q & rightShiftStage2Idx1Rng2_uid312_i_shr2_i_average_value_average_value44_shift_x_b;

    -- rightShiftStage1Idx1Rng4_uid307_i_shr2_i_average_value_average_value44_shift_x(BITSELECT,306)@5
    rightShiftStage1Idx1Rng4_uid307_i_shr2_i_average_value_average_value44_shift_x_b <= rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q(31 downto 4);

    -- rightShiftStage1Idx1_uid309_i_shr2_i_average_value_average_value44_shift_x(BITJOIN,308)@5
    rightShiftStage1Idx1_uid309_i_shr2_i_average_value_average_value44_shift_x_q <= c_i4_0gr_q & rightShiftStage1Idx1Rng4_uid307_i_shr2_i_average_value_average_value44_shift_x_b;

    -- rightShiftStage0Idx1Rng16_uid302_i_shr2_i_average_value_average_value44_shift_x(BITSELECT,301)@5
    rightShiftStage0Idx1Rng16_uid302_i_shr2_i_average_value_average_value44_shift_x_b <= i_load_unnamed_average_value2_average_value_out_o_readdata(31 downto 16);

    -- rightShiftStage0Idx1_uid304_i_shr2_i_average_value_average_value44_shift_x(BITJOIN,303)@5
    rightShiftStage0Idx1_uid304_i_shr2_i_average_value_average_value44_shift_x_q <= leftShiftStage1Idx4Pad16_uid273_i_shl_i_i_i_i_average_value_average_value45_shift_x_q & rightShiftStage0Idx1Rng16_uid302_i_shr2_i_average_value_average_value44_shift_x_b;

    -- rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x(MUX,305)@5
    rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_s <= VCC_q;
    rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_combproc: PROCESS (rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_s, i_load_unnamed_average_value2_average_value_out_o_readdata, rightShiftStage0Idx1_uid304_i_shr2_i_average_value_average_value44_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q <= i_load_unnamed_average_value2_average_value_out_o_readdata;
            WHEN "1" => rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage0Idx1_uid304_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x(MUX,310)@5
    rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_s <= VCC_q;
    rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_combproc: PROCESS (rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_s, rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q, rightShiftStage1Idx1_uid309_i_shr2_i_average_value_average_value44_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage0_uid306_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN "1" => rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage1Idx1_uid309_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x(MUX,315)@5
    rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_s <= VCC_q;
    rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_combproc: PROCESS (rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_s, rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q, rightShiftStage2Idx1_uid314_i_shr2_i_average_value_average_value44_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage1_uid311_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN "1" => rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage2Idx1_uid314_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x(MUX,320)@5
    rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_s <= VCC_q;
    rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_combproc: PROCESS (rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_s, rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q, rightShiftStage3Idx1_uid319_i_shr2_i_average_value_average_value44_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage2_uid316_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN "1" => rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_q <= rightShiftStage3Idx1_uid319_i_shr2_i_average_value_average_value44_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr2_i_average_value_vt_select_8(BITSELECT,152)@5
    i_shr2_i_average_value_vt_select_8_b <= rightShiftStage3_uid321_i_shr2_i_average_value_average_value44_shift_x_q(8 downto 0);

    -- i_shr2_i_average_value_vt_join(BITJOIN,151)@5
    i_shr2_i_average_value_vt_join_q <= i_shr2_i_average_value_vt_const_31_q & i_shr2_i_average_value_vt_select_8_b;

    -- i_and3_i_average_value_BitSelect_for_a(BITSELECT,344)@5
    i_and3_i_average_value_BitSelect_for_a_b <= i_shr2_i_average_value_vt_join_q(7 downto 0);

    -- i_and3_i_average_value_join(BITJOIN,345)@5
    i_and3_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and3_i_average_value_BitSelect_for_a_b;

    -- i_and3_i_average_value_vt_select_7(BITSELECT,98)@5
    i_and3_i_average_value_vt_select_7_b <= i_and3_i_average_value_join_q(7 downto 0);

    -- i_and3_i_average_value_vt_join(BITJOIN,97)@5
    i_and3_i_average_value_vt_join_q <= i_and3_i_average_value_vt_const_31_q & i_and3_i_average_value_vt_select_7_b;

    -- i_sh_prom_i_i_i5_i_average_value_sel_x(BITSELECT,44)@5
    i_sh_prom_i_i_i5_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and3_i_average_value_vt_join_q(31 downto 0)), 280));

    -- i_sh_prom_i_i_i5_i_average_value_vt_select_7(BITSELECT,149)@5
    i_sh_prom_i_i_i5_i_average_value_vt_select_7_b <= i_sh_prom_i_i_i5_i_average_value_sel_x_b(7 downto 0);

    -- i_sh_prom_i_i_i5_i_average_value_vt_join(BITJOIN,148)@5
    i_sh_prom_i_i_i5_i_average_value_vt_join_q <= i_sh_prom_i_i_i5_i_average_value_vt_const_279_q & i_sh_prom_i_i_i5_i_average_value_vt_select_7_b;

    -- i_shl_i_i_i_i_average_value_average_value45_shift_narrow_x(BITSELECT,48)@5
    i_shl_i_i_i_i_average_value_average_value45_shift_narrow_x_b <= i_sh_prom_i_i_i5_i_average_value_vt_join_q(8 downto 0);

    -- leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select(BITSELECT,368)@5
    leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_in <= i_shl_i_i_i_i_average_value_average_value45_shift_narrow_x_b(7 downto 0);
    leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_b <= leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_in(7 downto 5);
    leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_c <= leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_in(4 downto 2);
    leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_d <= leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_in(1 downto 0);

    -- leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x(MUX,296)@5 + 1
    leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_s <= leftShiftStageSel7Dto5_uid262_i_shl_i_i_i_i_average_value_average_value45_shift_x_merged_bit_select_d;
    leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_s) IS
                WHEN "00" => leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage1_uid286_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
                WHEN "01" => leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage2Idx1_uid289_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
                WHEN "10" => leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage2Idx2_uid292_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
                WHEN "11" => leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= leftShiftStage2Idx3_uid295_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
                WHEN OTHERS => leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_tobool_i_average_value_cmp_sign(LOGICAL,365)@5 + 1
    i_tobool_i_average_value_cmp_sign_qi <= STD_LOGIC_VECTOR(i_load_unnamed_average_value2_average_value_out_o_readdata(31 downto 31));
    i_tobool_i_average_value_cmp_sign_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tobool_i_average_value_cmp_sign_qi, xout => i_tobool_i_average_value_cmp_sign_q, clk => clock, aclr => resetn );

    -- i_cond_i_i_average_value(MUX,108)@6
    i_cond_i_i_average_value_s <= i_tobool_i_average_value_cmp_sign_q;
    i_cond_i_i_average_value_combproc: PROCESS (i_cond_i_i_average_value_s, leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q, bgTrunc_i_sub_i_i_average_value_sel_x_b)
    BEGIN
        CASE (i_cond_i_i_average_value_s) IS
            WHEN "0" => i_cond_i_i_average_value_q <= leftShiftStage2_uid297_i_shl_i_i_i_i_average_value_average_value45_shift_x_q;
            WHEN "1" => i_cond_i_i_average_value_q <= bgTrunc_i_sub_i_i_average_value_sel_x_b;
            WHEN OTHERS => i_cond_i_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x(MUX,329)@6
    rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s <= VCC_q;
    rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_combproc: PROCESS (rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s, i_cond_i_i_average_value_q, rightShiftStage0Idx1_uid328_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= i_cond_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= rightShiftStage0Idx1_uid328_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x(MUX,334)@6
    rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s <= VCC_q;
    rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_combproc: PROCESS (rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s, rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q, rightShiftStage1Idx1_uid333_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= rightShiftStage0_uid330_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q;
            WHEN "1" => rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= rightShiftStage1Idx1_uid333_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x(MUX,339)@6
    rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s <= VCC_q;
    rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_combproc: PROCESS (rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s, rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q, rightShiftStage2Idx1_uid338_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= rightShiftStage1_uid335_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q;
            WHEN "1" => rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= rightShiftStage2Idx1_uid338_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_i_i_i_i36_average_value_vt_select_145(BITSELECT,155)@6
    i_shr_i_i_i_i36_average_value_vt_select_145_b <= rightShiftStage2_uid340_i_shr_i_i_i_i36_average_value_average_value46_shift_x_q(145 downto 0);

    -- i_shr_i_i_i_i36_average_value_vt_join(BITJOIN,154)@6
    i_shr_i_i_i_i36_average_value_vt_join_q <= i_shr_i_i_i_i36_average_value_vt_const_279_q & i_shr_i_i_i_i36_average_value_vt_select_145_b;

    -- i_conv_i_i_i_i_average_value_sel_x(BITSELECT,34)@6
    i_conv_i_i_i_i_average_value_sel_x_b <= i_shr_i_i_i_i36_average_value_vt_join_q(63 downto 0);

    -- redist3_i_first_cleanup_average_value_q_5(DELAY,372)
    redist3_i_first_cleanup_average_value_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_first_cleanup_average_value_q_3_q, xout => redist3_i_first_cleanup_average_value_q_5_q, clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_average_value4_average_value(BLACKBOX,128)@6
    -- out out_intel_reserved_ffwd_1_0@20000000
    thei_ffwd_src_unnamed_average_value4_average_value : i_ffwd_src_unnamed_average_value4_average_value64
    PORT MAP (
        in_enable_in => redist3_i_first_cleanup_average_value_q_5_q,
        in_src_data_in_1_0 => i_conv_i_i_i_i_average_value_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_5_q,
        out_intel_reserved_ffwd_1_0 => i_ffwd_src_unnamed_average_value4_average_value_out_intel_reserved_ffwd_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_add_i_i_average_value_vt_const_63(CONSTANT,92)
    i_add_i_i_average_value_vt_const_63_q <= "0000000000000000000000000000000";

    -- c_i64_4294967295(CONSTANT,76)
    c_i64_4294967295_q <= "0000000000000000000000000000000011111111111111111111111111111111";

    -- i_conv4_i_i_average_value(LOGICAL,109)@7
    i_conv4_i_i_average_value_q <= i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_data_out and c_i64_4294967295_q;

    -- i_conv4_i_i_average_value_vt_select_31(BITSELECT,112)@7
    i_conv4_i_i_average_value_vt_select_31_b <= i_conv4_i_i_average_value_q(31 downto 0);

    -- i_conv4_i_i_average_value_vt_join(BITJOIN,111)@7
    i_conv4_i_i_average_value_vt_join_q <= c_i32_0gr_q & i_conv4_i_i_average_value_vt_select_31_b;

    -- i_conv_i_i26_average_value(LOGICAL,117)@6
    i_conv_i_i26_average_value_q <= i_conv_i_i_i_i_average_value_sel_x_b and c_i64_4294967295_q;

    -- i_conv_i_i26_average_value_vt_select_31(BITSELECT,120)@6
    i_conv_i_i26_average_value_vt_select_31_b <= i_conv_i_i26_average_value_q(31 downto 0);

    -- redist5_i_conv_i_i26_average_value_vt_select_31_b_1(DELAY,374)
    redist5_i_conv_i_i26_average_value_vt_select_31_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv_i_i26_average_value_vt_select_31_b, xout => redist5_i_conv_i_i26_average_value_vt_select_31_b_1_q, clk => clock, aclr => resetn );

    -- i_conv_i_i26_average_value_vt_join(BITJOIN,119)@7
    i_conv_i_i26_average_value_vt_join_q <= c_i32_0gr_q & redist5_i_conv_i_i26_average_value_vt_select_31_b_1_q;

    -- i_add_i_i_average_value(ADD,91)@7
    i_add_i_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_conv_i_i26_average_value_vt_join_q);
    i_add_i_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_conv4_i_i_average_value_vt_join_q);
    i_add_i_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_i_average_value_a) + UNSIGNED(i_add_i_i_average_value_b));
    i_add_i_i_average_value_q <= i_add_i_i_average_value_o(64 downto 0);

    -- bgTrunc_i_add_i_i_average_value_sel_x(BITSELECT,2)@7
    bgTrunc_i_add_i_i_average_value_sel_x_b <= i_add_i_i_average_value_q(63 downto 0);

    -- i_add_i_i_average_value_vt_select_32(BITSELECT,94)@7
    i_add_i_i_average_value_vt_select_32_b <= bgTrunc_i_add_i_i_average_value_sel_x_b(32 downto 0);

    -- i_add_i_i_average_value_vt_join(BITJOIN,93)@7
    i_add_i_i_average_value_vt_join_q <= i_add_i_i_average_value_vt_const_63_q & i_add_i_i_average_value_vt_select_32_b;

    -- i_conv_i_i24_average_value_BitSelect_for_a(BITSELECT,347)@7
    i_conv_i_i24_average_value_BitSelect_for_a_b <= i_add_i_i_average_value_vt_join_q(32 downto 0);

    -- i_conv_i_i24_average_value_join(BITJOIN,348)@7
    i_conv_i_i24_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv_i_i24_average_value_BitSelect_for_a_b;

    -- i_conv_i_i24_average_value_vt_select_32(BITSELECT,116)@7
    i_conv_i_i24_average_value_vt_select_32_b <= i_conv_i_i24_average_value_join_q(32 downto 0);

    -- i_conv_i_i24_average_value_vt_join(BITJOIN,115)@7
    i_conv_i_i24_average_value_vt_join_q <= i_add_i_i_average_value_vt_const_63_q & i_conv_i_i24_average_value_vt_select_32_b;

    -- i_acl_push_i64_temp_0_0_038_push7_average_value(BLACKBOX,90)@7
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i64_temp_0_0_038_push7_average_value : i_acl_push_i64_temp_0_0_038_push7_average_value49
    PORT MAP (
        in_data_in => i_conv_i_i24_average_value_vt_join_q,
        in_feedback_stall_in_7 => i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_feedback_stall_out_7,
        in_keep_going => redist6_i_acl_pipeline_keep_going_average_value_out_data_out_6_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_7 => i_acl_push_i64_temp_0_0_038_push7_average_value_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i64_temp_0_0_038_push7_average_value_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist7_sync_in_aunroll_x_in_c0_eni1_1_6(DELAY,376)
    redist7_sync_in_aunroll_x_in_c0_eni1_1_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni1_1, xout => redist7_sync_in_aunroll_x_in_c0_eni1_1_6_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i64_temp_0_0_038_pop7_average_value(BLACKBOX,84)@7
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i64_temp_0_0_038_pop7_average_value : i_acl_pop_i64_temp_0_0_038_pop7_average_value47
    PORT MAP (
        in_data_in => c_i64_0gr_q,
        in_dir => redist7_sync_in_aunroll_x_in_c0_eni1_1_6_q,
        in_feedback_in_7 => i_acl_push_i64_temp_0_0_038_push7_average_value_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i64_temp_0_0_038_push7_average_value_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_6_q,
        out_data_out => i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_first_cleanup_average_value_q_6(DELAY,373)
    redist4_i_first_cleanup_average_value_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_first_cleanup_average_value_q_5_q, xout => redist4_i_first_cleanup_average_value_q_6_q, clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_average_value3_average_value(BLACKBOX,127)@7
    -- out out_intel_reserved_ffwd_0_0@20000000
    thei_ffwd_src_unnamed_average_value3_average_value : i_ffwd_src_unnamed_average_value3_average_value62
    PORT MAP (
        in_enable_in => redist4_i_first_cleanup_average_value_q_6_q,
        in_src_data_in_0_0 => i_acl_pop_i64_temp_0_0_038_pop7_average_value_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_6_q,
        out_intel_reserved_ffwd_0_0 => i_ffwd_src_unnamed_average_value3_average_value_out_intel_reserved_ffwd_0_0,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_unnamed_average_value56_q_6(DELAY,370)
    redist1_i_unnamed_average_value56_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_average_value56_q_3_q, xout => redist1_i_unnamed_average_value56_q_6_q, clk => clock, aclr => resetn );

    -- i_masked_average_value(LOGICAL,136)@7
    i_masked_average_value_q <= redist1_i_unnamed_average_value56_q_6_q and redist4_i_first_cleanup_average_value_q_6_q;

    -- redist6_i_acl_pipeline_keep_going_average_value_out_data_out_6(DELAY,375)
    redist6_i_acl_pipeline_keep_going_average_value_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_average_value_out_data_out, xout => redist6_i_acl_pipeline_keep_going_average_value_out_data_out_6_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,58)@7
    out_c0_exi2_0 <= GND_q;
    out_c0_exi2_1 <= redist6_i_acl_pipeline_keep_going_average_value_out_data_out_6_q;
    out_c0_exi2_2 <= i_masked_average_value_q;
    out_intel_reserved_ffwd_0_0 <= i_ffwd_src_unnamed_average_value3_average_value_out_intel_reserved_ffwd_0_0;
    out_intel_reserved_ffwd_1_0 <= i_ffwd_src_unnamed_average_value4_average_value_out_intel_reserved_ffwd_1_0;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_6_q;

    -- ext_sig_sync_out(GPOUT,79)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_valid_out <= i_acl_pipeline_keep_going_average_value_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_average_value_exiting_stall_out <= i_acl_pipeline_keep_going_average_value_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,179)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_average_value_out_pipeline_valid_out;

END normal;
