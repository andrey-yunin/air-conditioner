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

-- VHDL created from i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value62
-- VHDL created on Tue May 24 11:25:46 2022


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

entity i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value62 is
    port (
        out_c0_exi117_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi117_1 : out std_logic_vector(31 downto 0);  -- float32_m23
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_N : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(63 downto 0);  -- ufix64
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value62;

architecture normal of i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value62 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Z50c2463a0054c2a6355y is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A1Z50c2463a0054c2a6355y is
        port (
            in_0 : in std_logic_vector(63 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Z0uq0dp0iuq0cp0ju5o0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv_i_i6_average_value66 is
        port (
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_1_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_temp_0_0_0235_average_value64 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component thirtysix_six_comp is
        port (
            data : in std_logic_vector(31 downto 0);
            sum : out std_logic_vector(31 downto 0)
        );
    end component;


    component i_syncbuf_n_sync_buffer2_average_value68 is
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


    component i_syncbuf_n_sync_buffer3_average_value111 is
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
    signal bgTrunc_i_add_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_add_i_i1_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fold_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_sub10_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub19_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub23_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub27_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub30_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub5_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i64_0gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_7_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and286_i_average_value_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and313_tr_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cond1_tr_i_average_value_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv1_i_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv25_i_average_value_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv28_i_average_value_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv353_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_vec_2_i_join_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal i_or44_compressed_i_average_value_average_value89_or44_shuffle_i_m_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom31_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom33_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl15_i_average_value_average_value79_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl18_i_average_value_average_value80_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl24_i_average_value_average_value81_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shl26_i_average_value_average_value82_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shl_i_average_value_average_value78_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr34_i_average_value_average_value84_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr_i_average_value_average_value83_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_tr_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value102_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value77_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_2047_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_10_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1054_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_12_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_21_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_32_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_64_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_65535_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8176_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_85_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i64_1gr_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_4294967295_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_4503599627370495_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_9218868437227405312_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i64_9223372036854775808_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_10_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_10_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_10_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (62 downto 0);
    signal i_acl_10_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_10_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_11_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_11_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_11_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_11_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_22_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_22_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_22_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_acl_22_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_22_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_acl_46_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_47_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_47_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_47_i_average_value_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_acl_47_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_47_i_average_value_vt_select_55_b : STD_LOGIC_VECTOR (53 downto 0);
    signal i_acl_5_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_5_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_6_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_7_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_7_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_8_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_9_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_i_average_value_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_average_value_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_average_value_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_average_value_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i1_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i1_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i1_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i1_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i1_average_value_vt_const_31_q : STD_LOGIC_VECTOR (24 downto 0);
    signal i_add_i_i1_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_i_i1_average_value_vt_select_6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_and12_i_average_value_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_and12_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and12_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and12_i_average_value_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and13_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_and13_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and16_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_and16_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and16_i_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and1_i_average_value_vt_const_51_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and1_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and1_i_average_value_vt_select_63_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and20_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and20_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and20_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_and253_i_average_value_vt_const_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and253_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and253_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and265_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_and265_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and265_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and274_i_average_value_vt_const_10_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_and274_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and274_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and274_i_lobit_average_value_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_and274_i_lobit_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and274_i_lobit_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and283_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_and283_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and283_i_average_value_vt_select_53_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and2868_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and286_i_average_value_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_and286_i_average_value_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and286_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and29_i_average_value_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and29_i_average_value_vt_const_15_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_and29_i_average_value_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and29_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_and2_i25_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_i25_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_i25_average_value_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and2_or7_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and2_or7_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_i_average_value_vt_select_52_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and2_or7_op_i_average_value_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_and2_or7_op_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_op_i_average_value_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_average_value_average_value105_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and308_i_average_value_average_value105_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_average_value_average_value105_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_average_value_average_value105_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_average_value_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and30_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and30_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and30_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and313_tr_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and313_tr_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_and31_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and31_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_and32_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and32_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and32_i_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and36_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and36_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and36_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and3_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and3_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and4_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and4_i_average_value_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and5_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and5_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and60_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and60_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and60_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and60_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_cmp22_rm1_average_value_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_rm1_average_value_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_rm1_average_value_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_rm1_average_value_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp271_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp284_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp2_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp35_i_average_value_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp35_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_i_average_value_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp38_i_average_value_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp38_i_average_value_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp38_i_average_value_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp38_i_average_value_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp5_i_average_value_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp5_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp9_i_average_value_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_i_average_value_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_i_average_value_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp9_i_average_value_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv22_i_average_value_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv22_i_average_value_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv22_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv353_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (50 downto 0);
    signal i_conv353_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_conv353_i_op_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_op_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_conv3_average_value_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv50_i_average_value_vt_const_54_q : STD_LOGIC_VECTOR (54 downto 0);
    signal i_conv50_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv50_i_average_value_vt_select_55_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv_average_value_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_conv_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_div_average_value_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exponent_0_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exponent_0_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_ffwd_dst_conv_i_i6_average_value_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_temp_0_0_0235_average_value_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fold_average_value_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_fold_average_value_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_fold_average_value_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_fold_average_value_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value6_average_value_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value6_average_value_sum : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_masked_i_average_value_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_masked_i_average_value_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_masked_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_neg22_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_not_cmp9_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_op_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_op_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_or13_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or15_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or17_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or19_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or21_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_or44_compressed_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_compressed_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_or6_i_average_value_qi : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or6_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or7_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_or7_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or7_i_average_value_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or_cond_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_not_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_phitmp_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_phitmp_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_phitmp_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_resulting_exp_2_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_resulting_exp_2_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_resulting_exp_2_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_resulting_exp_2_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_select1_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_select1_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_select1_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sh_prom14_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_sh_prom14_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom17_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_sh_prom17_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom31_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom31_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom33_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom33_i_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_sh_prom_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i_average_value_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_shl2_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl2_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl42_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl42_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl42_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl42_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl_i13_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i13_average_value_vt_select_63_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_shl_i23_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i23_average_value_vt_select_12_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i29_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i29_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i29_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i29_average_value_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shl_i2_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i2_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i2_average_value_vt_select_63_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shr12_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr12_i_i_average_value_vt_select_30_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr14_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr14_i_i_average_value_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_shr16_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr16_i_i_average_value_vt_select_27_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shr18_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr18_i_i_average_value_vt_select_23_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_shr20_i_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr20_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr20_i_i_average_value_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr266_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_shr266_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr266_i_average_value_vt_select_54_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr3_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr3_i_average_value_vt_select_52_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr4_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr4_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr4_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_sub10_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub10_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_sub10_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub10_i_average_value_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_sub19_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub19_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub19_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub19_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub23_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub30_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_sub30_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub30_i_average_value_vt_select_13_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_sub5_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub5_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub5_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_syncbuf_n_sync_buffer2_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_sync_buffer3_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tobool254_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool275_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool297_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool52_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool_i3_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tr_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tr_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_average_value101_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value101_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value101_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value102_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value102_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value103_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value103_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value103_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value77_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value77_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_average_value93_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value93_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_vt_select_54_b : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid762_i_and1_i_average_value_average_value108_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid767_i_and1_i_average_value_average_value108_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid772_i_and1_i_average_value_average_value108_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng8_uid779_i_and274_i_lobit_average_value_average_value100_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid781_i_and274_i_lobit_average_value_average_value100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid784_i_and274_i_lobit_average_value_average_value100_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid786_i_and274_i_lobit_average_value_average_value100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid789_i_and274_i_lobit_average_value_average_value100_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid791_i_and274_i_lobit_average_value_average_value100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1_uid800_i_and2_or7_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1_uid805_i_and2_or7_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng32_uid812_i_and3_i_average_value_average_value90_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1_uid814_i_and3_i_average_value_average_value90_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx1Rng16_uid817_i_and3_i_average_value_average_value90_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1_uid819_i_and3_i_average_value_average_value90_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2Idx1Rng4_uid822_i_and3_i_average_value_average_value90_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage2Idx1_uid824_i_and3_i_average_value_average_value90_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid833_i_op_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid838_i_op_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid843_i_op_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1_uid852_i_shl15_i_average_value_average_value79_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2_uid855_i_shl15_i_average_value_average_value79_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3_uid858_i_shl15_i_average_value_average_value79_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1_uid867_i_shl18_i_average_value_average_value80_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2_uid870_i_shl18_i_average_value_average_value80_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3_uid873_i_shl18_i_average_value_average_value80_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx4_uid891_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx5_uid894_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx6_uid897_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx7_uid900_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid905_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx2_uid908_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage1Idx3_uid911_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid920_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx3Pad6_uid924_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage0Idx3_uid926_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x_in : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx5_uid932_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx7Pad14_uid936_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x_in : STD_LOGIC_VECTOR (17 downto 0);
    signal leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal leftShiftStage0Idx7_uid938_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid943_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid952_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid957_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx1_uid962_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage3Idx1_uid967_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1_uid976_i_shl_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2_uid979_i_shl_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Pad48_uid980_i_shl_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3_uid982_i_shl_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel5Dto4_uid983_i_shl_i_average_value_average_value78_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid989_i_shr12_i_i_average_value_average_value71_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid991_i_shr12_i_i_average_value_average_value71_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid998_i_shr14_i_i_average_value_average_value72_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1000_i_shr14_i_i_average_value_average_value72_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1007_i_shr16_i_i_average_value_average_value73_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1009_i_shr16_i_i_average_value_average_value73_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1016_i_shr18_i_i_average_value_average_value74_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1018_i_shr18_i_i_average_value_average_value74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1025_i_shr20_i_i_average_value_average_value75_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1027_i_shr20_i_i_average_value_average_value75_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1034_i_shr266_i_average_value_average_value96_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage0Idx1_uid1036_i_shr266_i_average_value_average_value96_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1043_i_shr34_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage0Idx1_uid1045_i_shr34_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng2_uid1046_i_shr34_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx2_uid1048_i_shr34_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx3Rng3_uid1049_i_shr34_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage0Idx3_uid1051_i_shr34_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1058_i_shr3_i_average_value_average_value109_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx1_uid1060_i_shr3_i_average_value_average_value109_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1063_i_shr3_i_average_value_average_value109_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage1Idx1_uid1065_i_shr3_i_average_value_average_value109_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1072_i_shr_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage0Idx1_uid1074_i_shr_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng8_uid1075_i_shr_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal rightShiftStage0Idx2_uid1077_i_shr_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx3Rng12_uid1078_i_shr_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal rightShiftStage0Idx3_uid1080_i_shr_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2Idx1Rng2_uid1097_i_unnamed_average_value94_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx1_uid1099_i_unnamed_average_value94_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1Rng1_uid1102_i_unnamed_average_value94_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage3Idx1_uid1104_i_unnamed_average_value94_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and12_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and16_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and253_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and253_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and265_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and265_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and274_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and274_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and283_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and283_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and31_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_and31_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and4_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and4_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and5_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and5_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_op_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_conv353_i_op_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv50_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv50_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_or352_i_average_value_BitSelect_for_b_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or352_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or7_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or7_i_average_value_BitSelect_for_a_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or7_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl2_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl2_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i23_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i23_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr4_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shr4_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in : STD_LOGIC_VECTOR (126 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62 : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i_average_value_vt_select_51_merged_bit_select_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or_i_average_value_vt_select_51_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_or352_i_average_value_BitSelect_for_b_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_i_and4_i_average_value_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal redist65_sync_in_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_sync_in_in_i_valid_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_i_sub30_i_average_value_vt_select_13_b_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist68_i_select1_average_value_vt_join_q_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist69_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist70_i_conv_average_value_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist71_i_conv50_i_average_value_vt_select_55_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist72_i_conv3_average_value_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist73_i_conv353_i_average_value_vt_select_12_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist74_i_cmp9_i_average_value_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist75_i_and2_i25_average_value_vt_select_51_b_1_q : STD_LOGIC_VECTOR (51 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist65_sync_in_in_i_valid_2(DELAY,1243)
    redist65_sync_in_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist65_sync_in_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist66_sync_in_in_i_valid_14(DELAY,1244)
    redist66_sync_in_in_i_valid_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist65_sync_in_in_i_valid_2_q, xout => redist66_sync_in_in_i_valid_14_q, clk => clock, aclr => resetn );

    -- i_syncbuf_n_sync_buffer3_average_value(BLACKBOX,696)@0
    thei_syncbuf_n_sync_buffer3_average_value : i_syncbuf_n_sync_buffer3_average_value111
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_sync_buffer3_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_conv3_average_value(BLACKBOX,533)@0
    -- out out_primWireOut@1
    thei_conv3_average_value : floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Z50c2463a0054c2a6355y
    PORT MAP (
        in_0 => i_syncbuf_n_sync_buffer3_average_value_out_buffer_out,
        out_primWireOut => i_conv3_average_value_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist72_i_conv3_average_value_out_primWireOut_1(DELAY,1250)
    redist72_i_conv3_average_value_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv3_average_value_out_primWireOut, xout => redist72_i_conv3_average_value_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x(BITSELECT,770)@6
    leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x_in <= leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x_b <= leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x_in(59 downto 0);

    -- i_and12_i_average_value_vt_const_3(CONSTANT,397)
    i_and12_i_average_value_vt_const_3_q <= "0000";

    -- leftShiftStage2Idx1_uid772_i_and1_i_average_value_average_value108_shift_x(BITJOIN,771)@6
    leftShiftStage2Idx1_uid772_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage2Idx1Rng4_uid771_i_and1_i_average_value_average_value108_shift_x_b & i_and12_i_average_value_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x(BITSELECT,765)@6
    leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x_in <= leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x_b <= leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x_in(47 downto 0);

    -- i_shr20_i_i_average_value_vt_const_31(CONSTANT,666)
    i_shr20_i_i_average_value_vt_const_31_q <= "0000000000000000";

    -- leftShiftStage1Idx1_uid767_i_and1_i_average_value_average_value108_shift_x(BITJOIN,766)@6
    leftShiftStage1Idx1_uid767_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage1Idx1Rng16_uid766_i_and1_i_average_value_average_value108_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x(BITSELECT,760)@6
    leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x_in <= i_and60_i_average_value_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x_b <= leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x_in(31 downto 0);

    -- c_i32_0gr(CONSTANT,323)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- leftShiftStage0Idx1_uid762_i_and1_i_average_value_average_value108_shift_x(BITJOIN,761)@6
    leftShiftStage0Idx1_uid762_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage0Idx1Rng32_uid761_i_and1_i_average_value_average_value108_shift_x_b & c_i32_0gr_q;

    -- i_conv353_i_average_value_vt_const_63(CONSTANT,526)
    i_conv353_i_average_value_vt_const_63_q <= "000000000000000000000000000000000000000000000000000";

    -- i_acl_22_i_average_value_vt_const_31(CONSTANT,374)
    i_acl_22_i_average_value_vt_const_31_q <= "0000000000000000000";

    -- rightShiftStage3Idx1Rng1_uid1102_i_unnamed_average_value94_shift_x(BITSELECT,1101)@4
    rightShiftStage3Idx1Rng1_uid1102_i_unnamed_average_value94_shift_x_b <= rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q(63 downto 1);

    -- rightShiftStage3Idx1_uid1104_i_unnamed_average_value94_shift_x(BITJOIN,1103)@4
    rightShiftStage3Idx1_uid1104_i_unnamed_average_value94_shift_x_q <= GND_q & rightShiftStage3Idx1Rng1_uid1102_i_unnamed_average_value94_shift_x_b;

    -- i_acl_47_i_average_value_vt_const_1(CONSTANT,379)
    i_acl_47_i_average_value_vt_const_1_q <= "00";

    -- rightShiftStage2Idx1Rng2_uid1097_i_unnamed_average_value94_shift_x(BITSELECT,1096)@4
    rightShiftStage2Idx1Rng2_uid1097_i_unnamed_average_value94_shift_x_b <= rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q(63 downto 2);

    -- rightShiftStage2Idx1_uid1099_i_unnamed_average_value94_shift_x(BITJOIN,1098)@4
    rightShiftStage2Idx1_uid1099_i_unnamed_average_value94_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage2Idx1Rng2_uid1097_i_unnamed_average_value94_shift_x_b;

    -- rightShiftStage1Idx1Rng16_uid817_i_and3_i_average_value_average_value90_shift_x(BITSELECT,816)@4
    rightShiftStage1Idx1Rng16_uid817_i_and3_i_average_value_average_value90_shift_x_b <= rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q(63 downto 16);

    -- rightShiftStage1Idx1_uid819_i_and3_i_average_value_average_value90_shift_x(BITJOIN,818)@4
    rightShiftStage1Idx1_uid819_i_and3_i_average_value_average_value90_shift_x_q <= i_shr20_i_i_average_value_vt_const_31_q & rightShiftStage1Idx1Rng16_uid817_i_and3_i_average_value_average_value90_shift_x_b;

    -- rightShiftStage0Idx1Rng32_uid812_i_and3_i_average_value_average_value90_shift_x(BITSELECT,811)@4
    rightShiftStage0Idx1Rng32_uid812_i_and3_i_average_value_average_value90_shift_x_b <= bgTrunc_i_add_i_average_value_sel_x_b(63 downto 32);

    -- rightShiftStage0Idx1_uid814_i_and3_i_average_value_average_value90_shift_x(BITJOIN,813)@4
    rightShiftStage0Idx1_uid814_i_and3_i_average_value_average_value90_shift_x_q <= c_i32_0gr_q & rightShiftStage0Idx1Rng32_uid812_i_and3_i_average_value_average_value90_shift_x_b;

    -- i_acl_10_i_average_value_vt_const_63(CONSTANT,366)
    i_acl_10_i_average_value_vt_const_63_q <= "000000000000000000000000000000000000000000000000000000000000000";

    -- i_not_cmp9_i_average_value(LOGICAL,563)@4
    i_not_cmp9_i_average_value_q <= redist74_i_cmp9_i_average_value_c_1_q xor VCC_q;

    -- c_i64_1gr(CONSTANT,348)
    c_i64_1gr_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_and2_or7_op_i_average_value_vt_const_2(CONSTANT,456)
    i_and2_or7_op_i_average_value_vt_const_2_q <= "000";

    -- rightShiftStage0Idx3Rng3_uid1049_i_shr34_i_average_value_average_value84_shift_x(BITSELECT,1048)@3
    rightShiftStage0Idx3Rng3_uid1049_i_shr34_i_average_value_average_value84_shift_x_b <= rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q(63 downto 3);

    -- rightShiftStage0Idx3_uid1051_i_shr34_i_average_value_average_value84_shift_x(BITJOIN,1050)@3
    rightShiftStage0Idx3_uid1051_i_shr34_i_average_value_average_value84_shift_x_q <= i_and2_or7_op_i_average_value_vt_const_2_q & rightShiftStage0Idx3Rng3_uid1049_i_shr34_i_average_value_average_value84_shift_x_b;

    -- rightShiftStage0Idx2Rng2_uid1046_i_shr34_i_average_value_average_value84_shift_x(BITSELECT,1045)@3
    rightShiftStage0Idx2Rng2_uid1046_i_shr34_i_average_value_average_value84_shift_x_b <= rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q(63 downto 2);

    -- rightShiftStage0Idx2_uid1048_i_shr34_i_average_value_average_value84_shift_x(BITJOIN,1047)@3
    rightShiftStage0Idx2_uid1048_i_shr34_i_average_value_average_value84_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx2Rng2_uid1046_i_shr34_i_average_value_average_value84_shift_x_b;

    -- rightShiftStage0Idx1Rng1_uid1043_i_shr34_i_average_value_average_value84_shift_x(BITSELECT,1042)@3
    rightShiftStage0Idx1Rng1_uid1043_i_shr34_i_average_value_average_value84_shift_x_b <= rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q(63 downto 1);

    -- rightShiftStage0Idx1_uid1045_i_shr34_i_average_value_average_value84_shift_x(BITJOIN,1044)@3
    rightShiftStage0Idx1_uid1045_i_shr34_i_average_value_average_value84_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1043_i_shr34_i_average_value_average_value84_shift_x_b;

    -- rightShiftStage0Idx3Rng12_uid1078_i_shr_i_average_value_average_value83_shift_x(BITSELECT,1077)@3
    rightShiftStage0Idx3Rng12_uid1078_i_shr_i_average_value_average_value83_shift_x_b <= redist68_i_select1_average_value_vt_join_q_1_q(63 downto 12);

    -- rightShiftStage0Idx3_uid1080_i_shr_i_average_value_average_value83_shift_x(BITJOIN,1079)@3
    rightShiftStage0Idx3_uid1080_i_shr_i_average_value_average_value83_shift_x_q <= i_and253_i_average_value_vt_const_11_q & rightShiftStage0Idx3Rng12_uid1078_i_shr_i_average_value_average_value83_shift_x_b;

    -- c_i8_0gr(CONSTANT,363)
    c_i8_0gr_q <= "00000000";

    -- rightShiftStage0Idx2Rng8_uid1075_i_shr_i_average_value_average_value83_shift_x(BITSELECT,1074)@3
    rightShiftStage0Idx2Rng8_uid1075_i_shr_i_average_value_average_value83_shift_x_b <= redist68_i_select1_average_value_vt_join_q_1_q(63 downto 8);

    -- rightShiftStage0Idx2_uid1077_i_shr_i_average_value_average_value83_shift_x(BITJOIN,1076)@3
    rightShiftStage0Idx2_uid1077_i_shr_i_average_value_average_value83_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx2Rng8_uid1075_i_shr_i_average_value_average_value83_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid1072_i_shr_i_average_value_average_value83_shift_x(BITSELECT,1071)@3
    rightShiftStage0Idx1Rng4_uid1072_i_shr_i_average_value_average_value83_shift_x_b <= redist68_i_select1_average_value_vt_join_q_1_q(63 downto 4);

    -- rightShiftStage0Idx1_uid1074_i_shr_i_average_value_average_value83_shift_x(BITJOIN,1073)@3
    rightShiftStage0Idx1_uid1074_i_shr_i_average_value_average_value83_shift_x_q <= i_and12_i_average_value_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1072_i_shr_i_average_value_average_value83_shift_x_b;

    -- c_i64_4294967295(CONSTANT,355)
    c_i64_4294967295_q <= "0000000000000000000000000000000011111111111111111111111111111111";

    -- i_ffwd_dst_temp_0_0_0235_average_value(BLACKBOX,551)@2
    thei_ffwd_dst_temp_0_0_0235_average_value : i_ffwd_dst_temp_0_0_0235_average_value64
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_in_i_valid_2_q,
        out_dest_data_out_0_0 => i_ffwd_dst_temp_0_0_0235_average_value_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_conv_i_i6_average_value(BLACKBOX,550)@2
    thei_ffwd_dst_conv_i_i6_average_value : i_ffwd_dst_conv_i_i6_average_value66
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_in_i_valid_2_q,
        out_dest_data_out_1_0 => i_ffwd_dst_conv_i_i6_average_value_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fold_average_value(ADD,552)@2
    i_fold_average_value_a <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv_i_i6_average_value_out_dest_data_out_1_0);
    i_fold_average_value_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_temp_0_0_0235_average_value_out_dest_data_out_0_0);
    i_fold_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fold_average_value_a) + UNSIGNED(i_fold_average_value_b));
    i_fold_average_value_q <= i_fold_average_value_o(64 downto 0);

    -- bgTrunc_i_fold_average_value_sel_x(BITSELECT,4)@2
    bgTrunc_i_fold_average_value_sel_x_b <= i_fold_average_value_q(63 downto 0);

    -- i_phitmp_average_value(LOGICAL,592)@2
    i_phitmp_average_value_q <= bgTrunc_i_fold_average_value_sel_x_b and c_i64_4294967295_q;

    -- i_phitmp_average_value_vt_select_31(BITSELECT,595)@2
    i_phitmp_average_value_vt_select_31_b <= i_phitmp_average_value_q(31 downto 0);

    -- i_phitmp_average_value_vt_join(BITJOIN,594)@2
    i_phitmp_average_value_vt_join_q <= c_i32_0gr_q & i_phitmp_average_value_vt_select_31_b;

    -- i_syncbuf_n_sync_buffer2_average_value(BLACKBOX,695)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_n_sync_buffer2_average_value : i_syncbuf_n_sync_buffer2_average_value68
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist65_sync_in_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_n_sync_buffer2_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp22_rm1_average_value(COMPARE,508)@2
    i_cmp22_rm1_average_value_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp22_rm1_average_value_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_n_sync_buffer2_average_value_out_buffer_out(31)) & i_syncbuf_n_sync_buffer2_average_value_out_buffer_out));
    i_cmp22_rm1_average_value_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp22_rm1_average_value_a) - SIGNED(i_cmp22_rm1_average_value_b));
    i_cmp22_rm1_average_value_c(0) <= i_cmp22_rm1_average_value_o(33);

    -- i_select1_average_value(MUX,600)@2
    i_select1_average_value_s <= i_cmp22_rm1_average_value_c;
    i_select1_average_value_combproc: PROCESS (i_select1_average_value_s, dupName_0_c_i64_0gr_x_q, i_phitmp_average_value_vt_join_q)
    BEGIN
        CASE (i_select1_average_value_s) IS
            WHEN "0" => i_select1_average_value_q <= dupName_0_c_i64_0gr_x_q;
            WHEN "1" => i_select1_average_value_q <= i_phitmp_average_value_vt_join_q;
            WHEN OTHERS => i_select1_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_select1_average_value_vt_select_31(BITSELECT,603)@2
    i_select1_average_value_vt_select_31_b <= i_select1_average_value_q(31 downto 0);

    -- i_select1_average_value_vt_join(BITJOIN,602)@2
    i_select1_average_value_vt_join_q <= c_i32_0gr_q & i_select1_average_value_vt_select_31_b;

    -- redist68_i_select1_average_value_vt_join_q_1(DELAY,1246)
    redist68_i_select1_average_value_vt_join_q_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_select1_average_value_vt_join_q, xout => redist68_i_select1_average_value_vt_join_q_1_q, clk => clock, aclr => resetn );

    -- i_sh_prom14_i_average_value_vt_const_63(CONSTANT,606)
    i_sh_prom14_i_average_value_vt_const_63_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_and13_i_average_value_vt_const_31(CONSTANT,403)
    i_and13_i_average_value_vt_const_31_q <= "0000000000000000000000000000";

    -- c_i32_12(CONSTANT,327)
    c_i32_12_q <= "00000000000000000000000000001100";

    -- i_and12_i_average_value_vt_const_31(CONSTANT,398)
    i_and12_i_average_value_vt_const_31_q <= "00000000000000000000000000";

    -- dupName_0_c_i32_1gr_x(CONSTANT,12)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- i_conv1_i_i_average_value_sel_x(BITSELECT,36)@2
    i_conv1_i_i_average_value_sel_x_b <= i_select1_average_value_vt_join_q(31 downto 0);

    -- rightShiftStage0Idx1Rng1_uid989_i_shr12_i_i_average_value_average_value71_shift_x(BITSELECT,988)@2
    rightShiftStage0Idx1Rng1_uid989_i_shr12_i_i_average_value_average_value71_shift_x_b <= i_conv1_i_i_average_value_sel_x_b(31 downto 1);

    -- rightShiftStage0Idx1_uid991_i_shr12_i_i_average_value_average_value71_shift_x(BITJOIN,990)@2
    rightShiftStage0Idx1_uid991_i_shr12_i_i_average_value_average_value71_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid989_i_shr12_i_i_average_value_average_value71_shift_x_b;

    -- rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x(MUX,992)@2
    rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_s <= VCC_q;
    rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_combproc: PROCESS (rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_s, i_conv1_i_i_average_value_sel_x_b, rightShiftStage0Idx1_uid991_i_shr12_i_i_average_value_average_value71_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_q <= i_conv1_i_i_average_value_sel_x_b;
            WHEN "1" => rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_q <= rightShiftStage0Idx1_uid991_i_shr12_i_i_average_value_average_value71_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr12_i_i_average_value_vt_select_30(BITSELECT,656)@2
    i_shr12_i_i_average_value_vt_select_30_b <= rightShiftStage0_uid993_i_shr12_i_i_average_value_average_value71_shift_x_q(30 downto 0);

    -- i_shr12_i_i_average_value_vt_join(BITJOIN,655)@2
    i_shr12_i_i_average_value_vt_join_q <= GND_q & i_shr12_i_i_average_value_vt_select_30_b;

    -- i_or13_i_i_average_value(LOGICAL,568)@2
    i_or13_i_i_average_value_q <= i_shr12_i_i_average_value_vt_join_q or i_conv1_i_i_average_value_sel_x_b;

    -- rightShiftStage0Idx1Rng2_uid998_i_shr14_i_i_average_value_average_value72_shift_x(BITSELECT,997)@2
    rightShiftStage0Idx1Rng2_uid998_i_shr14_i_i_average_value_average_value72_shift_x_b <= i_or13_i_i_average_value_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1000_i_shr14_i_i_average_value_average_value72_shift_x(BITJOIN,999)@2
    rightShiftStage0Idx1_uid1000_i_shr14_i_i_average_value_average_value72_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx1Rng2_uid998_i_shr14_i_i_average_value_average_value72_shift_x_b;

    -- rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x(MUX,1001)@2
    rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_s <= VCC_q;
    rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_combproc: PROCESS (rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_s, i_or13_i_i_average_value_q, rightShiftStage0Idx1_uid1000_i_shr14_i_i_average_value_average_value72_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_q <= i_or13_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_q <= rightShiftStage0Idx1_uid1000_i_shr14_i_i_average_value_average_value72_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr14_i_i_average_value_vt_select_29(BITSELECT,659)@2
    i_shr14_i_i_average_value_vt_select_29_b <= rightShiftStage0_uid1002_i_shr14_i_i_average_value_average_value72_shift_x_q(29 downto 0);

    -- i_shr14_i_i_average_value_vt_join(BITJOIN,658)@2
    i_shr14_i_i_average_value_vt_join_q <= i_acl_47_i_average_value_vt_const_1_q & i_shr14_i_i_average_value_vt_select_29_b;

    -- i_or15_i_i_average_value(LOGICAL,569)@2
    i_or15_i_i_average_value_q <= i_shr14_i_i_average_value_vt_join_q or i_or13_i_i_average_value_q;

    -- rightShiftStage0Idx1Rng4_uid1007_i_shr16_i_i_average_value_average_value73_shift_x(BITSELECT,1006)@2
    rightShiftStage0Idx1Rng4_uid1007_i_shr16_i_i_average_value_average_value73_shift_x_b <= i_or15_i_i_average_value_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1009_i_shr16_i_i_average_value_average_value73_shift_x(BITJOIN,1008)@2
    rightShiftStage0Idx1_uid1009_i_shr16_i_i_average_value_average_value73_shift_x_q <= i_and12_i_average_value_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1007_i_shr16_i_i_average_value_average_value73_shift_x_b;

    -- rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x(MUX,1010)@2
    rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_s <= VCC_q;
    rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_combproc: PROCESS (rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_s, i_or15_i_i_average_value_q, rightShiftStage0Idx1_uid1009_i_shr16_i_i_average_value_average_value73_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_q <= i_or15_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_q <= rightShiftStage0Idx1_uid1009_i_shr16_i_i_average_value_average_value73_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr16_i_i_average_value_vt_select_27(BITSELECT,662)@2
    i_shr16_i_i_average_value_vt_select_27_b <= rightShiftStage0_uid1011_i_shr16_i_i_average_value_average_value73_shift_x_q(27 downto 0);

    -- i_shr16_i_i_average_value_vt_join(BITJOIN,661)@2
    i_shr16_i_i_average_value_vt_join_q <= i_and12_i_average_value_vt_const_3_q & i_shr16_i_i_average_value_vt_select_27_b;

    -- i_or17_i_i_average_value(LOGICAL,570)@2
    i_or17_i_i_average_value_q <= i_shr16_i_i_average_value_vt_join_q or i_or15_i_i_average_value_q;

    -- rightShiftStage0Idx1Rng8_uid1016_i_shr18_i_i_average_value_average_value74_shift_x(BITSELECT,1015)@2
    rightShiftStage0Idx1Rng8_uid1016_i_shr18_i_i_average_value_average_value74_shift_x_b <= i_or17_i_i_average_value_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1018_i_shr18_i_i_average_value_average_value74_shift_x(BITJOIN,1017)@2
    rightShiftStage0Idx1_uid1018_i_shr18_i_i_average_value_average_value74_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid1016_i_shr18_i_i_average_value_average_value74_shift_x_b;

    -- rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x(MUX,1019)@2
    rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_s <= VCC_q;
    rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_combproc: PROCESS (rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_s, i_or17_i_i_average_value_q, rightShiftStage0Idx1_uid1018_i_shr18_i_i_average_value_average_value74_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_q <= i_or17_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_q <= rightShiftStage0Idx1_uid1018_i_shr18_i_i_average_value_average_value74_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr18_i_i_average_value_vt_select_23(BITSELECT,665)@2
    i_shr18_i_i_average_value_vt_select_23_b <= rightShiftStage0_uid1020_i_shr18_i_i_average_value_average_value74_shift_x_q(23 downto 0);

    -- i_shr18_i_i_average_value_vt_join(BITJOIN,664)@2
    i_shr18_i_i_average_value_vt_join_q <= c_i8_0gr_q & i_shr18_i_i_average_value_vt_select_23_b;

    -- i_or19_i_i_average_value(LOGICAL,571)@2
    i_or19_i_i_average_value_q <= i_shr18_i_i_average_value_vt_join_q or i_or17_i_i_average_value_q;

    -- rightShiftStage0Idx1Rng16_uid1025_i_shr20_i_i_average_value_average_value75_shift_x(BITSELECT,1024)@2
    rightShiftStage0Idx1Rng16_uid1025_i_shr20_i_i_average_value_average_value75_shift_x_b <= i_or19_i_i_average_value_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1027_i_shr20_i_i_average_value_average_value75_shift_x(BITJOIN,1026)@2
    rightShiftStage0Idx1_uid1027_i_shr20_i_i_average_value_average_value75_shift_x_q <= i_shr20_i_i_average_value_vt_const_31_q & rightShiftStage0Idx1Rng16_uid1025_i_shr20_i_i_average_value_average_value75_shift_x_b;

    -- rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x(MUX,1028)@2
    rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_s <= VCC_q;
    rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_combproc: PROCESS (rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_s, i_or19_i_i_average_value_q, rightShiftStage0Idx1_uid1027_i_shr20_i_i_average_value_average_value75_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_q <= i_or19_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_q <= rightShiftStage0Idx1_uid1027_i_shr20_i_i_average_value_average_value75_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr20_i_i_average_value_vt_select_15(BITSELECT,668)@2
    i_shr20_i_i_average_value_vt_select_15_b <= rightShiftStage0_uid1029_i_shr20_i_i_average_value_average_value75_shift_x_q(15 downto 0);

    -- i_shr20_i_i_average_value_vt_join(BITJOIN,667)@2
    i_shr20_i_i_average_value_vt_join_q <= i_shr20_i_i_average_value_vt_const_31_q & i_shr20_i_i_average_value_vt_select_15_b;

    -- i_or21_i_i_average_value(LOGICAL,572)@2
    i_or21_i_i_average_value_q <= i_shr20_i_i_average_value_vt_join_q or i_or19_i_i_average_value_q;

    -- i_neg22_i_i_average_value(LOGICAL,562)@2
    i_neg22_i_i_average_value_q <= i_or21_i_i_average_value_q xor dupName_0_c_i32_1gr_x_q;

    -- i_llvm_ctpop_i32_unnamed_average_value6_average_value(EXTIFACE,554)@2
    i_llvm_ctpop_i32_unnamed_average_value6_average_value_data <= i_neg22_i_i_average_value_q;
    thei_llvm_ctpop_i32_unnamed_average_value6_average_value : thirtysix_six_comp
    PORT MAP (
        data => i_neg22_i_i_average_value_q,
        sum => i_llvm_ctpop_i32_unnamed_average_value6_average_value_sum
    );

    -- i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5(BITSELECT,557)@2
    i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b <= i_llvm_ctpop_i32_unnamed_average_value6_average_value_sum(5 downto 0);

    -- redist69_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1(DELAY,1247)
    redist69_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b, xout => redist69_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1_q, clk => clock, aclr => resetn );

    -- i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join(BITJOIN,556)@3
    i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q <= i_and12_i_average_value_vt_const_31_q & redist69_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1_q;

    -- c_i32_21(CONSTANT,333)
    c_i32_21_q <= "11111111111111111111111111101011";

    -- i_sub19_i_average_value(SUB,684)@3
    i_sub19_i_average_value_a <= STD_LOGIC_VECTOR("0" & c_i32_21_q);
    i_sub19_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_sub19_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub19_i_average_value_a) - UNSIGNED(i_sub19_i_average_value_b));
    i_sub19_i_average_value_q <= i_sub19_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub19_i_average_value_sel_x(BITSELECT,6)@3
    bgTrunc_i_sub19_i_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub19_i_average_value_q(31 downto 0));

    -- i_and30_i_average_value(LOGICAL,470)@3
    i_and30_i_average_value_q <= bgTrunc_i_sub19_i_average_value_sel_x_b and c_i32_12_q;

    -- i_and30_i_average_value_vt_select_3(BITSELECT,474)@3
    i_and30_i_average_value_vt_select_3_b <= i_and30_i_average_value_q(3 downto 2);

    -- i_and30_i_average_value_vt_join(BITJOIN,473)@3
    i_and30_i_average_value_vt_join_q <= i_and13_i_average_value_vt_const_31_q & i_and30_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_sh_prom31_i_average_value_sel_x(BITSELECT,240)@3
    i_sh_prom31_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and30_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom31_i_average_value_vt_select_3(BITSELECT,617)@3
    i_sh_prom31_i_average_value_vt_select_3_b <= i_sh_prom31_i_average_value_sel_x_b(3 downto 2);

    -- i_sh_prom31_i_average_value_vt_join(BITJOIN,616)@3
    i_sh_prom31_i_average_value_vt_join_q <= i_sh_prom14_i_average_value_vt_const_63_q & i_sh_prom31_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_shr_i_average_value_average_value83_shift_narrow_x(BITSELECT,302)@3
    i_shr_i_average_value_average_value83_shift_narrow_x_b <= i_sh_prom31_i_average_value_vt_join_q(5 downto 0);

    -- rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x(BITSELECT,1080)@3
    rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x_in <= i_shr_i_average_value_average_value83_shift_narrow_x_b(3 downto 0);
    rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x_b <= rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x_in(3 downto 2);

    -- rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x(MUX,1081)@3
    rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_s <= rightShiftStageSel3Dto2_uid1081_i_shr_i_average_value_average_value83_shift_x_b;
    rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_combproc: PROCESS (rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_s, redist68_i_select1_average_value_vt_join_q_1_q, rightShiftStage0Idx1_uid1074_i_shr_i_average_value_average_value83_shift_x_q, rightShiftStage0Idx2_uid1077_i_shr_i_average_value_average_value83_shift_x_q, rightShiftStage0Idx3_uid1080_i_shr_i_average_value_average_value83_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q <= redist68_i_select1_average_value_vt_join_q_1_q;
            WHEN "01" => rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q <= rightShiftStage0Idx1_uid1074_i_shr_i_average_value_average_value83_shift_x_q;
            WHEN "10" => rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q <= rightShiftStage0Idx2_uid1077_i_shr_i_average_value_average_value83_shift_x_q;
            WHEN "11" => rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q <= rightShiftStage0Idx3_uid1080_i_shr_i_average_value_average_value83_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sh_prom17_i_average_value_vt_const_63(CONSTANT,610)
    i_sh_prom17_i_average_value_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_and16_i_average_value_vt_const_31(CONSTANT,407)
    i_and16_i_average_value_vt_const_31_q <= "000000000000000000000000000000";

    -- c_i32_3gr(CONSTANT,336)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- i_and32_i_average_value(LOGICAL,483)@3
    i_and32_i_average_value_q <= bgTrunc_i_sub19_i_average_value_sel_x_b and c_i32_3gr_q;

    -- i_and32_i_average_value_vt_select_1(BITSELECT,486)@3
    i_and32_i_average_value_vt_select_1_b <= i_and32_i_average_value_q(1 downto 0);

    -- i_and32_i_average_value_vt_join(BITJOIN,485)@3
    i_and32_i_average_value_vt_join_q <= i_and16_i_average_value_vt_const_31_q & i_and32_i_average_value_vt_select_1_b;

    -- i_sh_prom33_i_average_value_sel_x(BITSELECT,241)@3
    i_sh_prom33_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and32_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom33_i_average_value_vt_select_1(BITSELECT,621)@3
    i_sh_prom33_i_average_value_vt_select_1_b <= i_sh_prom33_i_average_value_sel_x_b(1 downto 0);

    -- i_sh_prom33_i_average_value_vt_join(BITJOIN,620)@3
    i_sh_prom33_i_average_value_vt_join_q <= i_sh_prom17_i_average_value_vt_const_63_q & i_sh_prom33_i_average_value_vt_select_1_b;

    -- i_shr34_i_average_value_average_value84_shift_narrow_x(BITSELECT,294)@3
    i_shr34_i_average_value_average_value84_shift_narrow_x_b <= i_sh_prom33_i_average_value_vt_join_q(5 downto 0);

    -- rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x(BITSELECT,1051)@3
    rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x_in <= i_shr34_i_average_value_average_value84_shift_narrow_x_b(1 downto 0);
    rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x_b <= rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x_in(1 downto 0);

    -- rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x(MUX,1052)@3
    rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_s <= rightShiftStageSel1Dto0_uid1052_i_shr34_i_average_value_average_value84_shift_x_b;
    rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_combproc: PROCESS (rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_s, rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q, rightShiftStage0Idx1_uid1045_i_shr34_i_average_value_average_value84_shift_x_q, rightShiftStage0Idx2_uid1048_i_shr34_i_average_value_average_value84_shift_x_q, rightShiftStage0Idx3_uid1051_i_shr34_i_average_value_average_value84_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q <= rightShiftStage0_uid1082_i_shr_i_average_value_average_value83_shift_x_q;
            WHEN "01" => rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q <= rightShiftStage0Idx1_uid1045_i_shr34_i_average_value_average_value84_shift_x_q;
            WHEN "10" => rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q <= rightShiftStage0Idx2_uid1048_i_shr34_i_average_value_average_value84_shift_x_q;
            WHEN "11" => rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q <= rightShiftStage0Idx3_uid1051_i_shr34_i_average_value_average_value84_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and36_i_average_value(LOGICAL,487)@3
    i_and36_i_average_value_q <= rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q and c_i64_1gr_q;

    -- i_and36_i_average_value_vt_select_0(BITSELECT,490)@3
    i_and36_i_average_value_vt_select_0_b <= i_and36_i_average_value_q(0 downto 0);

    -- i_and36_i_average_value_vt_join(BITJOIN,489)@3
    i_and36_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_and36_i_average_value_vt_select_0_b;

    -- i_cmp37_i_average_value(LOGICAL,513)@3 + 1
    i_cmp37_i_average_value_qi <= "1" WHEN i_and36_i_average_value_vt_join_q /= dupName_0_c_i64_0gr_x_q ELSE "0";
    i_cmp37_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp37_i_average_value_qi, xout => i_cmp37_i_average_value_q, clk => clock, aclr => resetn );

    -- i_or_cond_i_average_value(LOGICAL,585)@4
    i_or_cond_i_average_value_q <= i_cmp37_i_average_value_q or i_cmp38_i_average_value_c;

    -- i_and29_i_average_value_vt_const_15(CONSTANT,445)
    i_and29_i_average_value_vt_const_15_q <= "00000";

    -- c_i32_65535(CONSTANT,342)
    c_i32_65535_q <= "00000000000000001111111111111111";

    -- leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x(BITSELECT,941)@3
    leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x_in <= leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x_b <= leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid943_i_shl26_i_average_value_average_value82_shift_x(BITJOIN,942)@3
    leftShiftStage1Idx1_uid943_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage1Idx1Rng1_uid942_i_shl26_i_average_value_average_value82_shift_x_b & GND_q;

    -- leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x(BITSELECT,936)
    leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x_in <= c_i32_1gr_q(17 downto 0);
    leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x_b <= leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x_in(17 downto 0);

    -- leftShiftStage0Idx7Pad14_uid936_i_shl26_i_average_value_average_value82_shift_x(CONSTANT,935)
    leftShiftStage0Idx7Pad14_uid936_i_shl26_i_average_value_average_value82_shift_x_q <= "00000000000000";

    -- leftShiftStage0Idx7_uid938_i_shl26_i_average_value_average_value82_shift_x(BITJOIN,937)
    leftShiftStage0Idx7_uid938_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx7Rng14_uid937_i_shl26_i_average_value_average_value82_shift_x_b & leftShiftStage0Idx7Pad14_uid936_i_shl26_i_average_value_average_value82_shift_x_q;

    -- leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,886)
    leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(19 downto 0);
    leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x_in(19 downto 0);

    -- leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,887)
    leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx3Rng12_uid887_i_shl24_i_average_value_average_value81_shift_x_b & i_and253_i_average_value_vt_const_11_q;

    -- leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x(BITSELECT,930)
    leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x_in <= c_i32_1gr_q(21 downto 0);
    leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x_b <= leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x_in(21 downto 0);

    -- i_and283_i_average_value_vt_const_63(CONSTANT,436)
    i_and283_i_average_value_vt_const_63_q <= "0000000000";

    -- leftShiftStage0Idx5_uid932_i_shl26_i_average_value_average_value82_shift_x(BITJOIN,931)
    leftShiftStage0Idx5_uid932_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx5Rng10_uid931_i_shl26_i_average_value_average_value82_shift_x_b & i_and283_i_average_value_vt_const_63_q;

    -- leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,883)
    leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(23 downto 0);
    leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,884)
    leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx2Rng8_uid884_i_shl24_i_average_value_average_value81_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x(BITSELECT,924)
    leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x_in <= c_i32_1gr_q(25 downto 0);
    leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x_b <= leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x_in(25 downto 0);

    -- leftShiftStage0Idx3Pad6_uid924_i_shl26_i_average_value_average_value82_shift_x(CONSTANT,923)
    leftShiftStage0Idx3Pad6_uid924_i_shl26_i_average_value_average_value82_shift_x_q <= "000000";

    -- leftShiftStage0Idx3_uid926_i_shl26_i_average_value_average_value82_shift_x(BITJOIN,925)
    leftShiftStage0Idx3_uid926_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx3Rng6_uid925_i_shl26_i_average_value_average_value82_shift_x_b & leftShiftStage0Idx3Pad6_uid924_i_shl26_i_average_value_average_value82_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,880)
    leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,881)
    leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx1Rng4_uid881_i_shl24_i_average_value_average_value81_shift_x_b & i_and12_i_average_value_vt_const_3_q;

    -- leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x(BITSELECT,918)
    leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x_in <= c_i32_1gr_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x_b <= leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid920_i_shl26_i_average_value_average_value82_shift_x(BITJOIN,919)
    leftShiftStage0Idx1_uid920_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx1Rng2_uid919_i_shl26_i_average_value_average_value82_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- c_i32_1gr(CONSTANT,330)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x(MUX,939)@3
    leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_s <= leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_b;
    leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_combproc: PROCESS (leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_s, c_i32_1gr_q, leftShiftStage0Idx1_uid920_i_shl26_i_average_value_average_value82_shift_x_q, leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx3_uid926_i_shl26_i_average_value_average_value82_shift_x_q, leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx5_uid932_i_shl26_i_average_value_average_value82_shift_x_q, leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx7_uid938_i_shl26_i_average_value_average_value82_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= c_i32_1gr_q;
            WHEN "001" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx1_uid920_i_shl26_i_average_value_average_value82_shift_x_q;
            WHEN "010" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "011" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx3_uid926_i_shl26_i_average_value_average_value82_shift_x_q;
            WHEN "100" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "101" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx5_uid932_i_shl26_i_average_value_average_value82_shift_x_q;
            WHEN "110" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "111" => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0Idx7_uid938_i_shl26_i_average_value_average_value82_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i32_15(CONSTANT,328)
    c_i32_15_q <= "00000000000000000000000000001111";

    -- i_and20_i_average_value(LOGICAL,413)@3
    i_and20_i_average_value_q <= bgTrunc_i_sub19_i_average_value_sel_x_b and c_i32_15_q;

    -- i_and20_i_average_value_vt_select_3(BITSELECT,416)@3
    i_and20_i_average_value_vt_select_3_b <= i_and20_i_average_value_q(3 downto 0);

    -- i_and20_i_average_value_vt_join(BITJOIN,415)@3
    i_and20_i_average_value_vt_join_q <= i_and13_i_average_value_vt_const_31_q & i_and20_i_average_value_vt_select_3_b;

    -- i_shl26_i_average_value_average_value82_shift_narrow_x(BITSELECT,258)@3
    i_shl26_i_average_value_average_value82_shift_narrow_x_b <= i_and20_i_average_value_vt_join_q(4 downto 0);

    -- leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select(BITSELECT,1175)@3
    leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_in <= i_shl26_i_average_value_average_value82_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_b <= leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_in(3 downto 1);
    leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_c <= leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_in(0 downto 0);

    -- leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x(MUX,944)@3
    leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_s <= leftShiftStageSel3Dto1_uid939_i_shl26_i_average_value_average_value82_shift_x_merged_bit_select_c;
    leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_combproc: PROCESS (leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_s, leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q, leftShiftStage1Idx1_uid943_i_shl26_i_average_value_average_value82_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage0_uid940_i_shl26_i_average_value_average_value82_shift_x_q;
            WHEN "1" => leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_q <= leftShiftStage1Idx1_uid943_i_shl26_i_average_value_average_value82_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sub27_i_average_value(ADD,686)@3
    i_sub27_i_average_value_a <= STD_LOGIC_VECTOR("0" & leftShiftStage1_uid945_i_shl26_i_average_value_average_value82_shift_x_q);
    i_sub27_i_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_65535_q);
    i_sub27_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub27_i_average_value_a) + UNSIGNED(i_sub27_i_average_value_b));
    i_sub27_i_average_value_q <= i_sub27_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub27_i_average_value_sel_x(BITSELECT,8)@3
    bgTrunc_i_sub27_i_average_value_sel_x_b <= i_sub27_i_average_value_q(31 downto 0);

    -- i_conv28_i_average_value_sel_x(BITSELECT,38)@3
    i_conv28_i_average_value_sel_x_b <= bgTrunc_i_sub27_i_average_value_sel_x_b(15 downto 0);

    -- c_i16_2047(CONSTANT,320)
    c_i16_2047_q <= "0000011111111111";

    -- i_cond1_tr_i_average_value_sel_x(BITSELECT,35)@3
    i_cond1_tr_i_average_value_sel_x_b <= redist68_i_select1_average_value_vt_join_q_1_q(15 downto 0);

    -- i_conv22_i_average_value(LOGICAL,519)@3
    i_conv22_i_average_value_q <= i_cond1_tr_i_average_value_sel_x_b and c_i16_2047_q;

    -- i_conv22_i_average_value_vt_select_10(BITSELECT,522)@3
    i_conv22_i_average_value_vt_select_10_b <= i_conv22_i_average_value_q(10 downto 0);

    -- i_conv22_i_average_value_vt_join(BITJOIN,521)@3
    i_conv22_i_average_value_vt_join_q <= i_and29_i_average_value_vt_const_15_q & i_conv22_i_average_value_vt_select_10_b;

    -- i_and29_i_average_value(LOGICAL,444)@3
    i_and29_i_average_value_q <= i_conv22_i_average_value_vt_join_q and i_conv28_i_average_value_sel_x_b;

    -- i_and29_i_average_value_vt_select_10(BITSELECT,447)@3
    i_and29_i_average_value_vt_select_10_b <= i_and29_i_average_value_q(10 downto 0);

    -- i_and29_i_average_value_vt_join(BITJOIN,446)@3
    i_and29_i_average_value_vt_join_q <= i_and29_i_average_value_vt_const_15_q & i_and29_i_average_value_vt_select_10_b;

    -- leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,909)@3
    leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x_in <= leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q(28 downto 0);
    leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x_in(28 downto 0);

    -- leftShiftStage1Idx3_uid911_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,910)@3
    leftShiftStage1Idx3_uid911_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage1Idx3Rng3_uid910_i_shl24_i_average_value_average_value81_shift_x_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,906)@3
    leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x_in <= leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q(29 downto 0);
    leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx2_uid908_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,907)@3
    leftShiftStage1Idx2_uid908_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage1Idx2Rng2_uid907_i_shl24_i_average_value_average_value81_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,903)@3
    leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x_in <= leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid905_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,904)@3
    leftShiftStage1Idx1_uid905_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage1Idx1Rng1_uid904_i_shl24_i_average_value_average_value81_shift_x_b & GND_q;

    -- leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,898)
    leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(3 downto 0);
    leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x_in(3 downto 0);

    -- leftShiftStage0Idx7_uid900_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,899)
    leftShiftStage0Idx7_uid900_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx7Rng28_uid899_i_shl24_i_average_value_average_value81_shift_x_b & i_and13_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,895)
    leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(7 downto 0);
    leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x_in(7 downto 0);

    -- i_sub10_i_average_value_vt_const_31(CONSTANT,681)
    i_sub10_i_average_value_vt_const_31_q <= "000000000000000000000000";

    -- leftShiftStage0Idx6_uid897_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,896)
    leftShiftStage0Idx6_uid897_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx6Rng24_uid896_i_shl24_i_average_value_average_value81_shift_x_b & i_sub10_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,892)
    leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(11 downto 0);
    leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x_in(11 downto 0);

    -- i_and265_i_average_value_vt_const_31(CONSTANT,423)
    i_and265_i_average_value_vt_const_31_q <= "00000000000000000000";

    -- leftShiftStage0Idx5_uid894_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,893)
    leftShiftStage0Idx5_uid894_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx5Rng20_uid893_i_shl24_i_average_value_average_value81_shift_x_b & i_and265_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x(BITSELECT,889)
    leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x_in <= c_i32_1gr_q(15 downto 0);
    leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x_b <= leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx4_uid891_i_shl24_i_average_value_average_value81_shift_x(BITJOIN,890)
    leftShiftStage0Idx4_uid891_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx4Rng16_uid890_i_shl24_i_average_value_average_value81_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x(MUX,901)@3
    leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_s <= leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select_b;
    leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_combproc: PROCESS (leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_s, c_i32_1gr_q, leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx4_uid891_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx5_uid894_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx6_uid897_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage0Idx7_uid900_i_shl24_i_average_value_average_value81_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= c_i32_1gr_q;
            WHEN "001" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx1_uid882_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "010" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx2_uid885_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "011" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx3_uid888_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "100" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx4_uid891_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "101" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx5_uid894_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "110" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx6_uid897_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "111" => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0Idx7_uid900_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sub23_i_average_value(ADD,685)@3
    i_sub23_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_and20_i_average_value_vt_join_q);
    i_sub23_i_average_value_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_sub23_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub23_i_average_value_a) + UNSIGNED(i_sub23_i_average_value_b));
    i_sub23_i_average_value_q <= i_sub23_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub23_i_average_value_sel_x(BITSELECT,7)@3
    bgTrunc_i_sub23_i_average_value_sel_x_b <= i_sub23_i_average_value_q(31 downto 0);

    -- i_shl24_i_average_value_average_value81_shift_narrow_x(BITSELECT,254)@3
    i_shl24_i_average_value_average_value81_shift_narrow_x_b <= bgTrunc_i_sub23_i_average_value_sel_x_b(4 downto 0);

    -- leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select(BITSELECT,1174)@3
    leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select_b <= i_shl24_i_average_value_average_value81_shift_narrow_x_b(4 downto 2);
    leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select_c <= i_shl24_i_average_value_average_value81_shift_narrow_x_b(1 downto 0);

    -- leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x(MUX,912)@3
    leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_s <= leftShiftStageSel4Dto2_uid901_i_shl24_i_average_value_average_value81_shift_x_merged_bit_select_c;
    leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_combproc: PROCESS (leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_s, leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage1Idx1_uid905_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage1Idx2_uid908_i_shl24_i_average_value_average_value81_shift_x_q, leftShiftStage1Idx3_uid911_i_shl24_i_average_value_average_value81_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_s) IS
            WHEN "00" => leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage0_uid902_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "01" => leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage1Idx1_uid905_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "10" => leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage1Idx2_uid908_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN "11" => leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q <= leftShiftStage1Idx3_uid911_i_shl24_i_average_value_average_value81_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv25_i_average_value_sel_x(BITSELECT,37)@3
    i_conv25_i_average_value_sel_x_b <= leftShiftStage1_uid913_i_shl24_i_average_value_average_value81_shift_x_q(15 downto 0);

    -- i_cmp38_i_average_value(COMPARE,514)@3 + 1
    i_cmp38_i_average_value_a <= STD_LOGIC_VECTOR("00" & i_conv25_i_average_value_sel_x_b);
    i_cmp38_i_average_value_b <= STD_LOGIC_VECTOR("00" & i_and29_i_average_value_vt_join_q);
    i_cmp38_i_average_value_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp38_i_average_value_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp38_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp38_i_average_value_a) - UNSIGNED(i_cmp38_i_average_value_b));
        END IF;
    END PROCESS;
    i_cmp38_i_average_value_c(0) <= i_cmp38_i_average_value_o(17);

    -- i_cmp35_i_average_value(LOGICAL,512)@3 + 1
    i_cmp35_i_average_value_qi <= "1" WHEN i_and29_i_average_value_vt_join_q = i_conv25_i_average_value_sel_x_b ELSE "0";
    i_cmp35_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp35_i_average_value_qi, xout => i_cmp35_i_average_value_q, clk => clock, aclr => resetn );

    -- i_acl_5_i_average_value(MUX,383)@4
    i_acl_5_i_average_value_s <= i_cmp35_i_average_value_q;
    i_acl_5_i_average_value_combproc: PROCESS (i_acl_5_i_average_value_s, i_cmp38_i_average_value_c, i_or_cond_i_average_value_q)
    BEGIN
        CASE (i_acl_5_i_average_value_s) IS
            WHEN "0" => i_acl_5_i_average_value_q <= i_cmp38_i_average_value_c;
            WHEN "1" => i_acl_5_i_average_value_q <= i_or_cond_i_average_value_q;
            WHEN OTHERS => i_acl_5_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_6_i_average_value(LOGICAL,384)@4
    i_acl_6_i_average_value_q <= i_acl_5_i_average_value_q and i_not_cmp9_i_average_value_q;

    -- i_acl_7_i_average_value_sel_x(BITSELECT,16)@4
    i_acl_7_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_6_i_average_value_q(0 downto 0)), 64));

    -- i_acl_7_i_average_value_vt_select_0(BITSELECT,388)@4
    i_acl_7_i_average_value_vt_select_0_b <= i_acl_7_i_average_value_sel_x_b(0 downto 0);

    -- i_acl_7_i_average_value_vt_join(BITJOIN,387)@4
    i_acl_7_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_acl_7_i_average_value_vt_select_0_b;

    -- i_or_cond_not_i_average_value(LOGICAL,586)@4
    i_or_cond_not_i_average_value_q <= i_or_cond_i_average_value_q xor VCC_q;

    -- i_acl_8_i_average_value(LOGICAL,389)@4
    i_acl_8_i_average_value_q <= i_cmp35_i_average_value_q and i_or_cond_not_i_average_value_q;

    -- i_acl_9_i_average_value(LOGICAL,390)@4
    i_acl_9_i_average_value_q <= i_acl_8_i_average_value_q and i_not_cmp9_i_average_value_q;

    -- i_acl_10_i_average_value(MUX,365)@4
    i_acl_10_i_average_value_s <= i_acl_9_i_average_value_q;
    i_acl_10_i_average_value_combproc: PROCESS (i_acl_10_i_average_value_s, i_acl_7_i_average_value_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_acl_10_i_average_value_s) IS
            WHEN "0" => i_acl_10_i_average_value_q <= i_acl_7_i_average_value_vt_join_q;
            WHEN "1" => i_acl_10_i_average_value_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_acl_10_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_10_i_average_value_vt_select_0(BITSELECT,368)@4
    i_acl_10_i_average_value_vt_select_0_b <= i_acl_10_i_average_value_q(0 downto 0);

    -- i_acl_10_i_average_value_vt_join(BITJOIN,367)@4
    i_acl_10_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_acl_10_i_average_value_vt_select_0_b;

    -- i_add_i_i1_average_value_vt_const_31(CONSTANT,393)
    i_add_i_i1_average_value_vt_const_31_q <= "0000000000000000000000000";

    -- c_i32_32(CONSTANT,335)
    c_i32_32_q <= "00000000000000000000000000100000";

    -- i_add_i_i1_average_value(ADD,392)@3
    i_add_i_i1_average_value_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_add_i_i1_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_32_q);
    i_add_i_i1_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_i1_average_value_a) + UNSIGNED(i_add_i_i1_average_value_b));
    i_add_i_i1_average_value_q <= i_add_i_i1_average_value_o(32 downto 0);

    -- bgTrunc_i_add_i_i1_average_value_sel_x(BITSELECT,3)@3
    bgTrunc_i_add_i_i1_average_value_sel_x_b <= i_add_i_i1_average_value_q(31 downto 0);

    -- i_add_i_i1_average_value_vt_select_6(BITSELECT,395)@3
    i_add_i_i1_average_value_vt_select_6_b <= bgTrunc_i_add_i_i1_average_value_sel_x_b(6 downto 0);

    -- i_add_i_i1_average_value_vt_join(BITJOIN,394)@3
    i_add_i_i1_average_value_vt_join_q <= i_add_i_i1_average_value_vt_const_31_q & i_add_i_i1_average_value_vt_select_6_b;

    -- c_i32_10(CONSTANT,324)
    c_i32_10_q <= "00000000000000000000000000001010";

    -- i_cmp9_i_average_value(COMPARE,516)@3
    i_cmp9_i_average_value_a <= STD_LOGIC_VECTOR("00" & c_i32_10_q);
    i_cmp9_i_average_value_b <= STD_LOGIC_VECTOR("00" & i_add_i_i1_average_value_vt_join_q);
    i_cmp9_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp9_i_average_value_a) - UNSIGNED(i_cmp9_i_average_value_b));
    i_cmp9_i_average_value_c(0) <= i_cmp9_i_average_value_o(33);

    -- redist74_i_cmp9_i_average_value_c_1(DELAY,1252)
    redist74_i_cmp9_i_average_value_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp9_i_average_value_c, xout => redist74_i_cmp9_i_average_value_c_1_q, clk => clock, aclr => resetn );

    -- i_acl_11_i_average_value(MUX,369)@4
    i_acl_11_i_average_value_s <= redist74_i_cmp9_i_average_value_c_1_q;
    i_acl_11_i_average_value_combproc: PROCESS (i_acl_11_i_average_value_s, i_acl_10_i_average_value_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_acl_11_i_average_value_s) IS
            WHEN "0" => i_acl_11_i_average_value_q <= i_acl_10_i_average_value_vt_join_q;
            WHEN "1" => i_acl_11_i_average_value_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_acl_11_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_11_i_average_value_vt_select_0(BITSELECT,372)@4
    i_acl_11_i_average_value_vt_select_0_b <= i_acl_11_i_average_value_q(0 downto 0);

    -- i_acl_11_i_average_value_vt_join(BITJOIN,371)@4
    i_acl_11_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_acl_11_i_average_value_vt_select_0_b;

    -- leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x(BITSELECT,841)@3
    leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x_in <= leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x_b <= leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x_in(59 downto 0);

    -- leftShiftStage2Idx1_uid843_i_op_i_average_value_average_value87_shift_x(BITJOIN,842)@3
    leftShiftStage2Idx1_uid843_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage2Idx1Rng4_uid842_i_op_i_average_value_average_value87_shift_x_b & i_and12_i_average_value_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x(BITSELECT,836)@3
    leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x_in <= leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x_b <= leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid838_i_op_i_average_value_average_value87_shift_x(BITJOIN,837)@3
    leftShiftStage1Idx1_uid838_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage1Idx1Rng16_uid837_i_op_i_average_value_average_value87_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x(BITSELECT,831)@3
    leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x_in <= i_unnamed_average_value77_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x_b <= leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid833_i_op_i_average_value_average_value87_shift_x(BITJOIN,832)@3
    leftShiftStage0Idx1_uid833_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx1Rng32_uid832_i_op_i_average_value_average_value87_shift_x_b & c_i32_0gr_q;

    -- i_shr4_i_average_value_vt_const_63(CONSTANT,677)
    i_shr4_i_average_value_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000";

    -- i_conv_i_average_value_vt_const_31(CONSTANT,541)
    i_conv_i_average_value_vt_const_31_q <= "000000000000000000000";

    -- c_i32_1054(CONSTANT,325)
    c_i32_1054_q <= "00000000000000000000010000011110";

    -- i_sub5_i_average_value(SUB,691)@3
    i_sub5_i_average_value_a <= STD_LOGIC_VECTOR("0" & c_i32_1054_q);
    i_sub5_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_sub5_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub5_i_average_value_a) - UNSIGNED(i_sub5_i_average_value_b));
    i_sub5_i_average_value_q <= i_sub5_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub5_i_average_value_sel_x(BITSELECT,10)@3
    bgTrunc_i_sub5_i_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub5_i_average_value_q(31 downto 0));

    -- i_sub5_i_average_value_vt_select_10(BITSELECT,694)@3
    i_sub5_i_average_value_vt_select_10_b <= bgTrunc_i_sub5_i_average_value_sel_x_b(10 downto 0);

    -- i_sub5_i_average_value_vt_join(BITJOIN,693)@3
    i_sub5_i_average_value_vt_join_q <= i_conv_i_average_value_vt_const_31_q & i_sub5_i_average_value_vt_select_10_b;

    -- i_unnamed_average_value77_sel_x(BITSELECT,305)@3
    i_unnamed_average_value77_sel_x_b <= std_logic_vector(resize(unsigned(i_sub5_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_unnamed_average_value77_vt_select_10(BITSELECT,721)@3
    i_unnamed_average_value77_vt_select_10_b <= i_unnamed_average_value77_sel_x_b(10 downto 0);

    -- i_unnamed_average_value77_vt_join(BITJOIN,720)@3
    i_unnamed_average_value77_vt_join_q <= i_shr4_i_average_value_vt_const_63_q & i_unnamed_average_value77_vt_select_10_b;

    -- leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x(MUX,834)@3
    leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_s <= VCC_q;
    leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_combproc: PROCESS (leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_s, i_unnamed_average_value77_vt_join_q, leftShiftStage0Idx1_uid833_i_op_i_average_value_average_value87_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q <= i_unnamed_average_value77_vt_join_q;
            WHEN "1" => leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx1_uid833_i_op_i_average_value_average_value87_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x(MUX,839)@3
    leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_s <= VCC_q;
    leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_combproc: PROCESS (leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_s, leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q, leftShiftStage1Idx1_uid838_i_op_i_average_value_average_value87_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage0_uid835_i_op_i_average_value_average_value87_shift_x_q;
            WHEN "1" => leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage1Idx1_uid838_i_op_i_average_value_average_value87_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x(MUX,844)@3
    leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_s <= VCC_q;
    leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_combproc: PROCESS (leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_s, leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q, leftShiftStage2Idx1_uid843_i_op_i_average_value_average_value87_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage1_uid840_i_op_i_average_value_average_value87_shift_x_q;
            WHEN "1" => leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_q <= leftShiftStage2Idx1_uid843_i_op_i_average_value_average_value87_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_op_i_average_value_vt_select_62(BITSELECT,567)@3
    i_op_i_average_value_vt_select_62_b <= leftShiftStage2_uid845_i_op_i_average_value_average_value87_shift_x_q(62 downto 52);

    -- i_op_i_average_value_vt_join(BITJOIN,566)@3
    i_op_i_average_value_vt_join_q <= GND_q & i_op_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- c_i32_64(CONSTANT,341)
    c_i32_64_q <= "00000000000000000000000001000000";

    -- i_cmp2_i_average_value(LOGICAL,511)@3
    i_cmp2_i_average_value_q <= "1" WHEN i_add_i_i1_average_value_vt_join_q = c_i32_64_q ELSE "0";

    -- i_shl42_i_average_value(MUX,632)@3
    i_shl42_i_average_value_s <= i_cmp2_i_average_value_q;
    i_shl42_i_average_value_combproc: PROCESS (i_shl42_i_average_value_s, i_op_i_average_value_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl42_i_average_value_s) IS
            WHEN "0" => i_shl42_i_average_value_q <= i_op_i_average_value_vt_join_q;
            WHEN "1" => i_shl42_i_average_value_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl42_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl42_i_average_value_vt_select_62(BITSELECT,636)@3
    i_shl42_i_average_value_vt_select_62_b <= i_shl42_i_average_value_q(62 downto 52);

    -- i_shl42_i_average_value_vt_join(BITJOIN,635)@3
    i_shl42_i_average_value_vt_join_q <= GND_q & i_shl42_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x(BITSELECT,871)@3
    leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x_in <= leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q(60 downto 0);
    leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x_b <= leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x_in(60 downto 0);

    -- leftShiftStage0Idx3_uid873_i_shl18_i_average_value_average_value80_shift_x(BITJOIN,872)@3
    leftShiftStage0Idx3_uid873_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0Idx3Rng3_uid872_i_shl18_i_average_value_average_value80_shift_x_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x(BITSELECT,868)@3
    leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x_in <= leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q(61 downto 0);
    leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x_b <= leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx2_uid870_i_shl18_i_average_value_average_value80_shift_x(BITJOIN,869)@3
    leftShiftStage0Idx2_uid870_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0Idx2Rng2_uid869_i_shl18_i_average_value_average_value80_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x(BITSELECT,865)@3
    leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x_in <= leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q(62 downto 0);
    leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x_b <= leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x_in(62 downto 0);

    -- leftShiftStage0Idx1_uid867_i_shl18_i_average_value_average_value80_shift_x(BITJOIN,866)@3
    leftShiftStage0Idx1_uid867_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0Idx1Rng1_uid866_i_shl18_i_average_value_average_value80_shift_x_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x(BITSELECT,856)@3
    leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x_in <= leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q(51 downto 0);
    leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x_b <= leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x_in(51 downto 0);

    -- leftShiftStage0Idx3_uid858_i_shl15_i_average_value_average_value79_shift_x(BITJOIN,857)@3
    leftShiftStage0Idx3_uid858_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0Idx3Rng12_uid857_i_shl15_i_average_value_average_value79_shift_x_b & i_and253_i_average_value_vt_const_11_q;

    -- leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x(BITSELECT,853)@3
    leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x_in <= leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q(55 downto 0);
    leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x_b <= leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x_in(55 downto 0);

    -- leftShiftStage0Idx2_uid855_i_shl15_i_average_value_average_value79_shift_x(BITJOIN,854)@3
    leftShiftStage0Idx2_uid855_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0Idx2Rng8_uid854_i_shl15_i_average_value_average_value79_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x(BITSELECT,850)@3
    leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x_in <= leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q(59 downto 0);
    leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x_b <= leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x_in(59 downto 0);

    -- leftShiftStage0Idx1_uid852_i_shl15_i_average_value_average_value79_shift_x(BITJOIN,851)@3
    leftShiftStage0Idx1_uid852_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0Idx1Rng4_uid851_i_shl15_i_average_value_average_value79_shift_x_b & i_and12_i_average_value_vt_const_3_q;

    -- leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x(BITSELECT,980)@3
    leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x_in <= redist68_i_select1_average_value_vt_join_q_1_q(15 downto 0);
    leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x_b <= leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx3Pad48_uid980_i_shl_i_average_value_average_value78_shift_x(CONSTANT,979)
    leftShiftStage0Idx3Pad48_uid980_i_shl_i_average_value_average_value78_shift_x_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid982_i_shl_i_average_value_average_value78_shift_x(BITJOIN,981)@3
    leftShiftStage0Idx3_uid982_i_shl_i_average_value_average_value78_shift_x_q <= leftShiftStage0Idx3Rng48_uid981_i_shl_i_average_value_average_value78_shift_x_b & leftShiftStage0Idx3Pad48_uid980_i_shl_i_average_value_average_value78_shift_x_q;

    -- leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x(BITSELECT,977)@3
    leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x_in <= redist68_i_select1_average_value_vt_join_q_1_q(31 downto 0);
    leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x_b <= leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx2_uid979_i_shl_i_average_value_average_value78_shift_x(BITJOIN,978)@3
    leftShiftStage0Idx2_uid979_i_shl_i_average_value_average_value78_shift_x_q <= leftShiftStage0Idx2Rng32_uid978_i_shl_i_average_value_average_value78_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x(BITSELECT,974)@3
    leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x_in <= redist68_i_select1_average_value_vt_join_q_1_q(47 downto 0);
    leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x_b <= leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x_in(47 downto 0);

    -- leftShiftStage0Idx1_uid976_i_shl_i_average_value_average_value78_shift_x(BITJOIN,975)@3
    leftShiftStage0Idx1_uid976_i_shl_i_average_value_average_value78_shift_x_q <= leftShiftStage0Idx1Rng16_uid975_i_shl_i_average_value_average_value78_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- i_sh_prom_i_average_value_vt_const_63(CONSTANT,624)
    i_sh_prom_i_average_value_vt_const_63_q <= "0000000000000000000000000000000000000000000000000000000000";

    -- c_i32_85(CONSTANT,345)
    c_i32_85_q <= "00000000000000000000000001010101";

    -- i_sub10_i_average_value(ADD,680)@3
    i_sub10_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_sub10_i_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_85_q);
    i_sub10_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub10_i_average_value_a) + UNSIGNED(i_sub10_i_average_value_b));
    i_sub10_i_average_value_q <= i_sub10_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub10_i_average_value_sel_x(BITSELECT,5)@3
    bgTrunc_i_sub10_i_average_value_sel_x_b <= i_sub10_i_average_value_q(31 downto 0);

    -- i_sub10_i_average_value_vt_select_7(BITSELECT,683)@3
    i_sub10_i_average_value_vt_select_7_b <= bgTrunc_i_sub10_i_average_value_sel_x_b(7 downto 0);

    -- i_sub10_i_average_value_vt_join(BITJOIN,682)@3
    i_sub10_i_average_value_vt_join_q <= i_sub10_i_average_value_vt_const_31_q & i_sub10_i_average_value_vt_select_7_b;

    -- i_and12_i_average_value_BitSelect_for_a_merged_bit_select(BITSELECT,1177)@3
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in <= i_sub10_i_average_value_vt_join_q(5 downto 0);
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_b <= i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in(5 downto 4);
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_c <= i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in(3 downto 2);
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_d <= i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in(1 downto 0);

    -- i_and12_i_average_value_join(BITJOIN,1118)@3
    i_and12_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_average_value_BitSelect_for_a_merged_bit_select_b & GND_q & GND_q & GND_q & GND_q;

    -- i_and12_i_average_value_vt_select_5(BITSELECT,400)@3
    i_and12_i_average_value_vt_select_5_b <= i_and12_i_average_value_join_q(5 downto 4);

    -- i_and12_i_average_value_vt_join(BITJOIN,399)@3
    i_and12_i_average_value_vt_join_q <= i_and12_i_average_value_vt_const_31_q & i_and12_i_average_value_vt_select_5_b & i_and12_i_average_value_vt_const_3_q;

    -- i_sh_prom_i_average_value_sel_x(BITSELECT,242)@3
    i_sh_prom_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and12_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom_i_average_value_vt_select_5(BITSELECT,626)@3
    i_sh_prom_i_average_value_vt_select_5_b <= i_sh_prom_i_average_value_sel_x_b(5 downto 4);

    -- i_sh_prom_i_average_value_vt_join(BITJOIN,625)@3
    i_sh_prom_i_average_value_vt_join_q <= i_sh_prom_i_average_value_vt_const_63_q & i_sh_prom_i_average_value_vt_select_5_b & i_and12_i_average_value_vt_const_3_q;

    -- i_shl_i_average_value_average_value78_shift_narrow_x(BITSELECT,266)@3
    i_shl_i_average_value_average_value78_shift_narrow_x_b <= i_sh_prom_i_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel5Dto4_uid983_i_shl_i_average_value_average_value78_shift_x(BITSELECT,982)@3
    leftShiftStageSel5Dto4_uid983_i_shl_i_average_value_average_value78_shift_x_b <= i_shl_i_average_value_average_value78_shift_narrow_x_b(5 downto 4);

    -- leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x(MUX,983)@3
    leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_s <= leftShiftStageSel5Dto4_uid983_i_shl_i_average_value_average_value78_shift_x_b;
    leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_combproc: PROCESS (leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_s, redist68_i_select1_average_value_vt_join_q_1_q, leftShiftStage0Idx1_uid976_i_shl_i_average_value_average_value78_shift_x_q, leftShiftStage0Idx2_uid979_i_shl_i_average_value_average_value78_shift_x_q, leftShiftStage0Idx3_uid982_i_shl_i_average_value_average_value78_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q <= redist68_i_select1_average_value_vt_join_q_1_q;
            WHEN "01" => leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q <= leftShiftStage0Idx1_uid976_i_shl_i_average_value_average_value78_shift_x_q;
            WHEN "10" => leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q <= leftShiftStage0Idx2_uid979_i_shl_i_average_value_average_value78_shift_x_q;
            WHEN "11" => leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q <= leftShiftStage0Idx3_uid982_i_shl_i_average_value_average_value78_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and13_i_average_value_join(BITJOIN,1120)@3
    i_and13_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_average_value_BitSelect_for_a_merged_bit_select_c & GND_q & GND_q;

    -- i_and13_i_average_value_vt_select_3(BITSELECT,405)@3
    i_and13_i_average_value_vt_select_3_b <= i_and13_i_average_value_join_q(3 downto 2);

    -- i_and13_i_average_value_vt_join(BITJOIN,404)@3
    i_and13_i_average_value_vt_join_q <= i_and13_i_average_value_vt_const_31_q & i_and13_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_sh_prom14_i_average_value_sel_x(BITSELECT,238)@3
    i_sh_prom14_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and13_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom14_i_average_value_vt_select_3(BITSELECT,608)@3
    i_sh_prom14_i_average_value_vt_select_3_b <= i_sh_prom14_i_average_value_sel_x_b(3 downto 2);

    -- i_sh_prom14_i_average_value_vt_join(BITJOIN,607)@3
    i_sh_prom14_i_average_value_vt_join_q <= i_sh_prom14_i_average_value_vt_const_63_q & i_sh_prom14_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_shl15_i_average_value_average_value79_shift_narrow_x(BITSELECT,246)@3
    i_shl15_i_average_value_average_value79_shift_narrow_x_b <= i_sh_prom14_i_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x(BITSELECT,858)@3
    leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x_in <= i_shl15_i_average_value_average_value79_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x_b <= leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x_in(3 downto 2);

    -- leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x(MUX,859)@3
    leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_s <= leftShiftStageSel3Dto2_uid859_i_shl15_i_average_value_average_value79_shift_x_b;
    leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_combproc: PROCESS (leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_s, leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q, leftShiftStage0Idx1_uid852_i_shl15_i_average_value_average_value79_shift_x_q, leftShiftStage0Idx2_uid855_i_shl15_i_average_value_average_value79_shift_x_q, leftShiftStage0Idx3_uid858_i_shl15_i_average_value_average_value79_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0_uid984_i_shl_i_average_value_average_value78_shift_x_q;
            WHEN "01" => leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0Idx1_uid852_i_shl15_i_average_value_average_value79_shift_x_q;
            WHEN "10" => leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0Idx2_uid855_i_shl15_i_average_value_average_value79_shift_x_q;
            WHEN "11" => leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q <= leftShiftStage0Idx3_uid858_i_shl15_i_average_value_average_value79_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and16_i_average_value_join(BITJOIN,1122)@3
    i_and16_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_average_value_BitSelect_for_a_merged_bit_select_d;

    -- i_and16_i_average_value_vt_select_1(BITSELECT,409)@3
    i_and16_i_average_value_vt_select_1_b <= i_and16_i_average_value_join_q(1 downto 0);

    -- i_and16_i_average_value_vt_join(BITJOIN,408)@3
    i_and16_i_average_value_vt_join_q <= i_and16_i_average_value_vt_const_31_q & i_and16_i_average_value_vt_select_1_b;

    -- i_sh_prom17_i_average_value_sel_x(BITSELECT,239)@3
    i_sh_prom17_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and16_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom17_i_average_value_vt_select_1(BITSELECT,612)@3
    i_sh_prom17_i_average_value_vt_select_1_b <= i_sh_prom17_i_average_value_sel_x_b(1 downto 0);

    -- i_sh_prom17_i_average_value_vt_join(BITJOIN,611)@3
    i_sh_prom17_i_average_value_vt_join_q <= i_sh_prom17_i_average_value_vt_const_63_q & i_sh_prom17_i_average_value_vt_select_1_b;

    -- i_shl18_i_average_value_average_value80_shift_narrow_x(BITSELECT,250)@3
    i_shl18_i_average_value_average_value80_shift_narrow_x_b <= i_sh_prom17_i_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x(BITSELECT,873)@3
    leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x_in <= i_shl18_i_average_value_average_value80_shift_narrow_x_b(1 downto 0);
    leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x_b <= leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x_in(1 downto 0);

    -- leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x(MUX,874)@3
    leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_s <= leftShiftStageSel1Dto0_uid874_i_shl18_i_average_value_average_value80_shift_x_b;
    leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_combproc: PROCESS (leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_s, leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q, leftShiftStage0Idx1_uid867_i_shl18_i_average_value_average_value80_shift_x_q, leftShiftStage0Idx2_uid870_i_shl18_i_average_value_average_value80_shift_x_q, leftShiftStage0Idx3_uid873_i_shl18_i_average_value_average_value80_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0_uid860_i_shl15_i_average_value_average_value79_shift_x_q;
            WHEN "01" => leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0Idx1_uid867_i_shl18_i_average_value_average_value80_shift_x_q;
            WHEN "10" => leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0Idx2_uid870_i_shl18_i_average_value_average_value80_shift_x_q;
            WHEN "11" => leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q <= leftShiftStage0Idx3_uid873_i_shl18_i_average_value_average_value80_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_i_average_value(MUX,553)@3
    i_i_average_value_s <= i_cmp9_i_average_value_c;
    i_i_average_value_combproc: PROCESS (i_i_average_value_s, rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q, leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q)
    BEGIN
        CASE (i_i_average_value_s) IS
            WHEN "0" => i_i_average_value_q <= rightShiftStage0_uid1053_i_shr34_i_average_value_average_value84_shift_x_q;
            WHEN "1" => i_i_average_value_q <= leftShiftStage0_uid875_i_shl18_i_average_value_average_value80_shift_x_q;
            WHEN OTHERS => i_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_or44_bitvec_i_average_value_average_value88_or44_vec_2_i_join_x(BITJOIN,236)@3
    i_or44_bitvec_i_average_value_average_value88_or44_vec_2_i_join_x_q <= redist68_i_select1_average_value_vt_join_q_1_q & i_shl42_i_average_value_vt_join_q & i_i_average_value_q;

    -- i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select(BITSELECT,1173)@3
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in <= i_or44_bitvec_i_average_value_average_value88_or44_vec_2_i_join_x_q(126 downto 0);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(0 downto 0);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(1 downto 1);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(10 downto 10);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(11 downto 11);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(116 downto 116);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(117 downto 117);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(118 downto 118);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(119 downto 119);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(12 downto 12);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(120 downto 120);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(121 downto 121);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(122 downto 122);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(123 downto 123);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(124 downto 124);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(125 downto 125);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(126 downto 126);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(13 downto 13);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(14 downto 14);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(15 downto 15);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(16 downto 16);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(17 downto 17);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(18 downto 18);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(19 downto 19);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(2 downto 2);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(20 downto 20);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(21 downto 21);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(22 downto 22);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(23 downto 23);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(24 downto 24);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(25 downto 25);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(26 downto 26);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(27 downto 27);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(28 downto 28);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(29 downto 29);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(3 downto 3);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(30 downto 30);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(31 downto 31);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(32 downto 32);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(33 downto 33);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(34 downto 34);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(35 downto 35);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(36 downto 36);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(37 downto 37);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(38 downto 38);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(39 downto 39);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(4 downto 4);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(40 downto 40);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(41 downto 41);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(42 downto 42);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(43 downto 43);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(44 downto 44);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(45 downto 45);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(46 downto 46);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(47 downto 47);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(48 downto 48);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(49 downto 49);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(5 downto 5);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(50 downto 50);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(51 downto 51);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(6 downto 6);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(7 downto 7);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(8 downto 8);
    i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62 <= i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_in(9 downto 9);

    -- redist15_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q_1(DELAY,1193)
    redist15_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q, xout => redist15_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q, clk => clock, aclr => resetn );

    -- redist14_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p_1(DELAY,1192)
    redist14_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p, xout => redist14_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q, clk => clock, aclr => resetn );

    -- redist13_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o_1(DELAY,1191)
    redist13_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o, xout => redist13_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q, clk => clock, aclr => resetn );

    -- redist12_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n_1(DELAY,1190)
    redist12_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n, xout => redist12_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q, clk => clock, aclr => resetn );

    -- redist11_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m_1(DELAY,1189)
    redist11_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m, xout => redist11_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q, clk => clock, aclr => resetn );

    -- redist10_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l_1(DELAY,1188)
    redist10_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l, xout => redist10_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q, clk => clock, aclr => resetn );

    -- redist9_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k_1(DELAY,1187)
    redist9_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k, xout => redist9_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q, clk => clock, aclr => resetn );

    -- redist7_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i_1(DELAY,1185)
    redist7_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i, xout => redist7_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- redist6_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h_1(DELAY,1184)
    redist6_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h, xout => redist6_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q, clk => clock, aclr => resetn );

    -- redist5_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g_1(DELAY,1183)
    redist5_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g, xout => redist5_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q, clk => clock, aclr => resetn );

    -- redist4_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f_1(DELAY,1182)
    redist4_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f, xout => redist4_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q, clk => clock, aclr => resetn );

    -- redist58_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8_1(DELAY,1236)
    redist58_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8, xout => redist58_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q, clk => clock, aclr => resetn );

    -- redist57_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7_1(DELAY,1235)
    redist57_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7, xout => redist57_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q, clk => clock, aclr => resetn );

    -- redist55_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5_1(DELAY,1233)
    redist55_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5, xout => redist55_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q, clk => clock, aclr => resetn );

    -- redist54_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4_1(DELAY,1232)
    redist54_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4, xout => redist54_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q, clk => clock, aclr => resetn );

    -- redist53_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3_1(DELAY,1231)
    redist53_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3, xout => redist53_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q, clk => clock, aclr => resetn );

    -- redist52_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2_1(DELAY,1230)
    redist52_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2, xout => redist52_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q, clk => clock, aclr => resetn );

    -- redist51_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1_1(DELAY,1229)
    redist51_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1, xout => redist51_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q, clk => clock, aclr => resetn );

    -- redist50_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz_1(DELAY,1228)
    redist50_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz, xout => redist50_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q, clk => clock, aclr => resetn );

    -- redist49_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy_1(DELAY,1227)
    redist49_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy, xout => redist49_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q, clk => clock, aclr => resetn );

    -- redist48_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx_1(DELAY,1226)
    redist48_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx, xout => redist48_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q, clk => clock, aclr => resetn );

    -- redist47_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww_1(DELAY,1225)
    redist47_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww, xout => redist47_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q, clk => clock, aclr => resetn );

    -- redist46_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv_1(DELAY,1224)
    redist46_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv, xout => redist46_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q, clk => clock, aclr => resetn );

    -- redist44_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt_1(DELAY,1222)
    redist44_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt, xout => redist44_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q, clk => clock, aclr => resetn );

    -- redist43_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss_1(DELAY,1221)
    redist43_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss, xout => redist43_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q, clk => clock, aclr => resetn );

    -- redist42_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr_1(DELAY,1220)
    redist42_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr, xout => redist42_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q, clk => clock, aclr => resetn );

    -- redist41_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq_1(DELAY,1219)
    redist41_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq, xout => redist41_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q, clk => clock, aclr => resetn );

    -- redist40_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp_1(DELAY,1218)
    redist40_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp, xout => redist40_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q, clk => clock, aclr => resetn );

    -- redist39_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo_1(DELAY,1217)
    redist39_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo, xout => redist39_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q, clk => clock, aclr => resetn );

    -- redist38_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn_1(DELAY,1216)
    redist38_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn, xout => redist38_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q, clk => clock, aclr => resetn );

    -- redist37_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm_1(DELAY,1215)
    redist37_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm, xout => redist37_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q, clk => clock, aclr => resetn );

    -- redist36_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll_1(DELAY,1214)
    redist36_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll, xout => redist36_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q, clk => clock, aclr => resetn );

    -- redist35_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk_1(DELAY,1213)
    redist35_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk, xout => redist35_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q, clk => clock, aclr => resetn );

    -- redist33_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii_1(DELAY,1211)
    redist33_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii, xout => redist33_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q, clk => clock, aclr => resetn );

    -- redist32_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh_1(DELAY,1210)
    redist32_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh, xout => redist32_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q, clk => clock, aclr => resetn );

    -- redist31_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg_1(DELAY,1209)
    redist31_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg, xout => redist31_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q, clk => clock, aclr => resetn );

    -- redist30_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff_1(DELAY,1208)
    redist30_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff, xout => redist30_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q, clk => clock, aclr => resetn );

    -- redist29_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee_1(DELAY,1207)
    redist29_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee, xout => redist29_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q, clk => clock, aclr => resetn );

    -- redist28_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd_1(DELAY,1206)
    redist28_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd, xout => redist28_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q, clk => clock, aclr => resetn );

    -- redist27_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc_1(DELAY,1205)
    redist27_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc, xout => redist27_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q, clk => clock, aclr => resetn );

    -- redist26_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb_1(DELAY,1204)
    redist26_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb, xout => redist26_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q, clk => clock, aclr => resetn );

    -- redist25_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa_1(DELAY,1203)
    redist25_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa, xout => redist25_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q, clk => clock, aclr => resetn );

    -- redist24_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z_1(DELAY,1202)
    redist24_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z, xout => redist24_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q, clk => clock, aclr => resetn );

    -- redist22_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x_1(DELAY,1200)
    redist22_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x, xout => redist22_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q, clk => clock, aclr => resetn );

    -- redist21_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w_1(DELAY,1199)
    redist21_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w, xout => redist21_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q, clk => clock, aclr => resetn );

    -- redist20_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v_1(DELAY,1198)
    redist20_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v, xout => redist20_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q, clk => clock, aclr => resetn );

    -- redist19_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u_1(DELAY,1197)
    redist19_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u, xout => redist19_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q, clk => clock, aclr => resetn );

    -- redist18_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t_1(DELAY,1196)
    redist18_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t, xout => redist18_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q, clk => clock, aclr => resetn );

    -- redist17_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s_1(DELAY,1195)
    redist17_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s, xout => redist17_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q, clk => clock, aclr => resetn );

    -- redist16_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r_1(DELAY,1194)
    redist16_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r, xout => redist16_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q, clk => clock, aclr => resetn );

    -- redist8_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j_1(DELAY,1186)
    redist8_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j, xout => redist8_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q, clk => clock, aclr => resetn );

    -- redist3_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e_1(DELAY,1181)
    redist3_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e, xout => redist3_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- redist2_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d_1(DELAY,1180)
    redist2_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d, xout => redist2_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q, clk => clock, aclr => resetn );

    -- redist62_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62_1(DELAY,1240)
    redist62_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62, xout => redist62_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q, clk => clock, aclr => resetn );

    -- redist61_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61_1(DELAY,1239)
    redist61_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61, xout => redist61_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q, clk => clock, aclr => resetn );

    -- redist60_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0_1(DELAY,1238)
    redist60_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0, xout => redist60_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q, clk => clock, aclr => resetn );

    -- redist59_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9_1(DELAY,1237)
    redist59_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9, xout => redist59_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q, clk => clock, aclr => resetn );

    -- redist56_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6_1(DELAY,1234)
    redist56_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6, xout => redist56_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q, clk => clock, aclr => resetn );

    -- redist45_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu_1(DELAY,1223)
    redist45_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu, xout => redist45_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q, clk => clock, aclr => resetn );

    -- redist34_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj_1(DELAY,1212)
    redist34_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj, xout => redist34_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q, clk => clock, aclr => resetn );

    -- redist23_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y_1(DELAY,1201)
    redist23_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y, xout => redist23_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q, clk => clock, aclr => resetn );

    -- redist1_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c_1(DELAY,1179)
    redist1_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c, xout => redist1_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b_1(DELAY,1178)
    redist0_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b, xout => redist0_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- i_or44_compressed_i_average_value_average_value89_or44_shuffle_i_m_join_x(BITJOIN,237)@4
    i_or44_compressed_i_average_value_average_value89_or44_shuffle_i_m_join_x_q <= GND_q & redist15_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q & redist14_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q & redist13_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q & redist12_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q & redist11_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q & redist10_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q & redist9_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q & redist7_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q & redist6_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q & redist5_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q & redist4_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q & redist58_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q & redist57_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q & redist55_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q & redist54_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q & redist53_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q & redist52_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q & redist51_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q & redist50_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q & redist49_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q & redist48_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q & redist47_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q & redist46_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q & redist44_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q & redist43_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q & redist42_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q & redist41_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q & redist40_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q & redist39_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q & redist38_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q & redist37_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q & redist36_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q & redist35_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q & redist33_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q & redist32_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q & redist31_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q & redist30_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q & redist29_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q & redist28_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q & redist27_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q & redist26_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q & redist25_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q & redist24_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q & redist22_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q & redist21_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q & redist20_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q & redist19_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q & redist18_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q & redist17_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q & redist16_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q & redist8_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q & redist3_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q & redist2_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q & redist62_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q & redist61_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q & redist60_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q & redist59_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q & redist56_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q & redist45_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q & redist34_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q & redist23_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q & redist1_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q & redist0_i_or44_bitvec_i_average_value_average_value88_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q;

    -- i_or44_compressed_i_average_value_vt_select_62(BITSELECT,579)@4
    i_or44_compressed_i_average_value_vt_select_62_b <= i_or44_compressed_i_average_value_average_value89_or44_shuffle_i_m_join_x_q(62 downto 0);

    -- i_or44_compressed_i_average_value_vt_join(BITJOIN,578)@4
    i_or44_compressed_i_average_value_vt_join_q <= GND_q & i_or44_compressed_i_average_value_vt_select_62_b;

    -- i_add_i_average_value(ADD,391)@4
    i_add_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_or44_compressed_i_average_value_vt_join_q);
    i_add_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_acl_11_i_average_value_vt_join_q);
    i_add_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_average_value_a) + UNSIGNED(i_add_i_average_value_b));
    i_add_i_average_value_q <= i_add_i_average_value_o(64 downto 0);

    -- bgTrunc_i_add_i_average_value_sel_x(BITSELECT,2)@4
    bgTrunc_i_add_i_average_value_sel_x_b <= i_add_i_average_value_q(63 downto 0);

    -- rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x(MUX,815)@4
    rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_s <= VCC_q;
    rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_combproc: PROCESS (rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_s, bgTrunc_i_add_i_average_value_sel_x_b, rightShiftStage0Idx1_uid814_i_and3_i_average_value_average_value90_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q <= bgTrunc_i_add_i_average_value_sel_x_b;
            WHEN "1" => rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q <= rightShiftStage0Idx1_uid814_i_and3_i_average_value_average_value90_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x(MUX,820)@4
    rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_s <= VCC_q;
    rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_combproc: PROCESS (rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_s, rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q, rightShiftStage1Idx1_uid819_i_and3_i_average_value_average_value90_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q <= rightShiftStage0_uid816_i_and3_i_average_value_average_value90_shift_x_q;
            WHEN "1" => rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q <= rightShiftStage1Idx1_uid819_i_and3_i_average_value_average_value90_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x(MUX,1100)@4
    rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_s <= VCC_q;
    rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_combproc: PROCESS (rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_s, rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q, rightShiftStage2Idx1_uid1099_i_unnamed_average_value94_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q <= rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q <= rightShiftStage2Idx1_uid1099_i_unnamed_average_value94_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x(MUX,1105)@4
    rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_s <= VCC_q;
    rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_combproc: PROCESS (rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_s, rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q, rightShiftStage3Idx1_uid1104_i_unnamed_average_value94_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_q <= rightShiftStage2_uid1101_i_unnamed_average_value94_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_q <= rightShiftStage3Idx1_uid1104_i_unnamed_average_value94_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_average_value93_vt_select_12(BITSELECT,724)@4
    i_unnamed_average_value93_vt_select_12_b <= rightShiftStage3_uid1106_i_unnamed_average_value94_shift_x_q(12 downto 0);

    -- i_unnamed_average_value93_vt_join(BITJOIN,723)@4
    i_unnamed_average_value93_vt_join_q <= i_conv353_i_average_value_vt_const_63_q & i_unnamed_average_value93_vt_select_12_b;

    -- i_and313_tr_i_average_value_sel_x(BITSELECT,30)@4
    i_and313_tr_i_average_value_sel_x_b <= i_unnamed_average_value93_vt_join_q(31 downto 0);

    -- i_and313_tr_i_average_value_vt_select_12(BITSELECT,478)@4
    i_and313_tr_i_average_value_vt_select_12_b <= i_and313_tr_i_average_value_sel_x_b(12 downto 0);

    -- i_and313_tr_i_average_value_vt_join(BITJOIN,477)@4
    i_and313_tr_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_and313_tr_i_average_value_vt_select_12_b;

    -- i_shl_i23_average_value_BitSelect_for_a(BITSELECT,1164)@4
    i_shl_i23_average_value_BitSelect_for_a_b <= i_and313_tr_i_average_value_vt_join_q(12 downto 12);

    -- i_shl_i23_average_value_join(BITJOIN,1165)@4
    i_shl_i23_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_shl_i23_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_shl_i23_average_value_vt_select_12(BITSELECT,644)@4
    i_shl_i23_average_value_vt_select_12_b <= i_shl_i23_average_value_join_q(12 downto 12);

    -- i_and253_i_average_value_vt_const_11(CONSTANT,418)
    i_and253_i_average_value_vt_const_11_q <= "000000000000";

    -- i_shl_i23_average_value_vt_join(BITJOIN,643)@4
    i_shl_i23_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_shl_i23_average_value_vt_select_12_b & i_and253_i_average_value_vt_const_11_q;

    -- i_or352_i_average_value_BitSelect_for_b(BITSELECT,1153)@4
    i_or352_i_average_value_BitSelect_for_b_b <= i_shl_i23_average_value_vt_join_q(12 downto 12);

    -- redist63_i_or352_i_average_value_BitSelect_for_b_b_1(DELAY,1241)
    redist63_i_or352_i_average_value_BitSelect_for_b_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or352_i_average_value_BitSelect_for_b_b, xout => redist63_i_or352_i_average_value_BitSelect_for_b_b_1_q, clk => clock, aclr => resetn );

    -- i_sub30_i_average_value_vt_const_31(CONSTANT,688)
    i_sub30_i_average_value_vt_const_31_q <= "000000000000000000";

    -- c_i32_8176(CONSTANT,343)
    c_i32_8176_q <= "00000000000000000001111111110000";

    -- rightShiftStage2Idx1Rng4_uid822_i_and3_i_average_value_average_value90_shift_x(BITSELECT,821)@4
    rightShiftStage2Idx1Rng4_uid822_i_and3_i_average_value_average_value90_shift_x_b <= rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q(63 downto 4);

    -- rightShiftStage2Idx1_uid824_i_and3_i_average_value_average_value90_shift_x(BITJOIN,823)@4
    rightShiftStage2Idx1_uid824_i_and3_i_average_value_average_value90_shift_x_q <= i_and12_i_average_value_vt_const_3_q & rightShiftStage2Idx1Rng4_uid822_i_and3_i_average_value_average_value90_shift_x_b;

    -- rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x(MUX,825)@4
    rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_s <= VCC_q;
    rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_combproc: PROCESS (rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_s, rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q, rightShiftStage2Idx1_uid824_i_and3_i_average_value_average_value90_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_q <= rightShiftStage1_uid821_i_and3_i_average_value_average_value90_shift_x_q;
            WHEN "1" => rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_q <= rightShiftStage2Idx1_uid824_i_and3_i_average_value_average_value90_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and3_i_average_value_vt_select_11(BITSELECT,493)@4
    i_and3_i_average_value_vt_select_11_b <= rightShiftStage2_uid826_i_and3_i_average_value_average_value90_shift_x_q(11 downto 0);

    -- i_and3_i_average_value_vt_join(BITJOIN,492)@4
    i_and3_i_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_and3_i_average_value_vt_select_11_b;

    -- i_tr_i_average_value_sel_x(BITSELECT,303)@4
    i_tr_i_average_value_sel_x_b <= i_and3_i_average_value_vt_join_q(31 downto 0);

    -- i_tr_i_average_value_vt_select_11(BITSELECT,705)@4
    i_tr_i_average_value_vt_select_11_b <= i_tr_i_average_value_sel_x_b(11 downto 0);

    -- i_tr_i_average_value_vt_join(BITJOIN,704)@4
    i_tr_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_tr_i_average_value_vt_select_11_b;

    -- i_conv_i_average_value_BitSelect_for_a(BITSELECT,1150)@4
    i_conv_i_average_value_BitSelect_for_a_b <= i_tr_i_average_value_vt_join_q(10 downto 0);

    -- i_conv_i_average_value_join(BITJOIN,1151)@4
    i_conv_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv_i_average_value_BitSelect_for_a_b;

    -- i_conv_i_average_value_vt_select_10(BITSELECT,543)@4
    i_conv_i_average_value_vt_select_10_b <= i_conv_i_average_value_join_q(10 downto 0);

    -- i_conv_i_average_value_vt_join(BITJOIN,542)@4
    i_conv_i_average_value_vt_join_q <= i_conv_i_average_value_vt_const_31_q & i_conv_i_average_value_vt_select_10_b;

    -- i_sub30_i_average_value(ADD,687)@4
    i_sub30_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_conv_i_average_value_vt_join_q);
    i_sub30_i_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_8176_q);
    i_sub30_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub30_i_average_value_a) + UNSIGNED(i_sub30_i_average_value_b));
    i_sub30_i_average_value_q <= i_sub30_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub30_i_average_value_sel_x(BITSELECT,9)@4
    bgTrunc_i_sub30_i_average_value_sel_x_b <= i_sub30_i_average_value_q(31 downto 0);

    -- i_sub30_i_average_value_vt_select_13(BITSELECT,690)@4
    i_sub30_i_average_value_vt_select_13_b <= bgTrunc_i_sub30_i_average_value_sel_x_b(13 downto 0);

    -- redist67_i_sub30_i_average_value_vt_select_13_b_1(DELAY,1245)
    redist67_i_sub30_i_average_value_vt_select_13_b_1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_sub30_i_average_value_vt_select_13_b, xout => redist67_i_sub30_i_average_value_vt_select_13_b_1_q, clk => clock, aclr => resetn );

    -- i_sub30_i_average_value_vt_join(BITJOIN,689)@5
    i_sub30_i_average_value_vt_join_q <= i_sub30_i_average_value_vt_const_31_q & redist67_i_sub30_i_average_value_vt_select_13_b_1_q;

    -- i_and31_i_average_value_BitSelect_for_a(BITSELECT,1135)@5
    i_and31_i_average_value_BitSelect_for_a_b <= i_sub30_i_average_value_vt_join_q(12 downto 0);

    -- i_and31_i_average_value_join(BITJOIN,1136)@5
    i_and31_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and31_i_average_value_BitSelect_for_a_b;

    -- i_and31_i_average_value_vt_select_12(BITSELECT,482)@5
    i_and31_i_average_value_vt_select_12_b <= i_and31_i_average_value_join_q(12 downto 0);

    -- i_and31_i_average_value_vt_join(BITJOIN,481)@5
    i_and31_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_and31_i_average_value_vt_select_12_b;

    -- i_and253_i_average_value_BitSelect_for_a(BITSELECT,1123)@5
    i_and253_i_average_value_BitSelect_for_a_b <= i_sub30_i_average_value_vt_join_q(12 downto 12);

    -- i_and253_i_average_value_join(BITJOIN,1124)@5
    i_and253_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and253_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and253_i_average_value_vt_select_12(BITSELECT,421)@5
    i_and253_i_average_value_vt_select_12_b <= i_and253_i_average_value_join_q(12 downto 12);

    -- i_and253_i_average_value_vt_join(BITJOIN,420)@5
    i_and253_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_and253_i_average_value_vt_select_12_b & i_and253_i_average_value_vt_const_11_q;

    -- i_tobool254_i_average_value(LOGICAL,697)@5
    i_tobool254_i_average_value_q <= "1" WHEN i_and253_i_average_value_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_acl_22_i_average_value(MUX,373)@5
    i_acl_22_i_average_value_s <= i_tobool254_i_average_value_q;
    i_acl_22_i_average_value_combproc: PROCESS (i_acl_22_i_average_value_s, c_i32_0gr_q, i_and31_i_average_value_vt_join_q)
    BEGIN
        CASE (i_acl_22_i_average_value_s) IS
            WHEN "0" => i_acl_22_i_average_value_q <= c_i32_0gr_q;
            WHEN "1" => i_acl_22_i_average_value_q <= i_and31_i_average_value_vt_join_q;
            WHEN OTHERS => i_acl_22_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_22_i_average_value_vt_select_12(BITSELECT,376)@5
    i_acl_22_i_average_value_vt_select_12_b <= i_acl_22_i_average_value_q(12 downto 0);

    -- i_acl_22_i_average_value_vt_join(BITJOIN,375)@5
    i_acl_22_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_acl_22_i_average_value_vt_select_12_b;

    -- i_and265_i_average_value_BitSelect_for_a(BITSELECT,1125)@5
    i_and265_i_average_value_BitSelect_for_a_b <= i_acl_22_i_average_value_vt_join_q(11 downto 0);

    -- i_and265_i_average_value_join(BITJOIN,1126)@5
    i_and265_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and265_i_average_value_BitSelect_for_a_b;

    -- i_and265_i_average_value_vt_select_11(BITSELECT,425)@5
    i_and265_i_average_value_vt_select_11_b <= i_and265_i_average_value_join_q(11 downto 0);

    -- i_and265_i_average_value_vt_join(BITJOIN,424)@5
    i_and265_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_and265_i_average_value_vt_select_11_b;

    -- i_and274_i_average_value_BitSelect_for_a(BITSELECT,1127)@5
    i_and274_i_average_value_BitSelect_for_a_b <= i_acl_22_i_average_value_vt_join_q(11 downto 11);

    -- i_and274_i_average_value_join(BITJOIN,1128)@5
    i_and274_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and274_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and274_i_average_value_vt_select_11(BITSELECT,430)@5
    i_and274_i_average_value_vt_select_11_b <= i_and274_i_average_value_join_q(11 downto 11);

    -- i_and274_i_average_value_vt_const_10(CONSTANT,427)
    i_and274_i_average_value_vt_const_10_q <= "00000000000";

    -- i_and274_i_average_value_vt_join(BITJOIN,429)@5
    i_and274_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_and274_i_average_value_vt_select_11_b & i_and274_i_average_value_vt_const_10_q;

    -- i_tobool275_i_average_value(LOGICAL,698)@5
    i_tobool275_i_average_value_q <= "1" WHEN i_and274_i_average_value_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_resulting_exp_2_i_average_value(MUX,596)@5
    i_resulting_exp_2_i_average_value_s <= i_tobool275_i_average_value_q;
    i_resulting_exp_2_i_average_value_combproc: PROCESS (i_resulting_exp_2_i_average_value_s, c_i32_0gr_q, i_and265_i_average_value_vt_join_q)
    BEGIN
        CASE (i_resulting_exp_2_i_average_value_s) IS
            WHEN "0" => i_resulting_exp_2_i_average_value_q <= c_i32_0gr_q;
            WHEN "1" => i_resulting_exp_2_i_average_value_q <= i_and265_i_average_value_vt_join_q;
            WHEN OTHERS => i_resulting_exp_2_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_resulting_exp_2_i_average_value_vt_select_11(BITSELECT,599)@5
    i_resulting_exp_2_i_average_value_vt_select_11_b <= i_resulting_exp_2_i_average_value_q(11 downto 0);

    -- i_resulting_exp_2_i_average_value_vt_join(BITJOIN,598)@5
    i_resulting_exp_2_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_resulting_exp_2_i_average_value_vt_select_11_b;

    -- i_or352_i_average_value_BitSelect_for_a(BITSELECT,1152)@5
    i_or352_i_average_value_BitSelect_for_a_b <= i_resulting_exp_2_i_average_value_vt_join_q(11 downto 0);

    -- i_or352_i_average_value_join(BITJOIN,1154)@5
    i_or352_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist63_i_or352_i_average_value_BitSelect_for_b_b_1_q & i_or352_i_average_value_BitSelect_for_a_b;

    -- i_or352_i_average_value_vt_select_12(BITSELECT,576)@5
    i_or352_i_average_value_vt_select_12_b <= i_or352_i_average_value_join_q(12 downto 0);

    -- i_or352_i_average_value_vt_join(BITJOIN,575)@5
    i_or352_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_or352_i_average_value_vt_select_12_b;

    -- i_conv353_i_average_value_sel_x(BITSELECT,39)@5
    i_conv353_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_or352_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_conv353_i_average_value_vt_select_12(BITSELECT,528)@5
    i_conv353_i_average_value_vt_select_12_b <= i_conv353_i_average_value_sel_x_b(12 downto 0);

    -- redist73_i_conv353_i_average_value_vt_select_12_b_1(DELAY,1251)
    redist73_i_conv353_i_average_value_vt_select_12_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv353_i_average_value_vt_select_12_b, xout => redist73_i_conv353_i_average_value_vt_select_12_b_1_q, clk => clock, aclr => resetn );

    -- i_conv353_i_average_value_vt_join(BITJOIN,527)@6
    i_conv353_i_average_value_vt_join_q <= i_conv353_i_average_value_vt_const_63_q & redist73_i_conv353_i_average_value_vt_select_12_b_1_q;

    -- i_conv353_i_op_average_value_BitSelect_for_a(BITSELECT,1146)@6
    i_conv353_i_op_average_value_BitSelect_for_a_b <= i_conv353_i_average_value_vt_join_q(11 downto 0);

    -- i_conv353_i_op_average_value_join(BITJOIN,1147)@6
    i_conv353_i_op_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv353_i_op_average_value_BitSelect_for_a_b;

    -- i_conv353_i_op_average_value_vt_select_11(BITSELECT,532)@6
    i_conv353_i_op_average_value_vt_select_11_b <= i_conv353_i_op_average_value_join_q(11 downto 0);

    -- i_conv353_i_op_average_value_vt_join(BITJOIN,531)@6
    i_conv353_i_op_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_conv353_i_op_average_value_vt_select_11_b;

    -- dupName_0_c_i64_0gr_x(CONSTANT,13)
    dupName_0_c_i64_0gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- i_shr266_i_average_value_vt_const_63(CONSTANT,670)
    i_shr266_i_average_value_vt_const_63_q <= "000000000";

    -- rightShiftStage0Idx1Rng1_uid1034_i_shr266_i_average_value_average_value96_shift_x(BITSELECT,1033)@5
    rightShiftStage0Idx1Rng1_uid1034_i_shr266_i_average_value_average_value96_shift_x_b <= i_shl_i29_average_value_vt_join_q(63 downto 1);

    -- rightShiftStage0Idx1_uid1036_i_shr266_i_average_value_average_value96_shift_x(BITJOIN,1035)@5
    rightShiftStage0Idx1_uid1036_i_shr266_i_average_value_average_value96_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1034_i_shr266_i_average_value_average_value96_shift_x_b;

    -- leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x(BITSELECT,803)@5
    leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x_in <= leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q(62 downto 0);
    leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x_b <= leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x_in(62 downto 0);

    -- leftShiftStage1Idx1_uid805_i_and2_or7_op_i_average_value_average_value92_shift_x(BITJOIN,804)@5
    leftShiftStage1Idx1_uid805_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= leftShiftStage1Idx1Rng1_uid804_i_and2_or7_op_i_average_value_average_value92_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x(BITSELECT,798)@5
    leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x_in <= i_and2_or7_i_average_value_vt_join_q(61 downto 0);
    leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x_b <= leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx1_uid800_i_and2_or7_op_i_average_value_average_value92_shift_x(BITJOIN,799)@5
    leftShiftStage0Idx1_uid800_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= leftShiftStage0Idx1Rng2_uid799_i_and2_or7_op_i_average_value_average_value92_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- c_i64_4503599627370495(CONSTANT,356)
    c_i64_4503599627370495_q <= "0000000000001111111111111111111111111111111111111111111111111111";

    -- i_and2_i25_average_value(LOGICAL,448)@4
    i_and2_i25_average_value_q <= bgTrunc_i_add_i_average_value_sel_x_b and c_i64_4503599627370495_q;

    -- i_and2_i25_average_value_vt_select_51(BITSELECT,451)@4
    i_and2_i25_average_value_vt_select_51_b <= i_and2_i25_average_value_q(51 downto 0);

    -- redist75_i_and2_i25_average_value_vt_select_51_b_1(DELAY,1253)
    redist75_i_and2_i25_average_value_vt_select_51_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and2_i25_average_value_vt_select_51_b, xout => redist75_i_and2_i25_average_value_vt_select_51_b_1_q, clk => clock, aclr => resetn );

    -- i_and2_i25_average_value_vt_join(BITJOIN,450)@5
    i_and2_i25_average_value_vt_join_q <= i_and253_i_average_value_vt_const_11_q & redist75_i_and2_i25_average_value_vt_select_51_b_1_q;

    -- i_or7_i_average_value_vt_const_63(CONSTANT,582)
    i_or7_i_average_value_vt_const_63_q <= "000000000001";

    -- i_or7_i_average_value_BitSelect_for_a(BITSELECT,1155)@5
    i_or7_i_average_value_BitSelect_for_a_b <= i_and2_i25_average_value_vt_join_q(51 downto 0);
    i_or7_i_average_value_BitSelect_for_a_c <= i_and2_i25_average_value_vt_join_q(63 downto 63);

    -- i_or7_i_average_value_join(BITJOIN,1156)@5
    i_or7_i_average_value_join_q <= i_or7_i_average_value_BitSelect_for_a_c & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & VCC_q & i_or7_i_average_value_BitSelect_for_a_b;

    -- i_or7_i_average_value_vt_select_51(BITSELECT,584)@5
    i_or7_i_average_value_vt_select_51_b <= i_or7_i_average_value_join_q(51 downto 0);

    -- i_or7_i_average_value_vt_join(BITJOIN,583)@5
    i_or7_i_average_value_vt_join_q <= i_or7_i_average_value_vt_const_63_q & i_or7_i_average_value_vt_select_51_b;

    -- i_and2_or7_i_average_value(MUX,452)@5
    i_and2_or7_i_average_value_s <= i_cmp5_i_average_value_q;
    i_and2_or7_i_average_value_combproc: PROCESS (i_and2_or7_i_average_value_s, i_or7_i_average_value_vt_join_q, i_and2_i25_average_value_vt_join_q)
    BEGIN
        CASE (i_and2_or7_i_average_value_s) IS
            WHEN "0" => i_and2_or7_i_average_value_q <= i_or7_i_average_value_vt_join_q;
            WHEN "1" => i_and2_or7_i_average_value_q <= i_and2_i25_average_value_vt_join_q;
            WHEN OTHERS => i_and2_or7_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and2_or7_i_average_value_vt_select_52(BITSELECT,455)@5
    i_and2_or7_i_average_value_vt_select_52_b <= i_and2_or7_i_average_value_q(52 downto 0);

    -- i_and2_or7_i_average_value_vt_join(BITJOIN,454)@5
    i_and2_or7_i_average_value_vt_join_q <= i_and274_i_average_value_vt_const_10_q & i_and2_or7_i_average_value_vt_select_52_b;

    -- leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x(MUX,801)@5
    leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_s <= VCC_q;
    leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_combproc: PROCESS (leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_s, i_and2_or7_i_average_value_vt_join_q, leftShiftStage0Idx1_uid800_i_and2_or7_op_i_average_value_average_value92_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= i_and2_or7_i_average_value_vt_join_q;
            WHEN "1" => leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= leftShiftStage0Idx1_uid800_i_and2_or7_op_i_average_value_average_value92_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x(MUX,806)@5
    leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_s <= VCC_q;
    leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_combproc: PROCESS (leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_s, leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q, leftShiftStage1Idx1_uid805_i_and2_or7_op_i_average_value_average_value92_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= leftShiftStage0_uid802_i_and2_or7_op_i_average_value_average_value92_shift_x_q;
            WHEN "1" => leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= leftShiftStage1Idx1_uid805_i_and2_or7_op_i_average_value_average_value92_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and2_or7_op_i_average_value_vt_select_55(BITSELECT,459)@5
    i_and2_or7_op_i_average_value_vt_select_55_b <= leftShiftStage1_uid807_i_and2_or7_op_i_average_value_average_value92_shift_x_q(55 downto 3);

    -- i_and2_or7_op_i_average_value_vt_join(BITJOIN,458)@5
    i_and2_or7_op_i_average_value_vt_join_q <= c_i8_0gr_q & i_and2_or7_op_i_average_value_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- i_shr4_i_average_value_BitSelect_for_a(BITSELECT,1166)@4
    i_shr4_i_average_value_BitSelect_for_a_b <= i_and3_i_average_value_vt_join_q(10 downto 0);

    -- i_shr4_i_average_value_join(BITJOIN,1167)@4
    i_shr4_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_shr4_i_average_value_BitSelect_for_a_b;

    -- i_shr4_i_average_value_vt_select_10(BITSELECT,679)@4
    i_shr4_i_average_value_vt_select_10_b <= i_shr4_i_average_value_join_q(10 downto 0);

    -- i_shr4_i_average_value_vt_join(BITJOIN,678)@4
    i_shr4_i_average_value_vt_join_q <= i_shr4_i_average_value_vt_const_63_q & i_shr4_i_average_value_vt_select_10_b;

    -- i_cmp5_i_average_value(LOGICAL,515)@4 + 1
    i_cmp5_i_average_value_qi <= "1" WHEN i_shr4_i_average_value_vt_join_q = dupName_0_c_i64_0gr_x_q ELSE "0";
    i_cmp5_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp5_i_average_value_qi, xout => i_cmp5_i_average_value_q, clk => clock, aclr => resetn );

    -- i_shl_i29_average_value(MUX,645)@5
    i_shl_i29_average_value_s <= i_cmp5_i_average_value_q;
    i_shl_i29_average_value_combproc: PROCESS (i_shl_i29_average_value_s, i_and2_or7_op_i_average_value_vt_join_q, dupName_0_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl_i29_average_value_s) IS
            WHEN "0" => i_shl_i29_average_value_q <= i_and2_or7_op_i_average_value_vt_join_q;
            WHEN "1" => i_shl_i29_average_value_q <= dupName_0_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl_i29_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i29_average_value_vt_select_55(BITSELECT,649)@5
    i_shl_i29_average_value_vt_select_55_b <= i_shl_i29_average_value_q(55 downto 3);

    -- i_shl_i29_average_value_vt_join(BITJOIN,648)@5
    i_shl_i29_average_value_vt_join_q <= c_i8_0gr_q & i_shl_i29_average_value_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x(MUX,1037)@5
    rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_s <= VCC_q;
    rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_combproc: PROCESS (rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_s, i_shl_i29_average_value_vt_join_q, rightShiftStage0Idx1_uid1036_i_shr266_i_average_value_average_value96_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_q <= i_shl_i29_average_value_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_q <= rightShiftStage0Idx1_uid1036_i_shr266_i_average_value_average_value96_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr266_i_average_value_vt_select_54(BITSELECT,672)@5
    i_shr266_i_average_value_vt_select_54_b <= rightShiftStage0_uid1038_i_shr266_i_average_value_average_value96_shift_x_q(54 downto 2);

    -- i_shr266_i_average_value_vt_join(BITJOIN,671)@5
    i_shr266_i_average_value_vt_join_q <= i_shr266_i_average_value_vt_const_63_q & i_shr266_i_average_value_vt_select_54_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_x_mantissa_mask_i_i_average_value_BitSelect_for_a(BITSELECT,1171)@5
    i_x_mantissa_mask_i_i_average_value_BitSelect_for_a_b <= i_shr266_i_average_value_vt_join_q(54 downto 2);

    -- i_x_mantissa_mask_i_i_average_value_join(BITJOIN,1172)@5
    i_x_mantissa_mask_i_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_x_mantissa_mask_i_i_average_value_BitSelect_for_a_b & GND_q & GND_q;

    -- i_x_mantissa_mask_i_i_average_value_vt_select_54(BITSELECT,729)@5
    i_x_mantissa_mask_i_i_average_value_vt_select_54_b <= i_x_mantissa_mask_i_i_average_value_join_q(54 downto 2);

    -- i_x_mantissa_mask_i_i_average_value_vt_join(BITJOIN,728)@5
    i_x_mantissa_mask_i_i_average_value_vt_join_q <= i_shr266_i_average_value_vt_const_63_q & i_x_mantissa_mask_i_i_average_value_vt_select_54_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_and308_i_average_value_BitSelect_for_a(BITSELECT,1132)@5
    i_and308_i_average_value_BitSelect_for_a_b <= i_shl_i29_average_value_vt_join_q(55 downto 3);

    -- i_and308_i_average_value_join(BITJOIN,1133)@5
    i_and308_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and308_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_and308_i_average_value_vt_select_55(BITSELECT,469)@5
    i_and308_i_average_value_vt_select_55_b <= i_and308_i_average_value_join_q(55 downto 3);

    -- i_and308_i_average_value_vt_join(BITJOIN,468)@5
    i_and308_i_average_value_vt_join_q <= c_i8_0gr_q & i_and308_i_average_value_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- i_and286_i_average_value_vt_const_7(CONSTANT,441)
    i_and286_i_average_value_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,364)
    c_i8_1gr_q <= "00000001";

    -- i_and274_i_lobit_average_value_vt_const_31(CONSTANT,431)
    i_and274_i_lobit_average_value_vt_const_31_q <= "0000000000000000000000000000000";

    -- rightShiftStage2Idx1Rng1_uid789_i_and274_i_lobit_average_value_average_value100_shift_x(BITSELECT,788)@5
    rightShiftStage2Idx1Rng1_uid789_i_and274_i_lobit_average_value_average_value100_shift_x_b <= rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid791_i_and274_i_lobit_average_value_average_value100_shift_x(BITJOIN,790)@5
    rightShiftStage2Idx1_uid791_i_and274_i_lobit_average_value_average_value100_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid789_i_and274_i_lobit_average_value_average_value100_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid784_i_and274_i_lobit_average_value_average_value100_shift_x(BITSELECT,783)@5
    rightShiftStage1Idx1Rng2_uid784_i_and274_i_lobit_average_value_average_value100_shift_x_b <= rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid786_i_and274_i_lobit_average_value_average_value100_shift_x(BITJOIN,785)@5
    rightShiftStage1Idx1_uid786_i_and274_i_lobit_average_value_average_value100_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage1Idx1Rng2_uid784_i_and274_i_lobit_average_value_average_value100_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid779_i_and274_i_lobit_average_value_average_value100_shift_x(BITSELECT,778)@5
    rightShiftStage0Idx1Rng8_uid779_i_and274_i_lobit_average_value_average_value100_shift_x_b <= i_and274_i_average_value_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid781_i_and274_i_lobit_average_value_average_value100_shift_x(BITJOIN,780)@5
    rightShiftStage0Idx1_uid781_i_and274_i_lobit_average_value_average_value100_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid779_i_and274_i_lobit_average_value_average_value100_shift_x_b;

    -- rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x(MUX,782)@5
    rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_s <= VCC_q;
    rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_combproc: PROCESS (rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_s, i_and274_i_average_value_vt_join_q, rightShiftStage0Idx1_uid781_i_and274_i_lobit_average_value_average_value100_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q <= i_and274_i_average_value_vt_join_q;
            WHEN "1" => rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q <= rightShiftStage0Idx1_uid781_i_and274_i_lobit_average_value_average_value100_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x(MUX,787)@5
    rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_s <= VCC_q;
    rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_combproc: PROCESS (rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_s, rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q, rightShiftStage1Idx1_uid786_i_and274_i_lobit_average_value_average_value100_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q <= rightShiftStage0_uid783_i_and274_i_lobit_average_value_average_value100_shift_x_q;
            WHEN "1" => rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q <= rightShiftStage1Idx1_uid786_i_and274_i_lobit_average_value_average_value100_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x(MUX,792)@5
    rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_s <= VCC_q;
    rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_combproc: PROCESS (rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_s, rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q, rightShiftStage2Idx1_uid791_i_and274_i_lobit_average_value_average_value100_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_q <= rightShiftStage1_uid788_i_and274_i_lobit_average_value_average_value100_shift_x_q;
            WHEN "1" => rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_q <= rightShiftStage2Idx1_uid791_i_and274_i_lobit_average_value_average_value100_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and274_i_lobit_average_value_vt_select_0(BITSELECT,433)@5
    i_and274_i_lobit_average_value_vt_select_0_b <= rightShiftStage2_uid793_i_and274_i_lobit_average_value_average_value100_shift_x_q(0 downto 0);

    -- i_and274_i_lobit_average_value_vt_join(BITJOIN,432)@5
    i_and274_i_lobit_average_value_vt_join_q <= i_and274_i_lobit_average_value_vt_const_31_q & i_and274_i_lobit_average_value_vt_select_0_b;

    -- i_unnamed_average_value101(LOGICAL,706)@5
    i_unnamed_average_value101_q <= i_and274_i_lobit_average_value_vt_join_q xor c_i32_1gr_q;

    -- i_unnamed_average_value101_vt_select_0(BITSELECT,709)@5
    i_unnamed_average_value101_vt_select_0_b <= i_unnamed_average_value101_q(0 downto 0);

    -- i_unnamed_average_value101_vt_join(BITJOIN,708)@5
    i_unnamed_average_value101_vt_join_q <= i_and274_i_lobit_average_value_vt_const_31_q & i_unnamed_average_value101_vt_select_0_b;

    -- i_unnamed_average_value102_sel_x(BITSELECT,304)@5
    i_unnamed_average_value102_sel_x_b <= i_unnamed_average_value101_vt_join_q(7 downto 0);

    -- i_unnamed_average_value102_vt_select_0(BITSELECT,713)@5
    i_unnamed_average_value102_vt_select_0_b <= i_unnamed_average_value102_sel_x_b(0 downto 0);

    -- i_unnamed_average_value102_vt_join(BITJOIN,712)@5
    i_unnamed_average_value102_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_unnamed_average_value102_vt_select_0_b;

    -- i_masked_i_average_value(LOGICAL,558)@5
    i_masked_i_average_value_q <= i_unnamed_average_value102_vt_join_q xor c_i8_1gr_q;

    -- i_masked_i_average_value_vt_select_0(BITSELECT,561)@5
    i_masked_i_average_value_vt_select_0_b <= i_masked_i_average_value_q(0 downto 0);

    -- i_masked_i_average_value_vt_join(BITJOIN,560)@5
    i_masked_i_average_value_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_masked_i_average_value_vt_select_0_b;

    -- i_and283_i_average_value_BitSelect_for_a(BITSELECT,1129)@5
    i_and283_i_average_value_BitSelect_for_a_b <= i_shl_i29_average_value_vt_join_q(53 downto 52);

    -- i_and283_i_average_value_join(BITJOIN,1130)@5
    i_and283_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and283_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and283_i_average_value_vt_select_53(BITSELECT,438)@5
    i_and283_i_average_value_vt_select_53_b <= i_and283_i_average_value_join_q(53 downto 52);

    -- i_and283_i_average_value_vt_join(BITJOIN,437)@5
    i_and283_i_average_value_vt_join_q <= i_and283_i_average_value_vt_const_63_q & i_and283_i_average_value_vt_select_53_b & i_and1_i_average_value_vt_const_51_q;

    -- i_cmp284_i_average_value(LOGICAL,510)@5
    i_cmp284_i_average_value_q <= "1" WHEN i_and283_i_average_value_vt_join_q = dupName_0_c_i64_0gr_x_q ELSE "0";

    -- i_cmp271_i_average_value(LOGICAL,509)@5
    i_cmp271_i_average_value_q <= "1" WHEN i_and265_i_average_value_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_and2868_i_average_value(LOGICAL,439)@5
    i_and2868_i_average_value_q <= i_cmp271_i_average_value_q and i_cmp284_i_average_value_q;

    -- i_and286_i_average_value_sel_x(BITSELECT,25)@5
    i_and286_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and2868_i_average_value_q(0 downto 0)), 8));

    -- i_and286_i_average_value_vt_select_0(BITSELECT,443)@5
    i_and286_i_average_value_vt_select_0_b <= i_and286_i_average_value_sel_x_b(0 downto 0);

    -- i_and286_i_average_value_vt_join(BITJOIN,442)@5
    i_and286_i_average_value_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_and286_i_average_value_vt_select_0_b;

    -- i_unnamed_average_value103(LOGICAL,714)@5
    i_unnamed_average_value103_q <= i_and286_i_average_value_vt_join_q or i_masked_i_average_value_vt_join_q;

    -- i_unnamed_average_value103_vt_select_0(BITSELECT,717)@5
    i_unnamed_average_value103_vt_select_0_b <= i_unnamed_average_value103_q(0 downto 0);

    -- i_unnamed_average_value103_vt_join(BITJOIN,716)@5
    i_unnamed_average_value103_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_unnamed_average_value103_vt_select_0_b;

    -- i_tobool297_i_average_value(LOGICAL,699)@5
    i_tobool297_i_average_value_q <= "1" WHEN i_unnamed_average_value103_vt_join_q = c_i8_0gr_q ELSE "0";

    -- i_and308_i_average_value_average_value105(MUX,461)@5
    i_and308_i_average_value_average_value105_s <= i_tobool297_i_average_value_q;
    i_and308_i_average_value_average_value105_combproc: PROCESS (i_and308_i_average_value_average_value105_s, dupName_0_c_i64_0gr_x_q, i_and308_i_average_value_vt_join_q)
    BEGIN
        CASE (i_and308_i_average_value_average_value105_s) IS
            WHEN "0" => i_and308_i_average_value_average_value105_q <= dupName_0_c_i64_0gr_x_q;
            WHEN "1" => i_and308_i_average_value_average_value105_q <= i_and308_i_average_value_vt_join_q;
            WHEN OTHERS => i_and308_i_average_value_average_value105_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and308_i_average_value_average_value105_vt_select_55(BITSELECT,465)@5
    i_and308_i_average_value_average_value105_vt_select_55_b <= i_and308_i_average_value_average_value105_q(55 downto 3);

    -- i_and308_i_average_value_average_value105_vt_join(BITJOIN,464)@5
    i_and308_i_average_value_average_value105_vt_join_q <= c_i8_0gr_q & i_and308_i_average_value_average_value105_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- i_acl_46_i_average_value(LOGICAL,377)@5
    i_acl_46_i_average_value_q <= i_tobool297_i_average_value_q and i_cmp271_i_average_value_q;

    -- i_acl_47_i_average_value(MUX,378)@5
    i_acl_47_i_average_value_s <= i_acl_46_i_average_value_q;
    i_acl_47_i_average_value_combproc: PROCESS (i_acl_47_i_average_value_s, i_and308_i_average_value_average_value105_vt_join_q, i_x_mantissa_mask_i_i_average_value_vt_join_q)
    BEGIN
        CASE (i_acl_47_i_average_value_s) IS
            WHEN "0" => i_acl_47_i_average_value_q <= i_and308_i_average_value_average_value105_vt_join_q;
            WHEN "1" => i_acl_47_i_average_value_q <= i_x_mantissa_mask_i_i_average_value_vt_join_q;
            WHEN OTHERS => i_acl_47_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_47_i_average_value_vt_select_55(BITSELECT,382)@5
    i_acl_47_i_average_value_vt_select_55_b <= i_acl_47_i_average_value_q(55 downto 2);

    -- i_acl_47_i_average_value_vt_join(BITJOIN,381)@5
    i_acl_47_i_average_value_vt_join_q <= c_i8_0gr_q & i_acl_47_i_average_value_vt_select_55_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_conv50_i_average_value_BitSelect_for_a(BITSELECT,1148)@5
    i_conv50_i_average_value_BitSelect_for_a_b <= i_acl_47_i_average_value_vt_join_q(55 downto 55);

    -- i_conv50_i_average_value_join(BITJOIN,1149)@5
    i_conv50_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv50_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_conv50_i_average_value_vt_select_55(BITSELECT,538)@5
    i_conv50_i_average_value_vt_select_55_b <= i_conv50_i_average_value_join_q(55 downto 55);

    -- redist71_i_conv50_i_average_value_vt_select_55_b_1(DELAY,1249)
    redist71_i_conv50_i_average_value_vt_select_55_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv50_i_average_value_vt_select_55_b, xout => redist71_i_conv50_i_average_value_vt_select_55_b_1_q, clk => clock, aclr => resetn );

    -- i_conv50_i_average_value_vt_const_54(CONSTANT,535)
    i_conv50_i_average_value_vt_const_54_q <= "0000000000000000000000000000000000000000000000000000000";

    -- i_conv50_i_average_value_vt_join(BITJOIN,537)@6
    i_conv50_i_average_value_vt_join_q <= c_i8_0gr_q & redist71_i_conv50_i_average_value_vt_select_55_b_1_q & i_conv50_i_average_value_vt_const_54_q;

    -- i_tobool52_i_average_value(LOGICAL,700)@6
    i_tobool52_i_average_value_q <= "1" WHEN i_conv50_i_average_value_vt_join_q /= dupName_0_c_i64_0gr_x_q ELSE "0";

    -- i_and60_i_average_value(MUX,503)@6
    i_and60_i_average_value_s <= i_tobool52_i_average_value_q;
    i_and60_i_average_value_combproc: PROCESS (i_and60_i_average_value_s, dupName_0_c_i64_0gr_x_q, i_conv353_i_op_average_value_vt_join_q)
    BEGIN
        CASE (i_and60_i_average_value_s) IS
            WHEN "0" => i_and60_i_average_value_q <= dupName_0_c_i64_0gr_x_q;
            WHEN "1" => i_and60_i_average_value_q <= i_conv353_i_op_average_value_vt_join_q;
            WHEN OTHERS => i_and60_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and60_i_average_value_vt_select_11(BITSELECT,506)@6
    i_and60_i_average_value_vt_select_11_b <= i_and60_i_average_value_q(11 downto 0);

    -- i_and60_i_average_value_vt_join(BITJOIN,505)@6
    i_and60_i_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_and60_i_average_value_vt_select_11_b;

    -- leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x(MUX,763)@6
    leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_s <= VCC_q;
    leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_combproc: PROCESS (leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_s, i_and60_i_average_value_vt_join_q, leftShiftStage0Idx1_uid762_i_and1_i_average_value_average_value108_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q <= i_and60_i_average_value_vt_join_q;
            WHEN "1" => leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage0Idx1_uid762_i_and1_i_average_value_average_value108_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x(MUX,768)@6
    leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_s <= VCC_q;
    leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_combproc: PROCESS (leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_s, leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q, leftShiftStage1Idx1_uid767_i_and1_i_average_value_average_value108_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage0_uid764_i_and1_i_average_value_average_value108_shift_x_q;
            WHEN "1" => leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage1Idx1_uid767_i_and1_i_average_value_average_value108_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x(MUX,773)@6
    leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_s <= VCC_q;
    leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_combproc: PROCESS (leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_s, leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q, leftShiftStage2Idx1_uid772_i_and1_i_average_value_average_value108_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage1_uid769_i_and1_i_average_value_average_value108_shift_x_q;
            WHEN "1" => leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_q <= leftShiftStage2Idx1_uid772_i_and1_i_average_value_average_value108_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and1_i_average_value_vt_select_63(BITSELECT,412)@6
    i_and1_i_average_value_vt_select_63_b <= leftShiftStage2_uid774_i_and1_i_average_value_average_value108_shift_x_q(63 downto 52);

    -- i_and1_i_average_value_vt_join(BITJOIN,411)@6
    i_and1_i_average_value_vt_join_q <= i_and1_i_average_value_vt_select_63_b & i_and1_i_average_value_vt_const_51_q;

    -- i_shl2_i_average_value_BitSelect_for_a(BITSELECT,1162)@6
    i_shl2_i_average_value_BitSelect_for_a_b <= i_and1_i_average_value_vt_join_q(62 downto 52);

    -- i_shl2_i_average_value_join(BITJOIN,1163)@6
    i_shl2_i_average_value_join_q <= GND_q & i_shl2_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_shl2_i_average_value_vt_select_62(BITSELECT,631)@6
    i_shl2_i_average_value_vt_select_62_b <= i_shl2_i_average_value_join_q(62 downto 52);

    -- i_shl2_i_average_value_vt_join(BITJOIN,630)@6
    i_shl2_i_average_value_vt_join_q <= GND_q & i_shl2_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- c_i64_9218868437227405312(CONSTANT,361)
    c_i64_9218868437227405312_q <= "0111111111110000000000000000000000000000000000000000000000000000";

    -- i_and5_i_average_value_BitSelect_for_a(BITSELECT,1139)@6
    i_and5_i_average_value_BitSelect_for_a_b <= i_and60_i_average_value_vt_join_q(11 downto 11);

    -- i_and5_i_average_value_join(BITJOIN,1140)@6
    i_and5_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and5_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and5_i_average_value_vt_select_11(BITSELECT,502)@6
    i_and5_i_average_value_vt_select_11_b <= i_and5_i_average_value_join_q(11 downto 11);

    -- i_and5_i_average_value_vt_join(BITJOIN,501)@6
    i_and5_i_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_and5_i_average_value_vt_select_11_b & i_and274_i_average_value_vt_const_10_q;

    -- i_tobool_i3_average_value(LOGICAL,701)@6
    i_tobool_i3_average_value_q <= "1" WHEN i_and5_i_average_value_vt_join_q = dupName_0_c_i64_0gr_x_q ELSE "0";

    -- i_exponent_0_i_average_value(MUX,545)@6
    i_exponent_0_i_average_value_s <= i_tobool_i3_average_value_q;
    i_exponent_0_i_average_value_combproc: PROCESS (i_exponent_0_i_average_value_s, c_i64_9218868437227405312_q, i_shl2_i_average_value_vt_join_q)
    BEGIN
        CASE (i_exponent_0_i_average_value_s) IS
            WHEN "0" => i_exponent_0_i_average_value_q <= c_i64_9218868437227405312_q;
            WHEN "1" => i_exponent_0_i_average_value_q <= i_shl2_i_average_value_vt_join_q;
            WHEN OTHERS => i_exponent_0_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exponent_0_i_average_value_vt_select_62(BITSELECT,549)@6
    i_exponent_0_i_average_value_vt_select_62_b <= i_exponent_0_i_average_value_q(62 downto 52);

    -- i_and1_i_average_value_vt_const_51(CONSTANT,410)
    i_and1_i_average_value_vt_const_51_q <= "0000000000000000000000000000000000000000000000000000";

    -- i_exponent_0_i_average_value_vt_join(BITJOIN,548)@6
    i_exponent_0_i_average_value_vt_join_q <= GND_q & i_exponent_0_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- rightShiftStage1Idx1Rng1_uid1063_i_shr3_i_average_value_average_value109_shift_x(BITSELECT,1062)@5
    rightShiftStage1Idx1Rng1_uid1063_i_shr3_i_average_value_average_value109_shift_x_b <= rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q(63 downto 1);

    -- rightShiftStage1Idx1_uid1065_i_shr3_i_average_value_average_value109_shift_x(BITJOIN,1064)@5
    rightShiftStage1Idx1_uid1065_i_shr3_i_average_value_average_value109_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1063_i_shr3_i_average_value_average_value109_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid1058_i_shr3_i_average_value_average_value109_shift_x(BITSELECT,1057)@5
    rightShiftStage0Idx1Rng2_uid1058_i_shr3_i_average_value_average_value109_shift_x_b <= i_acl_47_i_average_value_vt_join_q(63 downto 2);

    -- rightShiftStage0Idx1_uid1060_i_shr3_i_average_value_average_value109_shift_x(BITJOIN,1059)@5
    rightShiftStage0Idx1_uid1060_i_shr3_i_average_value_average_value109_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx1Rng2_uid1058_i_shr3_i_average_value_average_value109_shift_x_b;

    -- rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x(MUX,1061)@5
    rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_s <= VCC_q;
    rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_combproc: PROCESS (rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_s, i_acl_47_i_average_value_vt_join_q, rightShiftStage0Idx1_uid1060_i_shr3_i_average_value_average_value109_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q <= i_acl_47_i_average_value_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q <= rightShiftStage0Idx1_uid1060_i_shr3_i_average_value_average_value109_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x(MUX,1066)@5
    rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_s <= VCC_q;
    rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_combproc: PROCESS (rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_s, rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q, rightShiftStage1Idx1_uid1065_i_shr3_i_average_value_average_value109_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_q <= rightShiftStage0_uid1062_i_shr3_i_average_value_average_value109_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_q <= rightShiftStage1Idx1_uid1065_i_shr3_i_average_value_average_value109_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr3_i_average_value_vt_select_52(BITSELECT,675)@5
    i_shr3_i_average_value_vt_select_52_b <= rightShiftStage1_uid1067_i_shr3_i_average_value_average_value109_shift_x_q(52 downto 0);

    -- i_shr3_i_average_value_vt_join(BITJOIN,674)@5
    i_shr3_i_average_value_vt_join_q <= i_and274_i_average_value_vt_const_10_q & i_shr3_i_average_value_vt_select_52_b;

    -- i_and4_i_average_value_BitSelect_for_a(BITSELECT,1137)@5
    i_and4_i_average_value_BitSelect_for_a_b <= i_shr3_i_average_value_vt_join_q(51 downto 0);

    -- redist64_i_and4_i_average_value_BitSelect_for_a_b_1(DELAY,1242)
    redist64_i_and4_i_average_value_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and4_i_average_value_BitSelect_for_a_b, xout => redist64_i_and4_i_average_value_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_and4_i_average_value_join(BITJOIN,1138)@6
    i_and4_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist64_i_and4_i_average_value_BitSelect_for_a_b_1_q;

    -- i_and4_i_average_value_vt_select_51(BITSELECT,497)@6
    i_and4_i_average_value_vt_select_51_b <= i_and4_i_average_value_join_q(51 downto 0);

    -- i_and4_i_average_value_vt_join(BITJOIN,496)@6
    i_and4_i_average_value_vt_join_q <= i_and253_i_average_value_vt_const_11_q & i_and4_i_average_value_vt_select_51_b;

    -- c_i64_9223372036854775808(CONSTANT,362)
    c_i64_9223372036854775808_q <= "1000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x(BITSELECT,965)@6
    leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x_in <= leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q(62 downto 0);
    leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x_b <= leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x_in(62 downto 0);

    -- leftShiftStage3Idx1_uid967_i_shl_i13_average_value_average_value107_shift_x(BITJOIN,966)@6
    leftShiftStage3Idx1_uid967_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage3Idx1Rng1_uid966_i_shl_i13_average_value_average_value107_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x(BITSELECT,960)@6
    leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x_in <= leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q(61 downto 0);
    leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x_b <= leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x_in(61 downto 0);

    -- leftShiftStage2Idx1_uid962_i_shl_i13_average_value_average_value107_shift_x(BITJOIN,961)@6
    leftShiftStage2Idx1_uid962_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage2Idx1Rng2_uid961_i_shl_i13_average_value_average_value107_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x(BITSELECT,955)@6
    leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x_in <= leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x_b <= leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid957_i_shl_i13_average_value_average_value107_shift_x(BITJOIN,956)@6
    leftShiftStage1Idx1_uid957_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage1Idx1Rng16_uid956_i_shl_i13_average_value_average_value107_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x(BITSELECT,950)@6
    leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x_in <= i_conv353_i_average_value_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x_b <= leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid952_i_shl_i13_average_value_average_value107_shift_x(BITJOIN,951)@6
    leftShiftStage0Idx1_uid952_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage0Idx1Rng32_uid951_i_shl_i13_average_value_average_value107_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x(MUX,953)@6
    leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_s <= VCC_q;
    leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_combproc: PROCESS (leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_s, i_conv353_i_average_value_vt_join_q, leftShiftStage0Idx1_uid952_i_shl_i13_average_value_average_value107_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q <= i_conv353_i_average_value_vt_join_q;
            WHEN "1" => leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage0Idx1_uid952_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x(MUX,958)@6
    leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_s <= VCC_q;
    leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_combproc: PROCESS (leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_s, leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q, leftShiftStage1Idx1_uid957_i_shl_i13_average_value_average_value107_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage0_uid954_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN "1" => leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage1Idx1_uid957_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x(MUX,963)@6
    leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_s <= VCC_q;
    leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_combproc: PROCESS (leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_s, leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q, leftShiftStage2Idx1_uid962_i_shl_i13_average_value_average_value107_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage1_uid959_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN "1" => leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage2Idx1_uid962_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x(MUX,968)@6
    leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_s <= VCC_q;
    leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_combproc: PROCESS (leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_s, leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q, leftShiftStage3Idx1_uid967_i_shl_i13_average_value_average_value107_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage2_uid964_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN "1" => leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_q <= leftShiftStage3Idx1_uid967_i_shl_i13_average_value_average_value107_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i13_average_value_vt_select_63(BITSELECT,639)@6
    i_shl_i13_average_value_vt_select_63_b <= leftShiftStage3_uid969_i_shl_i13_average_value_average_value107_shift_x_q(63 downto 51);

    -- i_shl_i13_average_value_vt_join(BITJOIN,638)@6
    i_shl_i13_average_value_vt_join_q <= i_shl_i13_average_value_vt_select_63_b & i_conv353_i_average_value_vt_const_63_q;

    -- i_shl_i2_average_value(LOGICAL,650)@6
    i_shl_i2_average_value_q <= i_shl_i13_average_value_vt_join_q and c_i64_9223372036854775808_q;

    -- i_shl_i2_average_value_vt_select_63(BITSELECT,653)@6
    i_shl_i2_average_value_vt_select_63_b <= i_shl_i2_average_value_q(63 downto 63);

    -- i_shl_i2_average_value_vt_join(BITJOIN,652)@6
    i_shl_i2_average_value_vt_join_q <= i_shl_i2_average_value_vt_select_63_b & i_acl_10_i_average_value_vt_const_63_q;

    -- i_or_i_average_value(LOGICAL,587)@6
    i_or_i_average_value_q <= i_shl_i2_average_value_vt_join_q or i_and4_i_average_value_vt_join_q;

    -- i_or_i_average_value_vt_select_51_merged_bit_select(BITSELECT,1176)@6
    i_or_i_average_value_vt_select_51_merged_bit_select_b <= i_or_i_average_value_q(51 downto 0);
    i_or_i_average_value_vt_select_51_merged_bit_select_c <= i_or_i_average_value_q(63 downto 63);

    -- i_or_i_average_value_vt_join(BITJOIN,589)@6
    i_or_i_average_value_vt_join_q <= i_or_i_average_value_vt_select_51_merged_bit_select_c & i_and274_i_average_value_vt_const_10_q & i_or_i_average_value_vt_select_51_merged_bit_select_b;

    -- i_or6_i_average_value(LOGICAL,580)@6 + 1
    i_or6_i_average_value_qi <= i_or_i_average_value_vt_join_q or i_exponent_0_i_average_value_vt_join_q;
    i_or6_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or6_i_average_value_qi, xout => i_or6_i_average_value_q, clk => clock, aclr => resetn );

    -- i_conv_average_value(BLACKBOX,539)@7
    thei_conv_average_value : floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A1Z50c2463a0054c2a6355y
    PORT MAP (
        in_0 => i_or6_i_average_value_q,
        out_primWireOut => i_conv_average_value_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist70_i_conv_average_value_out_primWireOut_1(DELAY,1248)
    redist70_i_conv_average_value_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv_average_value_out_primWireOut, xout => redist70_i_conv_average_value_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_div_average_value(BLACKBOX,544)@2
    -- in in_0@8
    -- out out_primWireOut@14
    thei_div_average_value : floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Z0uq0dp0iuq0cp0ju5o0u
    PORT MAP (
        in_0 => redist70_i_conv_average_value_out_primWireOut_1_q,
        in_1 => redist72_i_conv3_average_value_out_primWireOut_1_q,
        out_primWireOut => i_div_average_value_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,310)@14
    out_c0_exi117_0 <= GND_q;
    out_c0_exi117_1 <= i_div_average_value_out_primWireOut;
    out_o_valid <= redist66_sync_in_in_i_valid_14_q;

END normal;
