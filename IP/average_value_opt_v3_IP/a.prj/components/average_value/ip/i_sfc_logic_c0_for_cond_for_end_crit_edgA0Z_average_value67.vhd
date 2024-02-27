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

-- VHDL created from i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value67
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

entity i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value67 is
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
end i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value67;

architecture normal of i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_c0_enter16_average_value67 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Z50c2463a0054c2a6355y is
        port (
            in_0 : in std_logic_vector(63 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Zcqp00j0ucqp00j0oqf0z is
        port (
            in_0 : in std_logic_vector(63 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(63 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(63 downto 0);  -- Floating Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv_i_i_i_i6_average_value71 is
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


    component i_ffwd_dst_temp_0_0_0385_average_value69 is
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



    component i_syncbuf_n_sync_buffer2_average_value73 is
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


    component i_syncbuf_n_sync_buffer3_average_value116 is
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
    signal bgTrunc_i_add_i15_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_add_i_i2_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fold_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_sub10_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub19_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub23_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub27_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub30_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub5_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub6_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_i5_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_21_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_c_i64_0gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_7_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and286_i_average_value_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_and313_tr_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cond1_tr_i_average_value_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv10_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv1_i_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv25_i_average_value_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv28_i_average_value_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv353_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_vec_2_i_join_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal i_or22_compressed_i_average_value_average_value131_or22_shuffle_i_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_vec_2_i_join_x_q : STD_LOGIC_VECTOR (191 downto 0);
    signal i_or44_compressed_i_average_value_average_value94_or44_shuffle_i_m_join_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i20_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i23_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom31_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom33_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i17_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl15_i21_average_value_average_value127_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl15_i_average_value_average_value84_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl18_i24_average_value_average_value128_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl18_i_average_value_average_value85_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl24_i_average_value_average_value86_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shl26_i_average_value_average_value87_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shl_i18_average_value_average_value126_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shl_i_average_value_average_value83_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr34_i_average_value_average_value89_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr_i_average_value_average_value88_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_tr_i_average_value_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value107_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value125_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value82_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_zext_i_average_value_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
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
    signal i_add_i15_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i15_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i15_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i15_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i15_average_value_vt_const_31_q : STD_LOGIC_VECTOR (24 downto 0);
    signal i_add_i15_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_i15_average_value_vt_select_6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_add_i_average_value_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_average_value_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_average_value_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_average_value_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add_i_i2_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i2_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i2_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i2_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_i_i2_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_add_i_i2_average_value_vt_select_6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal i_and12_i16_average_value_vt_const_3_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_and12_i16_average_value_vt_const_31_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_and12_i16_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and12_i16_average_value_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and12_i_average_value_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and13_i19_average_value_vt_const_31_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_and13_i19_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i19_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and13_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and16_i22_average_value_vt_const_31_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_and16_i22_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and16_i22_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
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
    signal i_and2_i52_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_i52_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_i52_average_value_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and2_or7_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and2_or7_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_i_average_value_vt_select_52_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and2_or7_op_i_average_value_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_and2_or7_op_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and2_or7_op_i_average_value_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_and308_i_average_value_average_value110_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and308_i_average_value_average_value110_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_average_value_average_value110_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and308_i_average_value_average_value110_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
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
    signal i_and3_i53_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and3_i53_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_and4_i27_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and4_i27_average_value_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and5_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and5_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and60_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and60_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and60_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and60_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_cmp271_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp284_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp2_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp35_i_average_value_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp35_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_i_average_value_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp37_rm1_average_value_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp37_rm1_average_value_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp37_rm1_average_value_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp37_rm1_average_value_c : STD_LOGIC_VECTOR (0 downto 0);
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
    signal i_cmp_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond3_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond3_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv10_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv10_i_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv22_i_average_value_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv22_i_average_value_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv22_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_conv353_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (50 downto 0);
    signal i_conv353_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_conv353_i_op_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv353_i_op_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_conv50_i_average_value_vt_const_54_q : STD_LOGIC_VECTOR (54 downto 0);
    signal i_conv50_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv50_i_average_value_vt_select_55_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv8_average_value_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_conv_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_div_average_value_out_primWireOut : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exponent_0_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_exponent_0_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_ffwd_dst_conv_i_i_i_i6_average_value_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_temp_0_0_0385_average_value_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (63 downto 0);
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
    signal i_llvm_ctpop_i32_unnamed_average_value7_average_value_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value7_average_value_sum : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_masked_i_average_value_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_masked_i_average_value_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_masked_i_average_value_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_neg22_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_neg_i_i14_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_not_cmp9_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_op_i25_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_op_i25_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_op_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_op_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_or13_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or15_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or17_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or19_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or21_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or2_i_i_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or352_i_average_value_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_or44_compressed_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or44_compressed_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_or4_i_i9_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or6_i_average_value_qi : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or6_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or6_i_i11_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or7_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_or7_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or7_i_average_value_vt_select_51_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or8_i_i13_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_or_cond_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_not_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i29_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or_i29_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_or_i_i7_average_value_q : STD_LOGIC_VECTOR (31 downto 0);
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
    signal i_sh_prom14_i20_average_value_vt_const_63_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_sh_prom14_i20_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i20_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom14_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom14_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom17_i23_average_value_vt_const_63_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_sh_prom17_i23_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i23_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom17_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom17_i_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom31_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom31_i_average_value_vt_select_3_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom33_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom33_i_average_value_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom_i17_average_value_vt_const_63_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_sh_prom_i17_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i17_average_value_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sh_prom_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_i_average_value_vt_select_5_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_shl20_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl20_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl20_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl20_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl2_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl2_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl42_i_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl42_i_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl42_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl42_i_average_value_vt_select_62_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shl_i26_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i26_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i26_average_value_vt_select_63_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i39_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i39_average_value_vt_select_63_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_shl_i50_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shl_i50_average_value_vt_select_12_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i57_average_value_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i57_average_value_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i57_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_i57_average_value_vt_select_55_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr12_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr12_i_i_average_value_vt_select_30_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr14_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr14_i_i_average_value_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_shr16_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr16_i_i_average_value_vt_select_27_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shr18_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr18_i_i_average_value_vt_select_23_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_shr1_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr1_i_i_average_value_vt_select_29_b : STD_LOGIC_VECTOR (29 downto 0);
    signal i_shr20_i_i_average_value_vt_const_31_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr20_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr20_i_i_average_value_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr266_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (8 downto 0);
    signal i_shr266_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr266_i_average_value_vt_select_54_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr3_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr3_i_average_value_vt_select_52_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr3_i_i8_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr3_i_i8_average_value_vt_select_27_b : STD_LOGIC_VECTOR (27 downto 0);
    signal i_shr4_i_average_value_vt_const_63_q : STD_LOGIC_VECTOR (52 downto 0);
    signal i_shr4_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shr4_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shr5_i_i10_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr5_i_i10_average_value_vt_select_23_b : STD_LOGIC_VECTOR (23 downto 0);
    signal i_shr7_i_i12_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr7_i_i12_average_value_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr_i_i6_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_i_i6_average_value_vt_select_30_b : STD_LOGIC_VECTOR (30 downto 0);
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
    signal i_sub6_i_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub6_i_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub6_i_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub6_i_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub6_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub6_i_average_value_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_sub_i5_average_value_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_i5_average_value_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_i5_average_value_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_i5_average_value_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_n_sync_buffer2_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_n_sync_buffer3_average_value_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tobool254_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool275_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool297_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool52_i_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool_i28_average_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tr_i_average_value_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tr_i_average_value_vt_select_11_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_average_value106_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value106_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_average_value106_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value107_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value107_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value108_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value108_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_average_value108_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_average_value125_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value125_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_average_value82_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value82_vt_select_10_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_average_value98_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_average_value98_vt_select_12_b : STD_LOGIC_VECTOR (12 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_vt_select_54_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_x_zext_i_average_value_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_zext_i_average_value_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid1094_i_and1_i_average_value_average_value113_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid1099_i_and1_i_average_value_average_value113_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid1104_i_and1_i_average_value_average_value113_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1111_i_and274_i_lobit_average_value_average_value105_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1113_i_and274_i_lobit_average_value_average_value105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng2_uid1116_i_and274_i_lobit_average_value_average_value105_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage1Idx1_uid1118_i_and274_i_lobit_average_value_average_value105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng1_uid1121_i_and274_i_lobit_average_value_average_value105_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage2Idx1_uid1123_i_and274_i_lobit_average_value_average_value105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1_uid1132_i_and2_or7_op_i_average_value_average_value97_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1_uid1137_i_and2_or7_op_i_average_value_average_value97_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng32_uid1144_i_and3_i53_average_value_average_value95_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1_uid1146_i_and3_i53_average_value_average_value95_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx1Rng16_uid1149_i_and3_i53_average_value_average_value95_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1_uid1151_i_and3_i53_average_value_average_value95_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2Idx1Rng4_uid1154_i_and3_i53_average_value_average_value95_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage2Idx1_uid1156_i_and3_i53_average_value_average_value95_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid1165_i_op_i25_average_value_average_value129_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid1170_i_op_i25_average_value_average_value129_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid1175_i_op_i25_average_value_average_value129_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid1184_i_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid1189_i_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage2Idx1_uid1194_i_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1_uid1203_i_shl15_i21_average_value_average_value127_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2_uid1206_i_shl15_i21_average_value_average_value127_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3_uid1209_i_shl15_i21_average_value_average_value127_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1_uid1218_i_shl15_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx2_uid1221_i_shl15_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage0Idx3_uid1224_i_shl15_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1_uid1233_i_shl18_i24_average_value_average_value128_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2_uid1236_i_shl18_i24_average_value_average_value128_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3_uid1239_i_shl18_i24_average_value_average_value128_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage0Idx1_uid1248_i_shl18_i_average_value_average_value85_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx2_uid1251_i_shl18_i_average_value_average_value85_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx3_uid1254_i_shl18_i_average_value_average_value85_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx4_uid1272_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx5_uid1275_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx6_uid1278_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx7_uid1281_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1286_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage1Idx2_uid1289_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage1Idx3_uid1292_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid1301_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx3Pad6_uid1305_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage0Idx3_uid1307_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx5_uid1313_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx7Pad14_uid1317_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (17 downto 0);
    signal leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal leftShiftStage0Idx7_uid1319_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid1324_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1_uid1333_i_shl_i18_average_value_average_value126_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2_uid1336_i_shl_i18_average_value_average_value126_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Pad48_uid1337_i_shl_i18_average_value_average_value126_shift_x_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3_uid1339_i_shl_i18_average_value_average_value126_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel5Dto4_uid1340_i_shl_i18_average_value_average_value126_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1_uid1348_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx1_uid1353_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx1_uid1358_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage3Idx1_uid1363_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1_uid1372_i_shl_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2_uid1375_i_shl_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3_uid1378_i_shl_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStageSel5Dto4_uid1379_i_shl_i_average_value_average_value83_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1385_i_shr12_i_i_average_value_average_value76_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid1387_i_shr12_i_i_average_value_average_value76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1394_i_shr14_i_i_average_value_average_value77_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1396_i_shr14_i_i_average_value_average_value77_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1403_i_shr16_i_i_average_value_average_value78_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1405_i_shr16_i_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1412_i_shr18_i_i_average_value_average_value79_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1414_i_shr18_i_i_average_value_average_value79_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1421_i_shr1_i_i_average_value_average_value120_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid1423_i_shr1_i_i_average_value_average_value120_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1430_i_shr20_i_i_average_value_average_value80_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1432_i_shr20_i_i_average_value_average_value80_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1439_i_shr266_i_average_value_average_value101_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage0Idx1_uid1441_i_shr266_i_average_value_average_value101_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1448_i_shr34_i_average_value_average_value89_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage0Idx1_uid1450_i_shr34_i_average_value_average_value89_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng2_uid1451_i_shr34_i_average_value_average_value89_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx2_uid1453_i_shr34_i_average_value_average_value89_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx3Rng3_uid1454_i_shr34_i_average_value_average_value89_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage0Idx3_uid1456_i_shr34_i_average_value_average_value89_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng2_uid1463_i_shr3_i_average_value_average_value114_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx1_uid1465_i_shr3_i_average_value_average_value114_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx1Rng1_uid1468_i_shr3_i_average_value_average_value114_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage1Idx1_uid1470_i_shr3_i_average_value_average_value114_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1477_i_shr3_i_i8_average_value_average_value121_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid1479_i_shr3_i_i8_average_value_average_value121_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng8_uid1486_i_shr5_i_i10_average_value_average_value122_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx1_uid1488_i_shr5_i_i10_average_value_average_value122_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng16_uid1495_i_shr7_i_i12_average_value_average_value123_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid1497_i_shr7_i_i12_average_value_average_value123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx1Rng4_uid1504_i_shr_i_average_value_average_value88_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage0Idx1_uid1506_i_shr_i_average_value_average_value88_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx2Rng8_uid1507_i_shr_i_average_value_average_value88_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal rightShiftStage0Idx2_uid1509_i_shr_i_average_value_average_value88_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx3Rng12_uid1510_i_shr_i_average_value_average_value88_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal rightShiftStage0Idx3_uid1512_i_shr_i_average_value_average_value88_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng1_uid1519_i_shr_i_i6_average_value_average_value119_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid1521_i_shr_i_i6_average_value_average_value119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2Idx1Rng2_uid1538_i_unnamed_average_value99_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx1_uid1540_i_unnamed_average_value99_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3Idx1Rng1_uid1543_i_unnamed_average_value99_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage3Idx1_uid1545_i_unnamed_average_value99_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_and12_i16_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and12_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i19_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and13_i_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_and16_i22_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
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
    signal i_and4_i27_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_and4_i27_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
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
    signal i_shl_i50_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shl_i50_average_value_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr4_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (10 downto 0);
    signal i_shr4_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_BitSelect_for_a_b : STD_LOGIC_VECTOR (52 downto 0);
    signal i_x_mantissa_mask_i_i_average_value_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tobool_i4_average_value_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in : STD_LOGIC_VECTOR (159 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in : STD_LOGIC_VECTOR (126 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62 : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal i_or_i29_average_value_vt_select_51_merged_bit_select_b : STD_LOGIC_VECTOR (51 downto 0);
    signal i_or_i29_average_value_vt_select_51_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal i_and12_i_average_value_BitSelect_for_a_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist71_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist72_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist73_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist74_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist75_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist76_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist77_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist78_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist79_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist80_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist81_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist82_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist83_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist84_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist85_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist86_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist87_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist88_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist89_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist90_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist91_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist92_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist93_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist94_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist95_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist96_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist97_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist98_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist99_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist100_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist101_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist102_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist103_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist104_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist105_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist106_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist107_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist108_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist109_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist110_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist111_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist112_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist113_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist114_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist115_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist116_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist117_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist118_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist119_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist120_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist121_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist122_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist123_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist124_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist125_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist126_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist127_i_or352_i_average_value_BitSelect_for_b_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist128_i_conv353_i_op_average_value_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist129_i_and4_i27_average_value_BitSelect_for_a_b_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal redist130_sync_in_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist131_sync_in_in_i_valid_25_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist132_i_syncbuf_n_sync_buffer3_average_value_out_buffer_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist133_i_sub30_i_average_value_vt_select_13_b_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist134_i_shl_i26_average_value_vt_select_63_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist135_i_select1_average_value_vt_join_q_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist136_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist137_i_div_average_value_out_primWireOut_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist138_i_conv50_i_average_value_vt_select_55_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist139_i_cmp9_i_average_value_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist140_i_and2_i52_average_value_vt_select_51_b_1_q : STD_LOGIC_VECTOR (51 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist130_sync_in_in_i_valid_9(DELAY,1768)
    redist130_sync_in_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist130_sync_in_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist131_sync_in_in_i_valid_25(DELAY,1769)
    redist131_sync_in_in_i_valid_25 : dspba_delay
    GENERIC MAP ( width => 1, depth => 16, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist130_sync_in_in_i_valid_9_q, xout => redist131_sync_in_in_i_valid_25_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,566)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_syncbuf_n_sync_buffer3_average_value(BLACKBOX,1015)@0
    thei_syncbuf_n_sync_buffer3_average_value : i_syncbuf_n_sync_buffer3_average_value116
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_n_sync_buffer3_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist132_i_syncbuf_n_sync_buffer3_average_value_out_buffer_out_1(DELAY,1770)
    redist132_i_syncbuf_n_sync_buffer3_average_value_out_buffer_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_syncbuf_n_sync_buffer3_average_value_out_buffer_out, xout => redist132_i_syncbuf_n_sync_buffer3_average_value_out_buffer_out_1_q, clk => clock, aclr => resetn );

    -- i_x_zext_i_average_value_sel_x(BITSELECT,549)@1
    i_x_zext_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(redist132_i_syncbuf_n_sync_buffer3_average_value_out_buffer_out_1_q(31 downto 0)), 64));

    -- i_x_zext_i_average_value_vt_select_31(BITSELECT,1058)@1
    i_x_zext_i_average_value_vt_select_31_b <= i_x_zext_i_average_value_sel_x_b(31 downto 0);

    -- i_x_zext_i_average_value_vt_join(BITJOIN,1057)@1
    i_x_zext_i_average_value_vt_join_q <= c_i32_0gr_q & i_x_zext_i_average_value_vt_select_31_b;

    -- dupName_2_c_i64_0gr_x(CONSTANT,19)
    dupName_2_c_i64_0gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x(BITSELECT,1173)@1
    leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x_in <= leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x_b <= leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x_in(59 downto 0);

    -- i_and12_i16_average_value_vt_const_3(CONSTANT,644)
    i_and12_i16_average_value_vt_const_3_q <= "0000";

    -- leftShiftStage2Idx1_uid1175_i_op_i25_average_value_average_value129_shift_x(BITJOIN,1174)@1
    leftShiftStage2Idx1_uid1175_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage2Idx1Rng4_uid1174_i_op_i25_average_value_average_value129_shift_x_b & i_and12_i16_average_value_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x(BITSELECT,1168)@1
    leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x_in <= leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x_b <= leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x_in(47 downto 0);

    -- i_shr20_i_i_average_value_vt_const_31(CONSTANT,968)
    i_shr20_i_i_average_value_vt_const_31_q <= "0000000000000000";

    -- leftShiftStage1Idx1_uid1170_i_op_i25_average_value_average_value129_shift_x(BITJOIN,1169)@1
    leftShiftStage1Idx1_uid1170_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage1Idx1Rng16_uid1169_i_op_i25_average_value_average_value129_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x(BITSELECT,1163)@1
    leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x_in <= i_unnamed_average_value125_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x_b <= leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid1165_i_op_i25_average_value_average_value129_shift_x(BITJOIN,1164)@1
    leftShiftStage0Idx1_uid1165_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage0Idx1Rng32_uid1164_i_op_i25_average_value_average_value129_shift_x_b & c_i32_0gr_q;

    -- i_shr4_i_average_value_vt_const_63(CONSTANT,982)
    i_shr4_i_average_value_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000";

    -- i_conv_i_average_value_vt_const_31(CONSTANT,807)
    i_conv_i_average_value_vt_const_31_q <= "000000000000000000000";

    -- i_and12_i16_average_value_vt_const_31(CONSTANT,645)
    i_and12_i16_average_value_vt_const_31_q <= "00000000000000000000000000";

    -- dupName_0_c_i32_1gr_x(CONSTANT,15)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- i_sub_i5_average_value(SUB,1013)@0
    i_sub_i5_average_value_a <= STD_LOGIC_VECTOR("0" & c_i32_0gr_q);
    i_sub_i5_average_value_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_n_sync_buffer3_average_value_out_buffer_out);
    i_sub_i5_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_i5_average_value_a) - UNSIGNED(i_sub_i5_average_value_b));
    i_sub_i5_average_value_q <= i_sub_i5_average_value_o(32 downto 0);

    -- bgTrunc_i_sub_i5_average_value_sel_x(BITSELECT,13)@0
    bgTrunc_i_sub_i5_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub_i5_average_value_q(31 downto 0));

    -- i_tobool_i4_average_value_cmp_sign(LOGICAL,1629)@0
    i_tobool_i4_average_value_cmp_sign_q <= STD_LOGIC_VECTOR(i_syncbuf_n_sync_buffer3_average_value_out_buffer_out(31 downto 31));

    -- i_cond3_i_average_value(MUX,780)@0 + 1
    i_cond3_i_average_value_s <= i_tobool_i4_average_value_cmp_sign_q;
    i_cond3_i_average_value_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cond3_i_average_value_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_cond3_i_average_value_s) IS
                WHEN "0" => i_cond3_i_average_value_q <= i_syncbuf_n_sync_buffer3_average_value_out_buffer_out;
                WHEN "1" => i_cond3_i_average_value_q <= bgTrunc_i_sub_i5_average_value_sel_x_b;
                WHEN OTHERS => i_cond3_i_average_value_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rightShiftStage0Idx1Rng1_uid1519_i_shr_i_i6_average_value_average_value119_shift_x(BITSELECT,1518)@1
    rightShiftStage0Idx1Rng1_uid1519_i_shr_i_i6_average_value_average_value119_shift_x_b <= i_cond3_i_average_value_q(31 downto 1);

    -- rightShiftStage0Idx1_uid1521_i_shr_i_i6_average_value_average_value119_shift_x(BITJOIN,1520)@1
    rightShiftStage0Idx1_uid1521_i_shr_i_i6_average_value_average_value119_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1519_i_shr_i_i6_average_value_average_value119_shift_x_b;

    -- rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x(MUX,1522)@1
    rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_s <= VCC_q;
    rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_combproc: PROCESS (rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_s, i_cond3_i_average_value_q, rightShiftStage0Idx1_uid1521_i_shr_i_i6_average_value_average_value119_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_q <= i_cond3_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_q <= rightShiftStage0Idx1_uid1521_i_shr_i_i6_average_value_average_value119_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_i_i6_average_value_vt_select_30(BITSELECT,993)@1
    i_shr_i_i6_average_value_vt_select_30_b <= rightShiftStage0_uid1523_i_shr_i_i6_average_value_average_value119_shift_x_q(30 downto 0);

    -- i_shr_i_i6_average_value_vt_join(BITJOIN,992)@1
    i_shr_i_i6_average_value_vt_join_q <= GND_q & i_shr_i_i6_average_value_vt_select_30_b;

    -- i_or_i_i7_average_value(LOGICAL,871)@1
    i_or_i_i7_average_value_q <= i_shr_i_i6_average_value_vt_join_q or i_cond3_i_average_value_q;

    -- i_acl_47_i_average_value_vt_const_1(CONSTANT,622)
    i_acl_47_i_average_value_vt_const_1_q <= "00";

    -- rightShiftStage0Idx1Rng2_uid1421_i_shr1_i_i_average_value_average_value120_shift_x(BITSELECT,1420)@1
    rightShiftStage0Idx1Rng2_uid1421_i_shr1_i_i_average_value_average_value120_shift_x_b <= i_or_i_i7_average_value_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1423_i_shr1_i_i_average_value_average_value120_shift_x(BITJOIN,1422)@1
    rightShiftStage0Idx1_uid1423_i_shr1_i_i_average_value_average_value120_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx1Rng2_uid1421_i_shr1_i_i_average_value_average_value120_shift_x_b;

    -- rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x(MUX,1424)@1
    rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_s <= VCC_q;
    rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_combproc: PROCESS (rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_s, i_or_i_i7_average_value_q, rightShiftStage0Idx1_uid1423_i_shr1_i_i_average_value_average_value120_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_q <= i_or_i_i7_average_value_q;
            WHEN "1" => rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_q <= rightShiftStage0Idx1_uid1423_i_shr1_i_i_average_value_average_value120_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr1_i_i_average_value_vt_select_29(BITSELECT,967)@1
    i_shr1_i_i_average_value_vt_select_29_b <= rightShiftStage0_uid1425_i_shr1_i_i_average_value_average_value120_shift_x_q(29 downto 0);

    -- i_shr1_i_i_average_value_vt_join(BITJOIN,966)@1
    i_shr1_i_i_average_value_vt_join_q <= i_acl_47_i_average_value_vt_const_1_q & i_shr1_i_i_average_value_vt_select_29_b;

    -- i_or2_i_i_average_value(LOGICAL,848)@1
    i_or2_i_i_average_value_q <= i_shr1_i_i_average_value_vt_join_q or i_or_i_i7_average_value_q;

    -- rightShiftStage0Idx1Rng4_uid1477_i_shr3_i_i8_average_value_average_value121_shift_x(BITSELECT,1476)@1
    rightShiftStage0Idx1Rng4_uid1477_i_shr3_i_i8_average_value_average_value121_shift_x_b <= i_or2_i_i_average_value_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1479_i_shr3_i_i8_average_value_average_value121_shift_x(BITJOIN,1478)@1
    rightShiftStage0Idx1_uid1479_i_shr3_i_i8_average_value_average_value121_shift_x_q <= i_and12_i16_average_value_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1477_i_shr3_i_i8_average_value_average_value121_shift_x_b;

    -- rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x(MUX,1480)@1
    rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_s <= VCC_q;
    rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_combproc: PROCESS (rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_s, i_or2_i_i_average_value_q, rightShiftStage0Idx1_uid1479_i_shr3_i_i8_average_value_average_value121_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_q <= i_or2_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_q <= rightShiftStage0Idx1_uid1479_i_shr3_i_i8_average_value_average_value121_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr3_i_i8_average_value_vt_select_27(BITSELECT,980)@1
    i_shr3_i_i8_average_value_vt_select_27_b <= rightShiftStage0_uid1481_i_shr3_i_i8_average_value_average_value121_shift_x_q(27 downto 0);

    -- i_shr3_i_i8_average_value_vt_join(BITJOIN,979)@1
    i_shr3_i_i8_average_value_vt_join_q <= i_and12_i16_average_value_vt_const_3_q & i_shr3_i_i8_average_value_vt_select_27_b;

    -- i_or4_i_i9_average_value(LOGICAL,856)@1
    i_or4_i_i9_average_value_q <= i_shr3_i_i8_average_value_vt_join_q or i_or2_i_i_average_value_q;

    -- c_i8_0gr(CONSTANT,606)
    c_i8_0gr_q <= "00000000";

    -- rightShiftStage0Idx1Rng8_uid1486_i_shr5_i_i10_average_value_average_value122_shift_x(BITSELECT,1485)@1
    rightShiftStage0Idx1Rng8_uid1486_i_shr5_i_i10_average_value_average_value122_shift_x_b <= i_or4_i_i9_average_value_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1488_i_shr5_i_i10_average_value_average_value122_shift_x(BITJOIN,1487)@1
    rightShiftStage0Idx1_uid1488_i_shr5_i_i10_average_value_average_value122_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid1486_i_shr5_i_i10_average_value_average_value122_shift_x_b;

    -- rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x(MUX,1489)@1
    rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_s <= VCC_q;
    rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_combproc: PROCESS (rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_s, i_or4_i_i9_average_value_q, rightShiftStage0Idx1_uid1488_i_shr5_i_i10_average_value_average_value122_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_q <= i_or4_i_i9_average_value_q;
            WHEN "1" => rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_q <= rightShiftStage0Idx1_uid1488_i_shr5_i_i10_average_value_average_value122_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr5_i_i10_average_value_vt_select_23(BITSELECT,987)@1
    i_shr5_i_i10_average_value_vt_select_23_b <= rightShiftStage0_uid1490_i_shr5_i_i10_average_value_average_value122_shift_x_q(23 downto 0);

    -- i_shr5_i_i10_average_value_vt_join(BITJOIN,986)@1
    i_shr5_i_i10_average_value_vt_join_q <= c_i8_0gr_q & i_shr5_i_i10_average_value_vt_select_23_b;

    -- i_or6_i_i11_average_value(LOGICAL,858)@1
    i_or6_i_i11_average_value_q <= i_shr5_i_i10_average_value_vt_join_q or i_or4_i_i9_average_value_q;

    -- rightShiftStage0Idx1Rng16_uid1495_i_shr7_i_i12_average_value_average_value123_shift_x(BITSELECT,1494)@1
    rightShiftStage0Idx1Rng16_uid1495_i_shr7_i_i12_average_value_average_value123_shift_x_b <= i_or6_i_i11_average_value_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1497_i_shr7_i_i12_average_value_average_value123_shift_x(BITJOIN,1496)@1
    rightShiftStage0Idx1_uid1497_i_shr7_i_i12_average_value_average_value123_shift_x_q <= i_shr20_i_i_average_value_vt_const_31_q & rightShiftStage0Idx1Rng16_uid1495_i_shr7_i_i12_average_value_average_value123_shift_x_b;

    -- rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x(MUX,1498)@1
    rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_s <= VCC_q;
    rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_combproc: PROCESS (rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_s, i_or6_i_i11_average_value_q, rightShiftStage0Idx1_uid1497_i_shr7_i_i12_average_value_average_value123_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_q <= i_or6_i_i11_average_value_q;
            WHEN "1" => rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_q <= rightShiftStage0Idx1_uid1497_i_shr7_i_i12_average_value_average_value123_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr7_i_i12_average_value_vt_select_15(BITSELECT,990)@1
    i_shr7_i_i12_average_value_vt_select_15_b <= rightShiftStage0_uid1499_i_shr7_i_i12_average_value_average_value123_shift_x_q(15 downto 0);

    -- i_shr7_i_i12_average_value_vt_join(BITJOIN,989)@1
    i_shr7_i_i12_average_value_vt_join_q <= i_shr20_i_i_average_value_vt_const_31_q & i_shr7_i_i12_average_value_vt_select_15_b;

    -- i_or8_i_i13_average_value(LOGICAL,863)@1
    i_or8_i_i13_average_value_q <= i_shr7_i_i12_average_value_vt_join_q or i_or6_i_i11_average_value_q;

    -- i_neg_i_i14_average_value(LOGICAL,833)@1
    i_neg_i_i14_average_value_q <= i_or8_i_i13_average_value_q xor dupName_0_c_i32_1gr_x_q;

    -- i_llvm_ctpop_i32_unnamed_average_value7_average_value(EXTIFACE,824)@1
    i_llvm_ctpop_i32_unnamed_average_value7_average_value_data <= i_neg_i_i14_average_value_q;
    thei_llvm_ctpop_i32_unnamed_average_value7_average_value : thirtysix_six_comp
    PORT MAP (
        data => i_neg_i_i14_average_value_q,
        sum => i_llvm_ctpop_i32_unnamed_average_value7_average_value_sum
    );

    -- i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_select_5(BITSELECT,827)@1
    i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_select_5_b <= i_llvm_ctpop_i32_unnamed_average_value7_average_value_sum(5 downto 0);

    -- i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_join(BITJOIN,826)@1
    i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_join_q <= i_and12_i16_average_value_vt_const_31_q & i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_select_5_b;

    -- c_i32_1054(CONSTANT,568)
    c_i32_1054_q <= "00000000000000000000010000011110";

    -- i_sub6_i_average_value(SUB,1009)@1
    i_sub6_i_average_value_a <= STD_LOGIC_VECTOR("0" & c_i32_1054_q);
    i_sub6_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_join_q);
    i_sub6_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub6_i_average_value_a) - UNSIGNED(i_sub6_i_average_value_b));
    i_sub6_i_average_value_q <= i_sub6_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub6_i_average_value_sel_x(BITSELECT,12)@1
    bgTrunc_i_sub6_i_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub6_i_average_value_q(31 downto 0));

    -- i_sub6_i_average_value_vt_select_10(BITSELECT,1012)@1
    i_sub6_i_average_value_vt_select_10_b <= bgTrunc_i_sub6_i_average_value_sel_x_b(10 downto 0);

    -- i_sub6_i_average_value_vt_join(BITJOIN,1011)@1
    i_sub6_i_average_value_vt_join_q <= i_conv_i_average_value_vt_const_31_q & i_sub6_i_average_value_vt_select_10_b;

    -- i_unnamed_average_value125_sel_x(BITSELECT,543)@1
    i_unnamed_average_value125_sel_x_b <= std_logic_vector(resize(unsigned(i_sub6_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_unnamed_average_value125_vt_select_10(BITSELECT,1041)@1
    i_unnamed_average_value125_vt_select_10_b <= i_unnamed_average_value125_sel_x_b(10 downto 0);

    -- i_unnamed_average_value125_vt_join(BITJOIN,1040)@1
    i_unnamed_average_value125_vt_join_q <= i_shr4_i_average_value_vt_const_63_q & i_unnamed_average_value125_vt_select_10_b;

    -- leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x(MUX,1166)@1
    leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_s <= VCC_q;
    leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_combproc: PROCESS (leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_s, i_unnamed_average_value125_vt_join_q, leftShiftStage0Idx1_uid1165_i_op_i25_average_value_average_value129_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q <= i_unnamed_average_value125_vt_join_q;
            WHEN "1" => leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage0Idx1_uid1165_i_op_i25_average_value_average_value129_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x(MUX,1171)@1
    leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_s <= VCC_q;
    leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_combproc: PROCESS (leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_s, leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q, leftShiftStage1Idx1_uid1170_i_op_i25_average_value_average_value129_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage0_uid1167_i_op_i25_average_value_average_value129_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage1Idx1_uid1170_i_op_i25_average_value_average_value129_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x(MUX,1176)@1
    leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_s <= VCC_q;
    leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_combproc: PROCESS (leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_s, leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q, leftShiftStage2Idx1_uid1175_i_op_i25_average_value_average_value129_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage1_uid1172_i_op_i25_average_value_average_value129_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_q <= leftShiftStage2Idx1_uid1175_i_op_i25_average_value_average_value129_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_op_i25_average_value_vt_select_62(BITSELECT,838)@1
    i_op_i25_average_value_vt_select_62_b <= leftShiftStage2_uid1177_i_op_i25_average_value_average_value129_shift_x_q(62 downto 52);

    -- i_op_i25_average_value_vt_join(BITJOIN,837)@1
    i_op_i25_average_value_vt_join_q <= GND_q & i_op_i25_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- c_i32_32(CONSTANT,578)
    c_i32_32_q <= "00000000000000000000000000100000";

    -- i_cmp_i_average_value(LOGICAL,778)@1
    i_cmp_i_average_value_q <= "1" WHEN i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_join_q = c_i32_32_q ELSE "0";

    -- i_shl20_i_average_value(MUX,921)@1
    i_shl20_i_average_value_s <= i_cmp_i_average_value_q;
    i_shl20_i_average_value_combproc: PROCESS (i_shl20_i_average_value_s, i_op_i25_average_value_vt_join_q, dupName_2_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl20_i_average_value_s) IS
            WHEN "0" => i_shl20_i_average_value_q <= i_op_i25_average_value_vt_join_q;
            WHEN "1" => i_shl20_i_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl20_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl20_i_average_value_vt_select_62(BITSELECT,925)@1
    i_shl20_i_average_value_vt_select_62_b <= i_shl20_i_average_value_q(62 downto 52);

    -- i_and1_i_average_value_vt_const_51(CONSTANT,671)
    i_and1_i_average_value_vt_const_51_q <= "0000000000000000000000000000000000000000000000000000";

    -- i_shl20_i_average_value_vt_join(BITJOIN,924)@1
    i_shl20_i_average_value_vt_join_q <= GND_q & i_shl20_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x(BITSELECT,1237)@1
    leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x_in <= leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q(60 downto 0);
    leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x_b <= leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x_in(60 downto 0);

    -- i_and2_or7_op_i_average_value_vt_const_2(CONSTANT,717)
    i_and2_or7_op_i_average_value_vt_const_2_q <= "000";

    -- leftShiftStage0Idx3_uid1239_i_shl18_i24_average_value_average_value128_shift_x(BITJOIN,1238)@1
    leftShiftStage0Idx3_uid1239_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0Idx3Rng3_uid1238_i_shl18_i24_average_value_average_value128_shift_x_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x(BITSELECT,1234)@1
    leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x_in <= leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q(61 downto 0);
    leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x_b <= leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx2_uid1236_i_shl18_i24_average_value_average_value128_shift_x(BITJOIN,1235)@1
    leftShiftStage0Idx2_uid1236_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0Idx2Rng2_uid1235_i_shl18_i24_average_value_average_value128_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x(BITSELECT,1231)@1
    leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x_in <= leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q(62 downto 0);
    leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x_b <= leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x_in(62 downto 0);

    -- leftShiftStage0Idx1_uid1233_i_shl18_i24_average_value_average_value128_shift_x(BITJOIN,1232)@1
    leftShiftStage0Idx1_uid1233_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0Idx1Rng1_uid1232_i_shl18_i24_average_value_average_value128_shift_x_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x(BITSELECT,1207)@1
    leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x_in <= leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q(51 downto 0);
    leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x_b <= leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x_in(51 downto 0);

    -- i_and253_i_average_value_vt_const_11(CONSTANT,679)
    i_and253_i_average_value_vt_const_11_q <= "000000000000";

    -- leftShiftStage0Idx3_uid1209_i_shl15_i21_average_value_average_value127_shift_x(BITJOIN,1208)@1
    leftShiftStage0Idx3_uid1209_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0Idx3Rng12_uid1208_i_shl15_i21_average_value_average_value127_shift_x_b & i_and253_i_average_value_vt_const_11_q;

    -- leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x(BITSELECT,1204)@1
    leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x_in <= leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q(55 downto 0);
    leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x_b <= leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x_in(55 downto 0);

    -- leftShiftStage0Idx2_uid1206_i_shl15_i21_average_value_average_value127_shift_x(BITJOIN,1205)@1
    leftShiftStage0Idx2_uid1206_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0Idx2Rng8_uid1205_i_shl15_i21_average_value_average_value127_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x(BITSELECT,1201)@1
    leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x_in <= leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q(59 downto 0);
    leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x_b <= leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x_in(59 downto 0);

    -- leftShiftStage0Idx1_uid1203_i_shl15_i21_average_value_average_value127_shift_x(BITJOIN,1202)@1
    leftShiftStage0Idx1_uid1203_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0Idx1Rng4_uid1202_i_shl15_i21_average_value_average_value127_shift_x_b & i_and12_i16_average_value_vt_const_3_q;

    -- leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x(BITSELECT,1337)@1
    leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x_in <= i_conv10_i_average_value_vt_join_q(15 downto 0);
    leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x_b <= leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx3Pad48_uid1337_i_shl_i18_average_value_average_value126_shift_x(CONSTANT,1336)
    leftShiftStage0Idx3Pad48_uid1337_i_shl_i18_average_value_average_value126_shift_x_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid1339_i_shl_i18_average_value_average_value126_shift_x(BITJOIN,1338)@1
    leftShiftStage0Idx3_uid1339_i_shl_i18_average_value_average_value126_shift_x_q <= leftShiftStage0Idx3Rng48_uid1338_i_shl_i18_average_value_average_value126_shift_x_b & leftShiftStage0Idx3Pad48_uid1337_i_shl_i18_average_value_average_value126_shift_x_q;

    -- leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x(BITSELECT,1334)@1
    leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x_in <= i_conv10_i_average_value_vt_join_q(31 downto 0);
    leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x_b <= leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx2_uid1336_i_shl_i18_average_value_average_value126_shift_x(BITJOIN,1335)@1
    leftShiftStage0Idx2_uid1336_i_shl_i18_average_value_average_value126_shift_x_q <= leftShiftStage0Idx2Rng32_uid1335_i_shl_i18_average_value_average_value126_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x(BITSELECT,1331)@1
    leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x_in <= i_conv10_i_average_value_vt_join_q(47 downto 0);
    leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x_b <= leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x_in(47 downto 0);

    -- leftShiftStage0Idx1_uid1333_i_shl_i18_average_value_average_value126_shift_x(BITJOIN,1332)@1
    leftShiftStage0Idx1_uid1333_i_shl_i18_average_value_average_value126_shift_x_q <= leftShiftStage0Idx1Rng16_uid1332_i_shl_i18_average_value_average_value126_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- i_conv10_i_average_value_sel_x(BITSELECT,40)@1
    i_conv10_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_cond3_i_average_value_q(31 downto 0)), 64));

    -- i_conv10_i_average_value_vt_select_31(BITSELECT,784)@1
    i_conv10_i_average_value_vt_select_31_b <= i_conv10_i_average_value_sel_x_b(31 downto 0);

    -- i_conv10_i_average_value_vt_join(BITJOIN,783)@1
    i_conv10_i_average_value_vt_join_q <= c_i32_0gr_q & i_conv10_i_average_value_vt_select_31_b;

    -- i_sh_prom_i17_average_value_vt_const_63(CONSTANT,913)
    i_sh_prom_i17_average_value_vt_const_63_q <= "0000000000000000000000000000000000000000000000000000000000";

    -- i_add_i15_average_value_vt_const_31(CONSTANT,635)
    i_add_i15_average_value_vt_const_31_q <= "0000000000000000000000000";

    -- dupName_0_c_i32_21_x(CONSTANT,16)
    dupName_0_c_i32_21_x_q <= "00000000000000000000000000010101";

    -- i_add_i15_average_value(ADD,634)@1
    i_add_i15_average_value_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value7_average_value_vt_join_q);
    i_add_i15_average_value_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_21_x_q);
    i_add_i15_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i15_average_value_a) + UNSIGNED(i_add_i15_average_value_b));
    i_add_i15_average_value_q <= i_add_i15_average_value_o(32 downto 0);

    -- bgTrunc_i_add_i15_average_value_sel_x(BITSELECT,2)@1
    bgTrunc_i_add_i15_average_value_sel_x_b <= i_add_i15_average_value_q(31 downto 0);

    -- i_add_i15_average_value_vt_select_6(BITSELECT,637)@1
    i_add_i15_average_value_vt_select_6_b <= bgTrunc_i_add_i15_average_value_sel_x_b(6 downto 0);

    -- i_add_i15_average_value_vt_join(BITJOIN,636)@1
    i_add_i15_average_value_vt_join_q <= i_add_i15_average_value_vt_const_31_q & i_add_i15_average_value_vt_select_6_b;

    -- i_and12_i16_average_value_BitSelect_for_a_merged_bit_select(BITSELECT,1635)@1
    i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_in <= i_add_i15_average_value_vt_join_q(5 downto 0);
    i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_b <= i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_in(5 downto 4);
    i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_c <= i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_in(3 downto 2);
    i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_d <= i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_in(1 downto 0);

    -- i_and12_i16_average_value_join(BITJOIN,1562)@1
    i_and12_i16_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_b & GND_q & GND_q & GND_q & GND_q;

    -- i_and12_i16_average_value_vt_select_5(BITSELECT,647)@1
    i_and12_i16_average_value_vt_select_5_b <= i_and12_i16_average_value_join_q(5 downto 4);

    -- i_and12_i16_average_value_vt_join(BITJOIN,646)@1
    i_and12_i16_average_value_vt_join_q <= i_and12_i16_average_value_vt_const_31_q & i_and12_i16_average_value_vt_select_5_b & i_and12_i16_average_value_vt_const_3_q;

    -- i_sh_prom_i17_average_value_sel_x(BITSELECT,447)@1
    i_sh_prom_i17_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and12_i16_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom_i17_average_value_vt_select_5(BITSELECT,915)@1
    i_sh_prom_i17_average_value_vt_select_5_b <= i_sh_prom_i17_average_value_sel_x_b(5 downto 4);

    -- i_sh_prom_i17_average_value_vt_join(BITJOIN,914)@1
    i_sh_prom_i17_average_value_vt_join_q <= i_sh_prom_i17_average_value_vt_const_63_q & i_sh_prom_i17_average_value_vt_select_5_b & i_and12_i16_average_value_vt_const_3_q;

    -- i_shl_i18_average_value_average_value126_shift_narrow_x(BITSELECT,476)@1
    i_shl_i18_average_value_average_value126_shift_narrow_x_b <= i_sh_prom_i17_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel5Dto4_uid1340_i_shl_i18_average_value_average_value126_shift_x(BITSELECT,1339)@1
    leftShiftStageSel5Dto4_uid1340_i_shl_i18_average_value_average_value126_shift_x_b <= i_shl_i18_average_value_average_value126_shift_narrow_x_b(5 downto 4);

    -- leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x(MUX,1340)@1
    leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_s <= leftShiftStageSel5Dto4_uid1340_i_shl_i18_average_value_average_value126_shift_x_b;
    leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_combproc: PROCESS (leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_s, i_conv10_i_average_value_vt_join_q, leftShiftStage0Idx1_uid1333_i_shl_i18_average_value_average_value126_shift_x_q, leftShiftStage0Idx2_uid1336_i_shl_i18_average_value_average_value126_shift_x_q, leftShiftStage0Idx3_uid1339_i_shl_i18_average_value_average_value126_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q <= i_conv10_i_average_value_vt_join_q;
            WHEN "01" => leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q <= leftShiftStage0Idx1_uid1333_i_shl_i18_average_value_average_value126_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q <= leftShiftStage0Idx2_uid1336_i_shl_i18_average_value_average_value126_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q <= leftShiftStage0Idx3_uid1339_i_shl_i18_average_value_average_value126_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sh_prom14_i20_average_value_vt_const_63(CONSTANT,886)
    i_sh_prom14_i20_average_value_vt_const_63_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_and13_i19_average_value_vt_const_31(CONSTANT,655)
    i_and13_i19_average_value_vt_const_31_q <= "0000000000000000000000000000";

    -- i_and13_i19_average_value_join(BITJOIN,1566)@1
    i_and13_i19_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_c & GND_q & GND_q;

    -- i_and13_i19_average_value_vt_select_3(BITSELECT,657)@1
    i_and13_i19_average_value_vt_select_3_b <= i_and13_i19_average_value_join_q(3 downto 2);

    -- i_and13_i19_average_value_vt_join(BITJOIN,656)@1
    i_and13_i19_average_value_vt_join_q <= i_and13_i19_average_value_vt_const_31_q & i_and13_i19_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_sh_prom14_i20_average_value_sel_x(BITSELECT,441)@1
    i_sh_prom14_i20_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and13_i19_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom14_i20_average_value_vt_select_3(BITSELECT,888)@1
    i_sh_prom14_i20_average_value_vt_select_3_b <= i_sh_prom14_i20_average_value_sel_x_b(3 downto 2);

    -- i_sh_prom14_i20_average_value_vt_join(BITJOIN,887)@1
    i_sh_prom14_i20_average_value_vt_join_q <= i_sh_prom14_i20_average_value_vt_const_63_q & i_sh_prom14_i20_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_shl15_i21_average_value_average_value127_shift_narrow_x(BITSELECT,452)@1
    i_shl15_i21_average_value_average_value127_shift_narrow_x_b <= i_sh_prom14_i20_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x(BITSELECT,1209)@1
    leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x_in <= i_shl15_i21_average_value_average_value127_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x_b <= leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x_in(3 downto 2);

    -- leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x(MUX,1210)@1
    leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_s <= leftShiftStageSel3Dto2_uid1210_i_shl15_i21_average_value_average_value127_shift_x_b;
    leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_combproc: PROCESS (leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_s, leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q, leftShiftStage0Idx1_uid1203_i_shl15_i21_average_value_average_value127_shift_x_q, leftShiftStage0Idx2_uid1206_i_shl15_i21_average_value_average_value127_shift_x_q, leftShiftStage0Idx3_uid1209_i_shl15_i21_average_value_average_value127_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0_uid1341_i_shl_i18_average_value_average_value126_shift_x_q;
            WHEN "01" => leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0Idx1_uid1203_i_shl15_i21_average_value_average_value127_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0Idx2_uid1206_i_shl15_i21_average_value_average_value127_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q <= leftShiftStage0Idx3_uid1209_i_shl15_i21_average_value_average_value127_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sh_prom17_i23_average_value_vt_const_63(CONSTANT,895)
    i_sh_prom17_i23_average_value_vt_const_63_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_and16_i22_average_value_vt_const_31(CONSTANT,664)
    i_and16_i22_average_value_vt_const_31_q <= "000000000000000000000000000000";

    -- i_and16_i22_average_value_join(BITJOIN,1570)@1
    i_and16_i22_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i16_average_value_BitSelect_for_a_merged_bit_select_d;

    -- i_and16_i22_average_value_vt_select_1(BITSELECT,666)@1
    i_and16_i22_average_value_vt_select_1_b <= i_and16_i22_average_value_join_q(1 downto 0);

    -- i_and16_i22_average_value_vt_join(BITJOIN,665)@1
    i_and16_i22_average_value_vt_join_q <= i_and16_i22_average_value_vt_const_31_q & i_and16_i22_average_value_vt_select_1_b;

    -- i_sh_prom17_i23_average_value_sel_x(BITSELECT,443)@1
    i_sh_prom17_i23_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and16_i22_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom17_i23_average_value_vt_select_1(BITSELECT,897)@1
    i_sh_prom17_i23_average_value_vt_select_1_b <= i_sh_prom17_i23_average_value_sel_x_b(1 downto 0);

    -- i_sh_prom17_i23_average_value_vt_join(BITJOIN,896)@1
    i_sh_prom17_i23_average_value_vt_join_q <= i_sh_prom17_i23_average_value_vt_const_63_q & i_sh_prom17_i23_average_value_vt_select_1_b;

    -- i_shl18_i24_average_value_average_value128_shift_narrow_x(BITSELECT,460)@1
    i_shl18_i24_average_value_average_value128_shift_narrow_x_b <= i_sh_prom17_i23_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x(BITSELECT,1239)@1
    leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x_in <= i_shl18_i24_average_value_average_value128_shift_narrow_x_b(1 downto 0);
    leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x_b <= leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x_in(1 downto 0);

    -- leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x(MUX,1240)@1
    leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_s <= leftShiftStageSel1Dto0_uid1240_i_shl18_i24_average_value_average_value128_shift_x_b;
    leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_combproc: PROCESS (leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_s, leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q, leftShiftStage0Idx1_uid1233_i_shl18_i24_average_value_average_value128_shift_x_q, leftShiftStage0Idx2_uid1236_i_shl18_i24_average_value_average_value128_shift_x_q, leftShiftStage0Idx3_uid1239_i_shl18_i24_average_value_average_value128_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0_uid1211_i_shl15_i21_average_value_average_value127_shift_x_q;
            WHEN "01" => leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0Idx1_uid1233_i_shl18_i24_average_value_average_value128_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0Idx2_uid1236_i_shl18_i24_average_value_average_value128_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q <= leftShiftStage0Idx3_uid1239_i_shl18_i24_average_value_average_value128_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_or22_bitvec_i_average_value_average_value130_or22_vec_2_i_join_x(BITJOIN,245)@1
    i_or22_bitvec_i_average_value_average_value130_or22_vec_2_i_join_x_q <= i_x_zext_i_average_value_vt_join_q & i_shl20_i_average_value_vt_join_q & leftShiftStage0_uid1241_i_shl18_i24_average_value_average_value128_shift_x_q;

    -- i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select(BITSELECT,1631)@1
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in <= i_or22_bitvec_i_average_value_average_value130_or22_vec_2_i_join_x_q(159 downto 0);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(0 downto 0);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(1 downto 1);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(10 downto 10);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(11 downto 11);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(116 downto 116);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(117 downto 117);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(118 downto 118);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(119 downto 119);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(12 downto 12);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(120 downto 120);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(121 downto 121);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(122 downto 122);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(123 downto 123);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(124 downto 124);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(125 downto 125);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(126 downto 126);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(13 downto 13);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(14 downto 14);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(15 downto 15);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(159 downto 159);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(16 downto 16);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(17 downto 17);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(18 downto 18);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(19 downto 19);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(2 downto 2);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(20 downto 20);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(21 downto 21);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(22 downto 22);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(23 downto 23);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(24 downto 24);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(25 downto 25);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(26 downto 26);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(27 downto 27);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(28 downto 28);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(29 downto 29);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(3 downto 3);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(30 downto 30);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(31 downto 31);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(32 downto 32);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(33 downto 33);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(34 downto 34);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(35 downto 35);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(36 downto 36);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(37 downto 37);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(38 downto 38);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(39 downto 39);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(4 downto 4);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(40 downto 40);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(41 downto 41);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(42 downto 42);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(43 downto 43);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(44 downto 44);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(45 downto 45);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(46 downto 46);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(47 downto 47);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(48 downto 48);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(49 downto 49);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(5 downto 5);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(50 downto 50);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(51 downto 51);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(6 downto 6);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(7 downto 7);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(8 downto 8);
    i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63 <= i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_in(9 downto 9);

    -- redist82_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u_1(DELAY,1720)
    redist82_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u, xout => redist82_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u_1_q, clk => clock, aclr => resetn );

    -- redist78_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q_1(DELAY,1716)
    redist78_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q, xout => redist78_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q_1_q, clk => clock, aclr => resetn );

    -- redist77_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p_1(DELAY,1715)
    redist77_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p, xout => redist77_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p_1_q, clk => clock, aclr => resetn );

    -- redist76_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o_1(DELAY,1714)
    redist76_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o, xout => redist76_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o_1_q, clk => clock, aclr => resetn );

    -- redist75_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n_1(DELAY,1713)
    redist75_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n, xout => redist75_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n_1_q, clk => clock, aclr => resetn );

    -- redist74_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m_1(DELAY,1712)
    redist74_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m, xout => redist74_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m_1_q, clk => clock, aclr => resetn );

    -- redist73_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l_1(DELAY,1711)
    redist73_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l, xout => redist73_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l_1_q, clk => clock, aclr => resetn );

    -- redist72_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k_1(DELAY,1710)
    redist72_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k, xout => redist72_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k_1_q, clk => clock, aclr => resetn );

    -- redist70_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i_1(DELAY,1708)
    redist70_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i, xout => redist70_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- redist69_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h_1(DELAY,1707)
    redist69_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h, xout => redist69_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h_1_q, clk => clock, aclr => resetn );

    -- redist68_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g_1(DELAY,1706)
    redist68_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g, xout => redist68_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g_1_q, clk => clock, aclr => resetn );

    -- redist67_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f_1(DELAY,1705)
    redist67_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f, xout => redist67_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f_1_q, clk => clock, aclr => resetn );

    -- redist122_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9_1(DELAY,1760)
    redist122_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9, xout => redist122_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9_1_q, clk => clock, aclr => resetn );

    -- redist121_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8_1(DELAY,1759)
    redist121_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8, xout => redist121_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8_1_q, clk => clock, aclr => resetn );

    -- redist119_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6_1(DELAY,1757)
    redist119_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6, xout => redist119_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6_1_q, clk => clock, aclr => resetn );

    -- redist118_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5_1(DELAY,1756)
    redist118_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5, xout => redist118_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5_1_q, clk => clock, aclr => resetn );

    -- redist117_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4_1(DELAY,1755)
    redist117_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4, xout => redist117_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4_1_q, clk => clock, aclr => resetn );

    -- redist116_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3_1(DELAY,1754)
    redist116_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3, xout => redist116_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3_1_q, clk => clock, aclr => resetn );

    -- redist115_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2_1(DELAY,1753)
    redist115_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2, xout => redist115_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2_1_q, clk => clock, aclr => resetn );

    -- redist114_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1_1(DELAY,1752)
    redist114_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1, xout => redist114_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1_1_q, clk => clock, aclr => resetn );

    -- redist113_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz_1(DELAY,1751)
    redist113_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz, xout => redist113_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz_1_q, clk => clock, aclr => resetn );

    -- redist112_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy_1(DELAY,1750)
    redist112_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy, xout => redist112_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy_1_q, clk => clock, aclr => resetn );

    -- redist111_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx_1(DELAY,1749)
    redist111_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx, xout => redist111_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx_1_q, clk => clock, aclr => resetn );

    -- redist110_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww_1(DELAY,1748)
    redist110_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww, xout => redist110_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww_1_q, clk => clock, aclr => resetn );

    -- redist108_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu_1(DELAY,1746)
    redist108_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu, xout => redist108_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu_1_q, clk => clock, aclr => resetn );

    -- redist107_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt_1(DELAY,1745)
    redist107_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt, xout => redist107_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt_1_q, clk => clock, aclr => resetn );

    -- redist106_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss_1(DELAY,1744)
    redist106_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss, xout => redist106_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss_1_q, clk => clock, aclr => resetn );

    -- redist105_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr_1(DELAY,1743)
    redist105_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr, xout => redist105_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr_1_q, clk => clock, aclr => resetn );

    -- redist104_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq_1(DELAY,1742)
    redist104_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq, xout => redist104_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq_1_q, clk => clock, aclr => resetn );

    -- redist103_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp_1(DELAY,1741)
    redist103_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp, xout => redist103_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp_1_q, clk => clock, aclr => resetn );

    -- redist102_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo_1(DELAY,1740)
    redist102_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo, xout => redist102_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo_1_q, clk => clock, aclr => resetn );

    -- redist101_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn_1(DELAY,1739)
    redist101_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn, xout => redist101_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn_1_q, clk => clock, aclr => resetn );

    -- redist100_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm_1(DELAY,1738)
    redist100_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm, xout => redist100_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm_1_q, clk => clock, aclr => resetn );

    -- redist99_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll_1(DELAY,1737)
    redist99_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll, xout => redist99_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll_1_q, clk => clock, aclr => resetn );

    -- redist97_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj_1(DELAY,1735)
    redist97_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj, xout => redist97_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj_1_q, clk => clock, aclr => resetn );

    -- redist96_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii_1(DELAY,1734)
    redist96_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii, xout => redist96_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii_1_q, clk => clock, aclr => resetn );

    -- redist95_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh_1(DELAY,1733)
    redist95_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh, xout => redist95_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh_1_q, clk => clock, aclr => resetn );

    -- redist94_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg_1(DELAY,1732)
    redist94_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg, xout => redist94_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg_1_q, clk => clock, aclr => resetn );

    -- redist93_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff_1(DELAY,1731)
    redist93_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff, xout => redist93_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff_1_q, clk => clock, aclr => resetn );

    -- redist92_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee_1(DELAY,1730)
    redist92_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee, xout => redist92_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee_1_q, clk => clock, aclr => resetn );

    -- redist91_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd_1(DELAY,1729)
    redist91_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd, xout => redist91_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd_1_q, clk => clock, aclr => resetn );

    -- redist90_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc_1(DELAY,1728)
    redist90_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc, xout => redist90_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc_1_q, clk => clock, aclr => resetn );

    -- redist89_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb_1(DELAY,1727)
    redist89_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb, xout => redist89_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb_1_q, clk => clock, aclr => resetn );

    -- redist88_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa_1(DELAY,1726)
    redist88_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa, xout => redist88_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa_1_q, clk => clock, aclr => resetn );

    -- redist86_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y_1(DELAY,1724)
    redist86_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y, xout => redist86_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y_1_q, clk => clock, aclr => resetn );

    -- redist85_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x_1(DELAY,1723)
    redist85_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x, xout => redist85_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x_1_q, clk => clock, aclr => resetn );

    -- redist84_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w_1(DELAY,1722)
    redist84_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w, xout => redist84_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w_1_q, clk => clock, aclr => resetn );

    -- redist83_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v_1(DELAY,1721)
    redist83_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v, xout => redist83_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v_1_q, clk => clock, aclr => resetn );

    -- redist81_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t_1(DELAY,1719)
    redist81_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t, xout => redist81_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t_1_q, clk => clock, aclr => resetn );

    -- redist80_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s_1(DELAY,1718)
    redist80_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s, xout => redist80_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s_1_q, clk => clock, aclr => resetn );

    -- redist79_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r_1(DELAY,1717)
    redist79_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r, xout => redist79_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r_1_q, clk => clock, aclr => resetn );

    -- redist71_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j_1(DELAY,1709)
    redist71_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j, xout => redist71_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j_1_q, clk => clock, aclr => resetn );

    -- redist66_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e_1(DELAY,1704)
    redist66_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e, xout => redist66_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- redist65_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d_1(DELAY,1703)
    redist65_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d, xout => redist65_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d_1_q, clk => clock, aclr => resetn );

    -- redist126_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63_1(DELAY,1764)
    redist126_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63, xout => redist126_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63_1_q, clk => clock, aclr => resetn );

    -- redist125_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62_1(DELAY,1763)
    redist125_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62, xout => redist125_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62_1_q, clk => clock, aclr => resetn );

    -- redist124_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61_1(DELAY,1762)
    redist124_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61, xout => redist124_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61_1_q, clk => clock, aclr => resetn );

    -- redist123_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0_1(DELAY,1761)
    redist123_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0, xout => redist123_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0_1_q, clk => clock, aclr => resetn );

    -- redist120_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7_1(DELAY,1758)
    redist120_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7, xout => redist120_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7_1_q, clk => clock, aclr => resetn );

    -- redist109_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv_1(DELAY,1747)
    redist109_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv, xout => redist109_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv_1_q, clk => clock, aclr => resetn );

    -- redist98_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk_1(DELAY,1736)
    redist98_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk, xout => redist98_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk_1_q, clk => clock, aclr => resetn );

    -- redist87_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z_1(DELAY,1725)
    redist87_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z, xout => redist87_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z_1_q, clk => clock, aclr => resetn );

    -- redist64_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c_1(DELAY,1702)
    redist64_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c, xout => redist64_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist63_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b_1(DELAY,1701)
    redist63_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b, xout => redist63_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- i_or22_compressed_i_average_value_average_value131_or22_shuffle_i_join_x(BITJOIN,246)@2
    i_or22_compressed_i_average_value_average_value131_or22_shuffle_i_join_x_q <= redist82_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_u_1_q & redist78_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_q_1_q & redist77_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_p_1_q & redist76_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o_1_q & redist75_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_n_1_q & redist74_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_m_1_q & redist73_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_l_1_q & redist72_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_k_1_q & redist70_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_i_1_q & redist69_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_h_1_q & redist68_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_g_1_q & redist67_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_f_1_q & redist122_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_9_1_q & redist121_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_8_1_q & redist119_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_6_1_q & redist118_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_5_1_q & redist117_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_4_1_q & redist116_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_3_1_q & redist115_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_2_1_q & redist114_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_1_1_q & redist113_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_zz_1_q & redist112_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_yy_1_q & redist111_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_xx_1_q & redist110_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ww_1_q & redist108_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_uu_1_q & redist107_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_tt_1_q & redist106_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ss_1_q & redist105_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_rr_1_q & redist104_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_qq_1_q & redist103_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_pp_1_q & redist102_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_oo_1_q & redist101_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_nn_1_q & redist100_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_mm_1_q & redist99_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ll_1_q & redist97_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_jj_1_q & redist96_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ii_1_q & redist95_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_hh_1_q & redist94_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_gg_1_q & redist93_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ff_1_q & redist92_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_ee_1_q & redist91_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_dd_1_q & redist90_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_cc_1_q & redist89_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_bb_1_q & redist88_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_aa_1_q & redist86_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_y_1_q & redist85_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_x_1_q & redist84_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_w_1_q & redist83_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_v_1_q & redist81_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_t_1_q & redist80_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_s_1_q & redist79_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_r_1_q & redist71_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_j_1_q & redist66_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_e_1_q & redist65_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_d_1_q & redist126_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o63_1_q & redist125_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o62_1_q & redist124_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_o61_1_q & redist123_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_0_1_q & redist120_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_7_1_q & redist109_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_vv_1_q & redist98_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_kk_1_q & redist87_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_z_1_q & redist64_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_c_1_q & redist63_i_or22_bitvec_i_average_value_average_value130_or22_bitvec_i_select_0_x_merged_bit_select_b_1_q;

    -- leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x(BITSELECT,1102)@13
    leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x_in <= leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x_b <= leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x_in(59 downto 0);

    -- leftShiftStage2Idx1_uid1104_i_and1_i_average_value_average_value113_shift_x(BITJOIN,1103)@13
    leftShiftStage2Idx1_uid1104_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage2Idx1Rng4_uid1103_i_and1_i_average_value_average_value113_shift_x_b & i_and12_i16_average_value_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x(BITSELECT,1097)@13
    leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x_in <= leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x_b <= leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid1099_i_and1_i_average_value_average_value113_shift_x(BITJOIN,1098)@13
    leftShiftStage1Idx1_uid1099_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage1Idx1Rng16_uid1098_i_and1_i_average_value_average_value113_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x(BITSELECT,1092)@13
    leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x_in <= i_and60_i_average_value_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x_b <= leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid1094_i_and1_i_average_value_average_value113_shift_x(BITJOIN,1093)@13
    leftShiftStage0Idx1_uid1094_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage0Idx1Rng32_uid1093_i_and1_i_average_value_average_value113_shift_x_b & c_i32_0gr_q;

    -- i_conv353_i_average_value_vt_const_63(CONSTANT,793)
    i_conv353_i_average_value_vt_const_63_q <= "000000000000000000000000000000000000000000000000000";

    -- i_acl_22_i_average_value_vt_const_31(CONSTANT,617)
    i_acl_22_i_average_value_vt_const_31_q <= "0000000000000000000";

    -- rightShiftStage3Idx1Rng1_uid1543_i_unnamed_average_value99_shift_x(BITSELECT,1542)@11
    rightShiftStage3Idx1Rng1_uid1543_i_unnamed_average_value99_shift_x_b <= rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q(63 downto 1);

    -- rightShiftStage3Idx1_uid1545_i_unnamed_average_value99_shift_x(BITJOIN,1544)@11
    rightShiftStage3Idx1_uid1545_i_unnamed_average_value99_shift_x_q <= GND_q & rightShiftStage3Idx1Rng1_uid1543_i_unnamed_average_value99_shift_x_b;

    -- rightShiftStage2Idx1Rng2_uid1538_i_unnamed_average_value99_shift_x(BITSELECT,1537)@11
    rightShiftStage2Idx1Rng2_uid1538_i_unnamed_average_value99_shift_x_b <= rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q(63 downto 2);

    -- rightShiftStage2Idx1_uid1540_i_unnamed_average_value99_shift_x(BITJOIN,1539)@11
    rightShiftStage2Idx1_uid1540_i_unnamed_average_value99_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage2Idx1Rng2_uid1538_i_unnamed_average_value99_shift_x_b;

    -- rightShiftStage1Idx1Rng16_uid1149_i_and3_i53_average_value_average_value95_shift_x(BITSELECT,1148)@11
    rightShiftStage1Idx1Rng16_uid1149_i_and3_i53_average_value_average_value95_shift_x_b <= rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q(63 downto 16);

    -- rightShiftStage1Idx1_uid1151_i_and3_i53_average_value_average_value95_shift_x(BITJOIN,1150)@11
    rightShiftStage1Idx1_uid1151_i_and3_i53_average_value_average_value95_shift_x_q <= i_shr20_i_i_average_value_vt_const_31_q & rightShiftStage1Idx1Rng16_uid1149_i_and3_i53_average_value_average_value95_shift_x_b;

    -- rightShiftStage0Idx1Rng32_uid1144_i_and3_i53_average_value_average_value95_shift_x(BITSELECT,1143)@11
    rightShiftStage0Idx1Rng32_uid1144_i_and3_i53_average_value_average_value95_shift_x_b <= bgTrunc_i_add_i_average_value_sel_x_b(63 downto 32);

    -- rightShiftStage0Idx1_uid1146_i_and3_i53_average_value_average_value95_shift_x(BITJOIN,1145)@11
    rightShiftStage0Idx1_uid1146_i_and3_i53_average_value_average_value95_shift_x_q <= c_i32_0gr_q & rightShiftStage0Idx1Rng32_uid1144_i_and3_i53_average_value_average_value95_shift_x_b;

    -- i_acl_10_i_average_value_vt_const_63(CONSTANT,609)
    i_acl_10_i_average_value_vt_const_63_q <= "000000000000000000000000000000000000000000000000000000000000000";

    -- i_not_cmp9_i_average_value(LOGICAL,834)@11
    i_not_cmp9_i_average_value_q <= redist139_i_cmp9_i_average_value_c_1_q xor VCC_q;

    -- c_i64_1gr(CONSTANT,591)
    c_i64_1gr_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- rightShiftStage0Idx3Rng3_uid1454_i_shr34_i_average_value_average_value89_shift_x(BITSELECT,1453)@10
    rightShiftStage0Idx3Rng3_uid1454_i_shr34_i_average_value_average_value89_shift_x_b <= rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q(63 downto 3);

    -- rightShiftStage0Idx3_uid1456_i_shr34_i_average_value_average_value89_shift_x(BITJOIN,1455)@10
    rightShiftStage0Idx3_uid1456_i_shr34_i_average_value_average_value89_shift_x_q <= i_and2_or7_op_i_average_value_vt_const_2_q & rightShiftStage0Idx3Rng3_uid1454_i_shr34_i_average_value_average_value89_shift_x_b;

    -- rightShiftStage0Idx2Rng2_uid1451_i_shr34_i_average_value_average_value89_shift_x(BITSELECT,1450)@10
    rightShiftStage0Idx2Rng2_uid1451_i_shr34_i_average_value_average_value89_shift_x_b <= rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q(63 downto 2);

    -- rightShiftStage0Idx2_uid1453_i_shr34_i_average_value_average_value89_shift_x(BITJOIN,1452)@10
    rightShiftStage0Idx2_uid1453_i_shr34_i_average_value_average_value89_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx2Rng2_uid1451_i_shr34_i_average_value_average_value89_shift_x_b;

    -- rightShiftStage0Idx1Rng1_uid1448_i_shr34_i_average_value_average_value89_shift_x(BITSELECT,1447)@10
    rightShiftStage0Idx1Rng1_uid1448_i_shr34_i_average_value_average_value89_shift_x_b <= rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q(63 downto 1);

    -- rightShiftStage0Idx1_uid1450_i_shr34_i_average_value_average_value89_shift_x(BITJOIN,1449)@10
    rightShiftStage0Idx1_uid1450_i_shr34_i_average_value_average_value89_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1448_i_shr34_i_average_value_average_value89_shift_x_b;

    -- rightShiftStage0Idx3Rng12_uid1510_i_shr_i_average_value_average_value88_shift_x(BITSELECT,1509)@10
    rightShiftStage0Idx3Rng12_uid1510_i_shr_i_average_value_average_value88_shift_x_b <= redist135_i_select1_average_value_vt_join_q_1_q(63 downto 12);

    -- rightShiftStage0Idx3_uid1512_i_shr_i_average_value_average_value88_shift_x(BITJOIN,1511)@10
    rightShiftStage0Idx3_uid1512_i_shr_i_average_value_average_value88_shift_x_q <= i_and253_i_average_value_vt_const_11_q & rightShiftStage0Idx3Rng12_uid1510_i_shr_i_average_value_average_value88_shift_x_b;

    -- rightShiftStage0Idx2Rng8_uid1507_i_shr_i_average_value_average_value88_shift_x(BITSELECT,1506)@10
    rightShiftStage0Idx2Rng8_uid1507_i_shr_i_average_value_average_value88_shift_x_b <= redist135_i_select1_average_value_vt_join_q_1_q(63 downto 8);

    -- rightShiftStage0Idx2_uid1509_i_shr_i_average_value_average_value88_shift_x(BITJOIN,1508)@10
    rightShiftStage0Idx2_uid1509_i_shr_i_average_value_average_value88_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx2Rng8_uid1507_i_shr_i_average_value_average_value88_shift_x_b;

    -- rightShiftStage0Idx1Rng4_uid1504_i_shr_i_average_value_average_value88_shift_x(BITSELECT,1503)@10
    rightShiftStage0Idx1Rng4_uid1504_i_shr_i_average_value_average_value88_shift_x_b <= redist135_i_select1_average_value_vt_join_q_1_q(63 downto 4);

    -- rightShiftStage0Idx1_uid1506_i_shr_i_average_value_average_value88_shift_x(BITJOIN,1505)@10
    rightShiftStage0Idx1_uid1506_i_shr_i_average_value_average_value88_shift_x_q <= i_and12_i16_average_value_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1504_i_shr_i_average_value_average_value88_shift_x_b;

    -- c_i64_4294967295(CONSTANT,598)
    c_i64_4294967295_q <= "0000000000000000000000000000000011111111111111111111111111111111";

    -- i_ffwd_dst_temp_0_0_0385_average_value(BLACKBOX,817)@9
    thei_ffwd_dst_temp_0_0_0385_average_value : i_ffwd_dst_temp_0_0_0385_average_value69
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist130_sync_in_in_i_valid_9_q,
        out_dest_data_out_0_0 => i_ffwd_dst_temp_0_0_0385_average_value_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_conv_i_i_i_i6_average_value(BLACKBOX,816)@9
    thei_ffwd_dst_conv_i_i_i_i6_average_value : i_ffwd_dst_conv_i_i_i_i6_average_value71
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => redist130_sync_in_in_i_valid_9_q,
        out_dest_data_out_1_0 => i_ffwd_dst_conv_i_i_i_i6_average_value_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fold_average_value(ADD,818)@9
    i_fold_average_value_a <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv_i_i_i_i6_average_value_out_dest_data_out_1_0);
    i_fold_average_value_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_temp_0_0_0385_average_value_out_dest_data_out_0_0);
    i_fold_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fold_average_value_a) + UNSIGNED(i_fold_average_value_b));
    i_fold_average_value_q <= i_fold_average_value_o(64 downto 0);

    -- bgTrunc_i_fold_average_value_sel_x(BITSELECT,5)@9
    bgTrunc_i_fold_average_value_sel_x_b <= i_fold_average_value_q(63 downto 0);

    -- i_phitmp_average_value(LOGICAL,872)@9
    i_phitmp_average_value_q <= bgTrunc_i_fold_average_value_sel_x_b and c_i64_4294967295_q;

    -- i_phitmp_average_value_vt_select_31(BITSELECT,875)@9
    i_phitmp_average_value_vt_select_31_b <= i_phitmp_average_value_q(31 downto 0);

    -- i_phitmp_average_value_vt_join(BITJOIN,874)@9
    i_phitmp_average_value_vt_join_q <= c_i32_0gr_q & i_phitmp_average_value_vt_select_31_b;

    -- i_syncbuf_n_sync_buffer2_average_value(BLACKBOX,1014)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_n_sync_buffer2_average_value : i_syncbuf_n_sync_buffer2_average_value73
    PORT MAP (
        in_buffer_in => in_N,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist130_sync_in_in_i_valid_9_q,
        out_buffer_out => i_syncbuf_n_sync_buffer2_average_value_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp37_rm1_average_value(COMPARE,774)@9
    i_cmp37_rm1_average_value_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp37_rm1_average_value_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_n_sync_buffer2_average_value_out_buffer_out(31)) & i_syncbuf_n_sync_buffer2_average_value_out_buffer_out));
    i_cmp37_rm1_average_value_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp37_rm1_average_value_a) - SIGNED(i_cmp37_rm1_average_value_b));
    i_cmp37_rm1_average_value_c(0) <= i_cmp37_rm1_average_value_o(33);

    -- i_select1_average_value(MUX,880)@9
    i_select1_average_value_s <= i_cmp37_rm1_average_value_c;
    i_select1_average_value_combproc: PROCESS (i_select1_average_value_s, dupName_2_c_i64_0gr_x_q, i_phitmp_average_value_vt_join_q)
    BEGIN
        CASE (i_select1_average_value_s) IS
            WHEN "0" => i_select1_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN "1" => i_select1_average_value_q <= i_phitmp_average_value_vt_join_q;
            WHEN OTHERS => i_select1_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_select1_average_value_vt_select_31(BITSELECT,883)@9
    i_select1_average_value_vt_select_31_b <= i_select1_average_value_q(31 downto 0);

    -- i_select1_average_value_vt_join(BITJOIN,882)@9
    i_select1_average_value_vt_join_q <= c_i32_0gr_q & i_select1_average_value_vt_select_31_b;

    -- redist135_i_select1_average_value_vt_join_q_1(DELAY,1773)
    redist135_i_select1_average_value_vt_join_q_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_select1_average_value_vt_join_q, xout => redist135_i_select1_average_value_vt_join_q_1_q, clk => clock, aclr => resetn );

    -- c_i32_12(CONSTANT,570)
    c_i32_12_q <= "00000000000000000000000000001100";

    -- i_conv1_i_i_average_value_sel_x(BITSELECT,41)@9
    i_conv1_i_i_average_value_sel_x_b <= i_select1_average_value_vt_join_q(31 downto 0);

    -- rightShiftStage0Idx1Rng1_uid1385_i_shr12_i_i_average_value_average_value76_shift_x(BITSELECT,1384)@9
    rightShiftStage0Idx1Rng1_uid1385_i_shr12_i_i_average_value_average_value76_shift_x_b <= i_conv1_i_i_average_value_sel_x_b(31 downto 1);

    -- rightShiftStage0Idx1_uid1387_i_shr12_i_i_average_value_average_value76_shift_x(BITJOIN,1386)@9
    rightShiftStage0Idx1_uid1387_i_shr12_i_i_average_value_average_value76_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1385_i_shr12_i_i_average_value_average_value76_shift_x_b;

    -- rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x(MUX,1388)@9
    rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_s <= VCC_q;
    rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_combproc: PROCESS (rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_s, i_conv1_i_i_average_value_sel_x_b, rightShiftStage0Idx1_uid1387_i_shr12_i_i_average_value_average_value76_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_q <= i_conv1_i_i_average_value_sel_x_b;
            WHEN "1" => rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_q <= rightShiftStage0Idx1_uid1387_i_shr12_i_i_average_value_average_value76_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr12_i_i_average_value_vt_select_30(BITSELECT,955)@9
    i_shr12_i_i_average_value_vt_select_30_b <= rightShiftStage0_uid1389_i_shr12_i_i_average_value_average_value76_shift_x_q(30 downto 0);

    -- i_shr12_i_i_average_value_vt_join(BITJOIN,954)@9
    i_shr12_i_i_average_value_vt_join_q <= GND_q & i_shr12_i_i_average_value_vt_select_30_b;

    -- i_or13_i_i_average_value(LOGICAL,843)@9
    i_or13_i_i_average_value_q <= i_shr12_i_i_average_value_vt_join_q or i_conv1_i_i_average_value_sel_x_b;

    -- rightShiftStage0Idx1Rng2_uid1394_i_shr14_i_i_average_value_average_value77_shift_x(BITSELECT,1393)@9
    rightShiftStage0Idx1Rng2_uid1394_i_shr14_i_i_average_value_average_value77_shift_x_b <= i_or13_i_i_average_value_q(31 downto 2);

    -- rightShiftStage0Idx1_uid1396_i_shr14_i_i_average_value_average_value77_shift_x(BITJOIN,1395)@9
    rightShiftStage0Idx1_uid1396_i_shr14_i_i_average_value_average_value77_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx1Rng2_uid1394_i_shr14_i_i_average_value_average_value77_shift_x_b;

    -- rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x(MUX,1397)@9
    rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_s <= VCC_q;
    rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_combproc: PROCESS (rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_s, i_or13_i_i_average_value_q, rightShiftStage0Idx1_uid1396_i_shr14_i_i_average_value_average_value77_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_q <= i_or13_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_q <= rightShiftStage0Idx1_uid1396_i_shr14_i_i_average_value_average_value77_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr14_i_i_average_value_vt_select_29(BITSELECT,958)@9
    i_shr14_i_i_average_value_vt_select_29_b <= rightShiftStage0_uid1398_i_shr14_i_i_average_value_average_value77_shift_x_q(29 downto 0);

    -- i_shr14_i_i_average_value_vt_join(BITJOIN,957)@9
    i_shr14_i_i_average_value_vt_join_q <= i_acl_47_i_average_value_vt_const_1_q & i_shr14_i_i_average_value_vt_select_29_b;

    -- i_or15_i_i_average_value(LOGICAL,844)@9
    i_or15_i_i_average_value_q <= i_shr14_i_i_average_value_vt_join_q or i_or13_i_i_average_value_q;

    -- rightShiftStage0Idx1Rng4_uid1403_i_shr16_i_i_average_value_average_value78_shift_x(BITSELECT,1402)@9
    rightShiftStage0Idx1Rng4_uid1403_i_shr16_i_i_average_value_average_value78_shift_x_b <= i_or15_i_i_average_value_q(31 downto 4);

    -- rightShiftStage0Idx1_uid1405_i_shr16_i_i_average_value_average_value78_shift_x(BITJOIN,1404)@9
    rightShiftStage0Idx1_uid1405_i_shr16_i_i_average_value_average_value78_shift_x_q <= i_and12_i16_average_value_vt_const_3_q & rightShiftStage0Idx1Rng4_uid1403_i_shr16_i_i_average_value_average_value78_shift_x_b;

    -- rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x(MUX,1406)@9
    rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_s <= VCC_q;
    rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_combproc: PROCESS (rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_s, i_or15_i_i_average_value_q, rightShiftStage0Idx1_uid1405_i_shr16_i_i_average_value_average_value78_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_q <= i_or15_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_q <= rightShiftStage0Idx1_uid1405_i_shr16_i_i_average_value_average_value78_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr16_i_i_average_value_vt_select_27(BITSELECT,961)@9
    i_shr16_i_i_average_value_vt_select_27_b <= rightShiftStage0_uid1407_i_shr16_i_i_average_value_average_value78_shift_x_q(27 downto 0);

    -- i_shr16_i_i_average_value_vt_join(BITJOIN,960)@9
    i_shr16_i_i_average_value_vt_join_q <= i_and12_i16_average_value_vt_const_3_q & i_shr16_i_i_average_value_vt_select_27_b;

    -- i_or17_i_i_average_value(LOGICAL,845)@9
    i_or17_i_i_average_value_q <= i_shr16_i_i_average_value_vt_join_q or i_or15_i_i_average_value_q;

    -- rightShiftStage0Idx1Rng8_uid1412_i_shr18_i_i_average_value_average_value79_shift_x(BITSELECT,1411)@9
    rightShiftStage0Idx1Rng8_uid1412_i_shr18_i_i_average_value_average_value79_shift_x_b <= i_or17_i_i_average_value_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1414_i_shr18_i_i_average_value_average_value79_shift_x(BITJOIN,1413)@9
    rightShiftStage0Idx1_uid1414_i_shr18_i_i_average_value_average_value79_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid1412_i_shr18_i_i_average_value_average_value79_shift_x_b;

    -- rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x(MUX,1415)@9
    rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_s <= VCC_q;
    rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_combproc: PROCESS (rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_s, i_or17_i_i_average_value_q, rightShiftStage0Idx1_uid1414_i_shr18_i_i_average_value_average_value79_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_q <= i_or17_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_q <= rightShiftStage0Idx1_uid1414_i_shr18_i_i_average_value_average_value79_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr18_i_i_average_value_vt_select_23(BITSELECT,964)@9
    i_shr18_i_i_average_value_vt_select_23_b <= rightShiftStage0_uid1416_i_shr18_i_i_average_value_average_value79_shift_x_q(23 downto 0);

    -- i_shr18_i_i_average_value_vt_join(BITJOIN,963)@9
    i_shr18_i_i_average_value_vt_join_q <= c_i8_0gr_q & i_shr18_i_i_average_value_vt_select_23_b;

    -- i_or19_i_i_average_value(LOGICAL,846)@9
    i_or19_i_i_average_value_q <= i_shr18_i_i_average_value_vt_join_q or i_or17_i_i_average_value_q;

    -- rightShiftStage0Idx1Rng16_uid1430_i_shr20_i_i_average_value_average_value80_shift_x(BITSELECT,1429)@9
    rightShiftStage0Idx1Rng16_uid1430_i_shr20_i_i_average_value_average_value80_shift_x_b <= i_or19_i_i_average_value_q(31 downto 16);

    -- rightShiftStage0Idx1_uid1432_i_shr20_i_i_average_value_average_value80_shift_x(BITJOIN,1431)@9
    rightShiftStage0Idx1_uid1432_i_shr20_i_i_average_value_average_value80_shift_x_q <= i_shr20_i_i_average_value_vt_const_31_q & rightShiftStage0Idx1Rng16_uid1430_i_shr20_i_i_average_value_average_value80_shift_x_b;

    -- rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x(MUX,1433)@9
    rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_s <= VCC_q;
    rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_combproc: PROCESS (rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_s, i_or19_i_i_average_value_q, rightShiftStage0Idx1_uid1432_i_shr20_i_i_average_value_average_value80_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_q <= i_or19_i_i_average_value_q;
            WHEN "1" => rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_q <= rightShiftStage0Idx1_uid1432_i_shr20_i_i_average_value_average_value80_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr20_i_i_average_value_vt_select_15(BITSELECT,970)@9
    i_shr20_i_i_average_value_vt_select_15_b <= rightShiftStage0_uid1434_i_shr20_i_i_average_value_average_value80_shift_x_q(15 downto 0);

    -- i_shr20_i_i_average_value_vt_join(BITJOIN,969)@9
    i_shr20_i_i_average_value_vt_join_q <= i_shr20_i_i_average_value_vt_const_31_q & i_shr20_i_i_average_value_vt_select_15_b;

    -- i_or21_i_i_average_value(LOGICAL,847)@9
    i_or21_i_i_average_value_q <= i_shr20_i_i_average_value_vt_join_q or i_or19_i_i_average_value_q;

    -- i_neg22_i_i_average_value(LOGICAL,832)@9
    i_neg22_i_i_average_value_q <= i_or21_i_i_average_value_q xor dupName_0_c_i32_1gr_x_q;

    -- i_llvm_ctpop_i32_unnamed_average_value6_average_value(EXTIFACE,820)@9
    i_llvm_ctpop_i32_unnamed_average_value6_average_value_data <= i_neg22_i_i_average_value_q;
    thei_llvm_ctpop_i32_unnamed_average_value6_average_value : thirtysix_six_comp
    PORT MAP (
        data => i_neg22_i_i_average_value_q,
        sum => i_llvm_ctpop_i32_unnamed_average_value6_average_value_sum
    );

    -- i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5(BITSELECT,823)@9
    i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b <= i_llvm_ctpop_i32_unnamed_average_value6_average_value_sum(5 downto 0);

    -- redist136_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1(DELAY,1774)
    redist136_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b, xout => redist136_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1_q, clk => clock, aclr => resetn );

    -- i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join(BITJOIN,822)@10
    i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q <= i_and12_i16_average_value_vt_const_31_q & redist136_i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_select_5_b_1_q;

    -- c_i32_21(CONSTANT,576)
    c_i32_21_q <= "11111111111111111111111111101011";

    -- i_sub19_i_average_value(SUB,998)@10
    i_sub19_i_average_value_a <= STD_LOGIC_VECTOR("0" & c_i32_21_q);
    i_sub19_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_sub19_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub19_i_average_value_a) - UNSIGNED(i_sub19_i_average_value_b));
    i_sub19_i_average_value_q <= i_sub19_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub19_i_average_value_sel_x(BITSELECT,7)@10
    bgTrunc_i_sub19_i_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub19_i_average_value_q(31 downto 0));

    -- i_and30_i_average_value(LOGICAL,731)@10
    i_and30_i_average_value_q <= bgTrunc_i_sub19_i_average_value_sel_x_b and c_i32_12_q;

    -- i_and30_i_average_value_vt_select_3(BITSELECT,735)@10
    i_and30_i_average_value_vt_select_3_b <= i_and30_i_average_value_q(3 downto 2);

    -- i_and30_i_average_value_vt_join(BITJOIN,734)@10
    i_and30_i_average_value_vt_join_q <= i_and13_i19_average_value_vt_const_31_q & i_and30_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_sh_prom31_i_average_value_sel_x(BITSELECT,445)@10
    i_sh_prom31_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and30_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom31_i_average_value_vt_select_3(BITSELECT,906)@10
    i_sh_prom31_i_average_value_vt_select_3_b <= i_sh_prom31_i_average_value_sel_x_b(3 downto 2);

    -- i_sh_prom31_i_average_value_vt_join(BITJOIN,905)@10
    i_sh_prom31_i_average_value_vt_join_q <= i_sh_prom14_i20_average_value_vt_const_63_q & i_sh_prom31_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_shr_i_average_value_average_value88_shift_narrow_x(BITSELECT,536)@10
    i_shr_i_average_value_average_value88_shift_narrow_x_b <= i_sh_prom31_i_average_value_vt_join_q(5 downto 0);

    -- rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x(BITSELECT,1512)@10
    rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x_in <= i_shr_i_average_value_average_value88_shift_narrow_x_b(3 downto 0);
    rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x_b <= rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x_in(3 downto 2);

    -- rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x(MUX,1513)@10
    rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_s <= rightShiftStageSel3Dto2_uid1513_i_shr_i_average_value_average_value88_shift_x_b;
    rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_combproc: PROCESS (rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_s, redist135_i_select1_average_value_vt_join_q_1_q, rightShiftStage0Idx1_uid1506_i_shr_i_average_value_average_value88_shift_x_q, rightShiftStage0Idx2_uid1509_i_shr_i_average_value_average_value88_shift_x_q, rightShiftStage0Idx3_uid1512_i_shr_i_average_value_average_value88_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q <= redist135_i_select1_average_value_vt_join_q_1_q;
            WHEN "01" => rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q <= rightShiftStage0Idx1_uid1506_i_shr_i_average_value_average_value88_shift_x_q;
            WHEN "10" => rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q <= rightShiftStage0Idx2_uid1509_i_shr_i_average_value_average_value88_shift_x_q;
            WHEN "11" => rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q <= rightShiftStage0Idx3_uid1512_i_shr_i_average_value_average_value88_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i32_3gr(CONSTANT,579)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- i_and32_i_average_value(LOGICAL,744)@10
    i_and32_i_average_value_q <= bgTrunc_i_sub19_i_average_value_sel_x_b and c_i32_3gr_q;

    -- i_and32_i_average_value_vt_select_1(BITSELECT,747)@10
    i_and32_i_average_value_vt_select_1_b <= i_and32_i_average_value_q(1 downto 0);

    -- i_and32_i_average_value_vt_join(BITJOIN,746)@10
    i_and32_i_average_value_vt_join_q <= i_and16_i22_average_value_vt_const_31_q & i_and32_i_average_value_vt_select_1_b;

    -- i_sh_prom33_i_average_value_sel_x(BITSELECT,446)@10
    i_sh_prom33_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and32_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom33_i_average_value_vt_select_1(BITSELECT,910)@10
    i_sh_prom33_i_average_value_vt_select_1_b <= i_sh_prom33_i_average_value_sel_x_b(1 downto 0);

    -- i_sh_prom33_i_average_value_vt_join(BITJOIN,909)@10
    i_sh_prom33_i_average_value_vt_join_q <= i_sh_prom17_i23_average_value_vt_const_63_q & i_sh_prom33_i_average_value_vt_select_1_b;

    -- i_shr34_i_average_value_average_value89_shift_narrow_x(BITSELECT,516)@10
    i_shr34_i_average_value_average_value89_shift_narrow_x_b <= i_sh_prom33_i_average_value_vt_join_q(5 downto 0);

    -- rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x(BITSELECT,1456)@10
    rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x_in <= i_shr34_i_average_value_average_value89_shift_narrow_x_b(1 downto 0);
    rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x_b <= rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x_in(1 downto 0);

    -- rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x(MUX,1457)@10
    rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_s <= rightShiftStageSel1Dto0_uid1457_i_shr34_i_average_value_average_value89_shift_x_b;
    rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_combproc: PROCESS (rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_s, rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q, rightShiftStage0Idx1_uid1450_i_shr34_i_average_value_average_value89_shift_x_q, rightShiftStage0Idx2_uid1453_i_shr34_i_average_value_average_value89_shift_x_q, rightShiftStage0Idx3_uid1456_i_shr34_i_average_value_average_value89_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q <= rightShiftStage0_uid1514_i_shr_i_average_value_average_value88_shift_x_q;
            WHEN "01" => rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q <= rightShiftStage0Idx1_uid1450_i_shr34_i_average_value_average_value89_shift_x_q;
            WHEN "10" => rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q <= rightShiftStage0Idx2_uid1453_i_shr34_i_average_value_average_value89_shift_x_q;
            WHEN "11" => rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q <= rightShiftStage0Idx3_uid1456_i_shr34_i_average_value_average_value89_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and36_i_average_value(LOGICAL,748)@10
    i_and36_i_average_value_q <= rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q and c_i64_1gr_q;

    -- i_and36_i_average_value_vt_select_0(BITSELECT,751)@10
    i_and36_i_average_value_vt_select_0_b <= i_and36_i_average_value_q(0 downto 0);

    -- i_and36_i_average_value_vt_join(BITJOIN,750)@10
    i_and36_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_and36_i_average_value_vt_select_0_b;

    -- i_cmp37_i_average_value(LOGICAL,773)@10 + 1
    i_cmp37_i_average_value_qi <= "1" WHEN i_and36_i_average_value_vt_join_q /= dupName_2_c_i64_0gr_x_q ELSE "0";
    i_cmp37_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp37_i_average_value_qi, xout => i_cmp37_i_average_value_q, clk => clock, aclr => resetn );

    -- i_or_cond_i_average_value(LOGICAL,864)@11
    i_or_cond_i_average_value_q <= i_cmp37_i_average_value_q or i_cmp38_i_average_value_c;

    -- i_and29_i_average_value_vt_const_15(CONSTANT,706)
    i_and29_i_average_value_vt_const_15_q <= "00000";

    -- c_i32_65535(CONSTANT,585)
    c_i32_65535_q <= "00000000000000001111111111111111";

    -- leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x(BITSELECT,1322)@10
    leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x_in <= leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x_b <= leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1324_i_shl26_i_average_value_average_value87_shift_x(BITJOIN,1323)@10
    leftShiftStage1Idx1_uid1324_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage1Idx1Rng1_uid1323_i_shl26_i_average_value_average_value87_shift_x_b & GND_q;

    -- leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x(BITSELECT,1317)
    leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x_in <= c_i32_1gr_q(17 downto 0);
    leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x_b <= leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x_in(17 downto 0);

    -- leftShiftStage0Idx7Pad14_uid1317_i_shl26_i_average_value_average_value87_shift_x(CONSTANT,1316)
    leftShiftStage0Idx7Pad14_uid1317_i_shl26_i_average_value_average_value87_shift_x_q <= "00000000000000";

    -- leftShiftStage0Idx7_uid1319_i_shl26_i_average_value_average_value87_shift_x(BITJOIN,1318)
    leftShiftStage0Idx7_uid1319_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx7Rng14_uid1318_i_shl26_i_average_value_average_value87_shift_x_b & leftShiftStage0Idx7Pad14_uid1317_i_shl26_i_average_value_average_value87_shift_x_q;

    -- leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1267)
    leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(19 downto 0);
    leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x_in(19 downto 0);

    -- leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1268)
    leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx3Rng12_uid1268_i_shl24_i_average_value_average_value86_shift_x_b & i_and253_i_average_value_vt_const_11_q;

    -- leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x(BITSELECT,1311)
    leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x_in <= c_i32_1gr_q(21 downto 0);
    leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x_b <= leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x_in(21 downto 0);

    -- i_and283_i_average_value_vt_const_63(CONSTANT,697)
    i_and283_i_average_value_vt_const_63_q <= "0000000000";

    -- leftShiftStage0Idx5_uid1313_i_shl26_i_average_value_average_value87_shift_x(BITJOIN,1312)
    leftShiftStage0Idx5_uid1313_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx5Rng10_uid1312_i_shl26_i_average_value_average_value87_shift_x_b & i_and283_i_average_value_vt_const_63_q;

    -- leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1264)
    leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(23 downto 0);
    leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x_in(23 downto 0);

    -- leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1265)
    leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx2Rng8_uid1265_i_shl24_i_average_value_average_value86_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x(BITSELECT,1305)
    leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x_in <= c_i32_1gr_q(25 downto 0);
    leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x_b <= leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x_in(25 downto 0);

    -- leftShiftStage0Idx3Pad6_uid1305_i_shl26_i_average_value_average_value87_shift_x(CONSTANT,1304)
    leftShiftStage0Idx3Pad6_uid1305_i_shl26_i_average_value_average_value87_shift_x_q <= "000000";

    -- leftShiftStage0Idx3_uid1307_i_shl26_i_average_value_average_value87_shift_x(BITJOIN,1306)
    leftShiftStage0Idx3_uid1307_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx3Rng6_uid1306_i_shl26_i_average_value_average_value87_shift_x_b & leftShiftStage0Idx3Pad6_uid1305_i_shl26_i_average_value_average_value87_shift_x_q;

    -- leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1261)
    leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(27 downto 0);
    leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x_in(27 downto 0);

    -- leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1262)
    leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx1Rng4_uid1262_i_shl24_i_average_value_average_value86_shift_x_b & i_and12_i16_average_value_vt_const_3_q;

    -- leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x(BITSELECT,1299)
    leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x_in <= c_i32_1gr_q(29 downto 0);
    leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x_b <= leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1_uid1301_i_shl26_i_average_value_average_value87_shift_x(BITJOIN,1300)
    leftShiftStage0Idx1_uid1301_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx1Rng2_uid1300_i_shl26_i_average_value_average_value87_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- c_i32_1gr(CONSTANT,573)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x(MUX,1320)@10
    leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_s <= leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_b;
    leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_combproc: PROCESS (leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_s, c_i32_1gr_q, leftShiftStage0Idx1_uid1301_i_shl26_i_average_value_average_value87_shift_x_q, leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx3_uid1307_i_shl26_i_average_value_average_value87_shift_x_q, leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx5_uid1313_i_shl26_i_average_value_average_value87_shift_x_q, leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx7_uid1319_i_shl26_i_average_value_average_value87_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= c_i32_1gr_q;
            WHEN "001" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx1_uid1301_i_shl26_i_average_value_average_value87_shift_x_q;
            WHEN "010" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "011" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx3_uid1307_i_shl26_i_average_value_average_value87_shift_x_q;
            WHEN "100" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "101" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx5_uid1313_i_shl26_i_average_value_average_value87_shift_x_q;
            WHEN "110" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "111" => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0Idx7_uid1319_i_shl26_i_average_value_average_value87_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i32_15(CONSTANT,571)
    c_i32_15_q <= "00000000000000000000000000001111";

    -- i_and20_i_average_value(LOGICAL,674)@10
    i_and20_i_average_value_q <= bgTrunc_i_sub19_i_average_value_sel_x_b and c_i32_15_q;

    -- i_and20_i_average_value_vt_select_3(BITSELECT,677)@10
    i_and20_i_average_value_vt_select_3_b <= i_and20_i_average_value_q(3 downto 0);

    -- i_and20_i_average_value_vt_join(BITJOIN,676)@10
    i_and20_i_average_value_vt_join_q <= i_and13_i19_average_value_vt_const_31_q & i_and20_i_average_value_vt_select_3_b;

    -- i_shl26_i_average_value_average_value87_shift_narrow_x(BITSELECT,472)@10
    i_shl26_i_average_value_average_value87_shift_narrow_x_b <= i_and20_i_average_value_vt_join_q(4 downto 0);

    -- leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select(BITSELECT,1634)@10
    leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_in <= i_shl26_i_average_value_average_value87_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_b <= leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_in(3 downto 1);
    leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_c <= leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_in(0 downto 0);

    -- leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x(MUX,1325)@10
    leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_s <= leftShiftStageSel3Dto1_uid1320_i_shl26_i_average_value_average_value87_shift_x_merged_bit_select_c;
    leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_combproc: PROCESS (leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_s, leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q, leftShiftStage1Idx1_uid1324_i_shl26_i_average_value_average_value87_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage0_uid1321_i_shl26_i_average_value_average_value87_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_q <= leftShiftStage1Idx1_uid1324_i_shl26_i_average_value_average_value87_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sub27_i_average_value(ADD,1000)@10
    i_sub27_i_average_value_a <= STD_LOGIC_VECTOR("0" & leftShiftStage1_uid1326_i_shl26_i_average_value_average_value87_shift_x_q);
    i_sub27_i_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_65535_q);
    i_sub27_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub27_i_average_value_a) + UNSIGNED(i_sub27_i_average_value_b));
    i_sub27_i_average_value_q <= i_sub27_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub27_i_average_value_sel_x(BITSELECT,9)@10
    bgTrunc_i_sub27_i_average_value_sel_x_b <= i_sub27_i_average_value_q(31 downto 0);

    -- i_conv28_i_average_value_sel_x(BITSELECT,43)@10
    i_conv28_i_average_value_sel_x_b <= bgTrunc_i_sub27_i_average_value_sel_x_b(15 downto 0);

    -- c_i16_2047(CONSTANT,563)
    c_i16_2047_q <= "0000011111111111";

    -- i_cond1_tr_i_average_value_sel_x(BITSELECT,39)@10
    i_cond1_tr_i_average_value_sel_x_b <= redist135_i_select1_average_value_vt_join_q_1_q(15 downto 0);

    -- i_conv22_i_average_value(LOGICAL,786)@10
    i_conv22_i_average_value_q <= i_cond1_tr_i_average_value_sel_x_b and c_i16_2047_q;

    -- i_conv22_i_average_value_vt_select_10(BITSELECT,789)@10
    i_conv22_i_average_value_vt_select_10_b <= i_conv22_i_average_value_q(10 downto 0);

    -- i_conv22_i_average_value_vt_join(BITJOIN,788)@10
    i_conv22_i_average_value_vt_join_q <= i_and29_i_average_value_vt_const_15_q & i_conv22_i_average_value_vt_select_10_b;

    -- i_and29_i_average_value(LOGICAL,705)@10
    i_and29_i_average_value_q <= i_conv22_i_average_value_vt_join_q and i_conv28_i_average_value_sel_x_b;

    -- i_and29_i_average_value_vt_select_10(BITSELECT,708)@10
    i_and29_i_average_value_vt_select_10_b <= i_and29_i_average_value_q(10 downto 0);

    -- i_and29_i_average_value_vt_join(BITJOIN,707)@10
    i_and29_i_average_value_vt_join_q <= i_and29_i_average_value_vt_const_15_q & i_and29_i_average_value_vt_select_10_b;

    -- leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1290)@10
    leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x_in <= leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q(28 downto 0);
    leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x_in(28 downto 0);

    -- leftShiftStage1Idx3_uid1292_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1291)@10
    leftShiftStage1Idx3_uid1292_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage1Idx3Rng3_uid1291_i_shl24_i_average_value_average_value86_shift_x_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1287)@10
    leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x_in <= leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q(29 downto 0);
    leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x_in(29 downto 0);

    -- leftShiftStage1Idx2_uid1289_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1288)@10
    leftShiftStage1Idx2_uid1289_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage1Idx2Rng2_uid1288_i_shl24_i_average_value_average_value86_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1284)@10
    leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x_in <= leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid1286_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1285)@10
    leftShiftStage1Idx1_uid1286_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage1Idx1Rng1_uid1285_i_shl24_i_average_value_average_value86_shift_x_b & GND_q;

    -- leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1279)
    leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(3 downto 0);
    leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x_in(3 downto 0);

    -- leftShiftStage0Idx7_uid1281_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1280)
    leftShiftStage0Idx7_uid1281_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx7Rng28_uid1280_i_shl24_i_average_value_average_value86_shift_x_b & i_and13_i19_average_value_vt_const_31_q;

    -- leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1276)
    leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(7 downto 0);
    leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x_in(7 downto 0);

    -- i_sub10_i_average_value_vt_const_31(CONSTANT,995)
    i_sub10_i_average_value_vt_const_31_q <= "000000000000000000000000";

    -- leftShiftStage0Idx6_uid1278_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1277)
    leftShiftStage0Idx6_uid1278_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx6Rng24_uid1277_i_shl24_i_average_value_average_value86_shift_x_b & i_sub10_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1273)
    leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(11 downto 0);
    leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x_in(11 downto 0);

    -- i_and265_i_average_value_vt_const_31(CONSTANT,684)
    i_and265_i_average_value_vt_const_31_q <= "00000000000000000000";

    -- leftShiftStage0Idx5_uid1275_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1274)
    leftShiftStage0Idx5_uid1275_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx5Rng20_uid1274_i_shl24_i_average_value_average_value86_shift_x_b & i_and265_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x(BITSELECT,1270)
    leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x_in <= c_i32_1gr_q(15 downto 0);
    leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x_b <= leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx4_uid1272_i_shl24_i_average_value_average_value86_shift_x(BITJOIN,1271)
    leftShiftStage0Idx4_uid1272_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx4Rng16_uid1271_i_shl24_i_average_value_average_value86_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x(MUX,1282)@10
    leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_s <= leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select_b;
    leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_combproc: PROCESS (leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_s, c_i32_1gr_q, leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx4_uid1272_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx5_uid1275_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx6_uid1278_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage0Idx7_uid1281_i_shl24_i_average_value_average_value86_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_s) IS
            WHEN "000" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= c_i32_1gr_q;
            WHEN "001" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx1_uid1263_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "010" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx2_uid1266_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "011" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx3_uid1269_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "100" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx4_uid1272_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "101" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx5_uid1275_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "110" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx6_uid1278_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "111" => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0Idx7_uid1281_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sub23_i_average_value(ADD,999)@10
    i_sub23_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_and20_i_average_value_vt_join_q);
    i_sub23_i_average_value_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_sub23_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub23_i_average_value_a) + UNSIGNED(i_sub23_i_average_value_b));
    i_sub23_i_average_value_q <= i_sub23_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub23_i_average_value_sel_x(BITSELECT,8)@10
    bgTrunc_i_sub23_i_average_value_sel_x_b <= i_sub23_i_average_value_q(31 downto 0);

    -- i_shl24_i_average_value_average_value86_shift_narrow_x(BITSELECT,468)@10
    i_shl24_i_average_value_average_value86_shift_narrow_x_b <= bgTrunc_i_sub23_i_average_value_sel_x_b(4 downto 0);

    -- leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select(BITSELECT,1633)@10
    leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select_b <= i_shl24_i_average_value_average_value86_shift_narrow_x_b(4 downto 2);
    leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select_c <= i_shl24_i_average_value_average_value86_shift_narrow_x_b(1 downto 0);

    -- leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x(MUX,1293)@10
    leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_s <= leftShiftStageSel4Dto2_uid1282_i_shl24_i_average_value_average_value86_shift_x_merged_bit_select_c;
    leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_combproc: PROCESS (leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_s, leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage1Idx1_uid1286_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage1Idx2_uid1289_i_shl24_i_average_value_average_value86_shift_x_q, leftShiftStage1Idx3_uid1292_i_shl24_i_average_value_average_value86_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_s) IS
            WHEN "00" => leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage0_uid1283_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "01" => leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage1Idx1_uid1286_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "10" => leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage1Idx2_uid1289_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN "11" => leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q <= leftShiftStage1Idx3_uid1292_i_shl24_i_average_value_average_value86_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv25_i_average_value_sel_x(BITSELECT,42)@10
    i_conv25_i_average_value_sel_x_b <= leftShiftStage1_uid1294_i_shl24_i_average_value_average_value86_shift_x_q(15 downto 0);

    -- i_cmp38_i_average_value(COMPARE,775)@10 + 1
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

    -- i_cmp35_i_average_value(LOGICAL,772)@10 + 1
    i_cmp35_i_average_value_qi <= "1" WHEN i_and29_i_average_value_vt_join_q = i_conv25_i_average_value_sel_x_b ELSE "0";
    i_cmp35_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp35_i_average_value_qi, xout => i_cmp35_i_average_value_q, clk => clock, aclr => resetn );

    -- i_acl_5_i_average_value(MUX,626)@11
    i_acl_5_i_average_value_s <= i_cmp35_i_average_value_q;
    i_acl_5_i_average_value_combproc: PROCESS (i_acl_5_i_average_value_s, i_cmp38_i_average_value_c, i_or_cond_i_average_value_q)
    BEGIN
        CASE (i_acl_5_i_average_value_s) IS
            WHEN "0" => i_acl_5_i_average_value_q <= i_cmp38_i_average_value_c;
            WHEN "1" => i_acl_5_i_average_value_q <= i_or_cond_i_average_value_q;
            WHEN OTHERS => i_acl_5_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_6_i_average_value(LOGICAL,627)@11
    i_acl_6_i_average_value_q <= i_acl_5_i_average_value_q and i_not_cmp9_i_average_value_q;

    -- i_acl_7_i_average_value_sel_x(BITSELECT,20)@11
    i_acl_7_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_acl_6_i_average_value_q(0 downto 0)), 64));

    -- i_acl_7_i_average_value_vt_select_0(BITSELECT,631)@11
    i_acl_7_i_average_value_vt_select_0_b <= i_acl_7_i_average_value_sel_x_b(0 downto 0);

    -- i_acl_7_i_average_value_vt_join(BITJOIN,630)@11
    i_acl_7_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_acl_7_i_average_value_vt_select_0_b;

    -- i_or_cond_not_i_average_value(LOGICAL,865)@11
    i_or_cond_not_i_average_value_q <= i_or_cond_i_average_value_q xor VCC_q;

    -- i_acl_8_i_average_value(LOGICAL,632)@11
    i_acl_8_i_average_value_q <= i_cmp35_i_average_value_q and i_or_cond_not_i_average_value_q;

    -- i_acl_9_i_average_value(LOGICAL,633)@11
    i_acl_9_i_average_value_q <= i_acl_8_i_average_value_q and i_not_cmp9_i_average_value_q;

    -- i_acl_10_i_average_value(MUX,608)@11
    i_acl_10_i_average_value_s <= i_acl_9_i_average_value_q;
    i_acl_10_i_average_value_combproc: PROCESS (i_acl_10_i_average_value_s, i_acl_7_i_average_value_vt_join_q, dupName_2_c_i64_0gr_x_q)
    BEGIN
        CASE (i_acl_10_i_average_value_s) IS
            WHEN "0" => i_acl_10_i_average_value_q <= i_acl_7_i_average_value_vt_join_q;
            WHEN "1" => i_acl_10_i_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN OTHERS => i_acl_10_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_10_i_average_value_vt_select_0(BITSELECT,611)@11
    i_acl_10_i_average_value_vt_select_0_b <= i_acl_10_i_average_value_q(0 downto 0);

    -- i_acl_10_i_average_value_vt_join(BITJOIN,610)@11
    i_acl_10_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_acl_10_i_average_value_vt_select_0_b;

    -- i_add_i_i2_average_value(ADD,639)@10
    i_add_i_i2_average_value_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_add_i_i2_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_32_q);
    i_add_i_i2_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_i2_average_value_a) + UNSIGNED(i_add_i_i2_average_value_b));
    i_add_i_i2_average_value_q <= i_add_i_i2_average_value_o(32 downto 0);

    -- bgTrunc_i_add_i_i2_average_value_sel_x(BITSELECT,4)@10
    bgTrunc_i_add_i_i2_average_value_sel_x_b <= i_add_i_i2_average_value_q(31 downto 0);

    -- i_add_i_i2_average_value_vt_select_6(BITSELECT,642)@10
    i_add_i_i2_average_value_vt_select_6_b <= bgTrunc_i_add_i_i2_average_value_sel_x_b(6 downto 0);

    -- i_add_i_i2_average_value_vt_join(BITJOIN,641)@10
    i_add_i_i2_average_value_vt_join_q <= i_add_i15_average_value_vt_const_31_q & i_add_i_i2_average_value_vt_select_6_b;

    -- c_i32_10(CONSTANT,567)
    c_i32_10_q <= "00000000000000000000000000001010";

    -- i_cmp9_i_average_value(COMPARE,777)@10
    i_cmp9_i_average_value_a <= STD_LOGIC_VECTOR("00" & c_i32_10_q);
    i_cmp9_i_average_value_b <= STD_LOGIC_VECTOR("00" & i_add_i_i2_average_value_vt_join_q);
    i_cmp9_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp9_i_average_value_a) - UNSIGNED(i_cmp9_i_average_value_b));
    i_cmp9_i_average_value_c(0) <= i_cmp9_i_average_value_o(33);

    -- redist139_i_cmp9_i_average_value_c_1(DELAY,1777)
    redist139_i_cmp9_i_average_value_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp9_i_average_value_c, xout => redist139_i_cmp9_i_average_value_c_1_q, clk => clock, aclr => resetn );

    -- i_acl_11_i_average_value(MUX,612)@11
    i_acl_11_i_average_value_s <= redist139_i_cmp9_i_average_value_c_1_q;
    i_acl_11_i_average_value_combproc: PROCESS (i_acl_11_i_average_value_s, i_acl_10_i_average_value_vt_join_q, dupName_2_c_i64_0gr_x_q)
    BEGIN
        CASE (i_acl_11_i_average_value_s) IS
            WHEN "0" => i_acl_11_i_average_value_q <= i_acl_10_i_average_value_vt_join_q;
            WHEN "1" => i_acl_11_i_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN OTHERS => i_acl_11_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_11_i_average_value_vt_select_0(BITSELECT,615)@11
    i_acl_11_i_average_value_vt_select_0_b <= i_acl_11_i_average_value_q(0 downto 0);

    -- i_acl_11_i_average_value_vt_join(BITJOIN,614)@11
    i_acl_11_i_average_value_vt_join_q <= i_acl_10_i_average_value_vt_const_63_q & i_acl_11_i_average_value_vt_select_0_b;

    -- leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x(BITSELECT,1192)@10
    leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x_in <= leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q(59 downto 0);
    leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x_b <= leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x_in(59 downto 0);

    -- leftShiftStage2Idx1_uid1194_i_op_i_average_value_average_value92_shift_x(BITJOIN,1193)@10
    leftShiftStage2Idx1_uid1194_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage2Idx1Rng4_uid1193_i_op_i_average_value_average_value92_shift_x_b & i_and12_i16_average_value_vt_const_3_q;

    -- leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x(BITSELECT,1187)@10
    leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x_in <= leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x_b <= leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid1189_i_op_i_average_value_average_value92_shift_x(BITJOIN,1188)@10
    leftShiftStage1Idx1_uid1189_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage1Idx1Rng16_uid1188_i_op_i_average_value_average_value92_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x(BITSELECT,1182)@10
    leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x_in <= i_unnamed_average_value82_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x_b <= leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid1184_i_op_i_average_value_average_value92_shift_x(BITJOIN,1183)@10
    leftShiftStage0Idx1_uid1184_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage0Idx1Rng32_uid1183_i_op_i_average_value_average_value92_shift_x_b & c_i32_0gr_q;

    -- i_sub5_i_average_value(SUB,1005)@10
    i_sub5_i_average_value_a <= STD_LOGIC_VECTOR("0" & c_i32_1054_q);
    i_sub5_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_sub5_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub5_i_average_value_a) - UNSIGNED(i_sub5_i_average_value_b));
    i_sub5_i_average_value_q <= i_sub5_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub5_i_average_value_sel_x(BITSELECT,11)@10
    bgTrunc_i_sub5_i_average_value_sel_x_b <= STD_LOGIC_VECTOR(i_sub5_i_average_value_q(31 downto 0));

    -- i_sub5_i_average_value_vt_select_10(BITSELECT,1008)@10
    i_sub5_i_average_value_vt_select_10_b <= bgTrunc_i_sub5_i_average_value_sel_x_b(10 downto 0);

    -- i_sub5_i_average_value_vt_join(BITJOIN,1007)@10
    i_sub5_i_average_value_vt_join_q <= i_conv_i_average_value_vt_const_31_q & i_sub5_i_average_value_vt_select_10_b;

    -- i_unnamed_average_value82_sel_x(BITSELECT,544)@10
    i_unnamed_average_value82_sel_x_b <= std_logic_vector(resize(unsigned(i_sub5_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_unnamed_average_value82_vt_select_10(BITSELECT,1046)@10
    i_unnamed_average_value82_vt_select_10_b <= i_unnamed_average_value82_sel_x_b(10 downto 0);

    -- i_unnamed_average_value82_vt_join(BITJOIN,1045)@10
    i_unnamed_average_value82_vt_join_q <= i_shr4_i_average_value_vt_const_63_q & i_unnamed_average_value82_vt_select_10_b;

    -- leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x(MUX,1185)@10
    leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_s <= VCC_q;
    leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_combproc: PROCESS (leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_s, i_unnamed_average_value82_vt_join_q, leftShiftStage0Idx1_uid1184_i_op_i_average_value_average_value92_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q <= i_unnamed_average_value82_vt_join_q;
            WHEN "1" => leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage0Idx1_uid1184_i_op_i_average_value_average_value92_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x(MUX,1190)@10
    leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_s <= VCC_q;
    leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_combproc: PROCESS (leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_s, leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q, leftShiftStage1Idx1_uid1189_i_op_i_average_value_average_value92_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage0_uid1186_i_op_i_average_value_average_value92_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage1Idx1_uid1189_i_op_i_average_value_average_value92_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x(MUX,1195)@10
    leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_s <= VCC_q;
    leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_combproc: PROCESS (leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_s, leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q, leftShiftStage2Idx1_uid1194_i_op_i_average_value_average_value92_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage1_uid1191_i_op_i_average_value_average_value92_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_q <= leftShiftStage2Idx1_uid1194_i_op_i_average_value_average_value92_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_op_i_average_value_vt_select_62(BITSELECT,842)@10
    i_op_i_average_value_vt_select_62_b <= leftShiftStage2_uid1196_i_op_i_average_value_average_value92_shift_x_q(62 downto 52);

    -- i_op_i_average_value_vt_join(BITJOIN,841)@10
    i_op_i_average_value_vt_join_q <= GND_q & i_op_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- c_i32_64(CONSTANT,584)
    c_i32_64_q <= "00000000000000000000000001000000";

    -- i_cmp2_i_average_value(LOGICAL,771)@10
    i_cmp2_i_average_value_q <= "1" WHEN i_add_i_i2_average_value_vt_join_q = c_i32_64_q ELSE "0";

    -- i_shl42_i_average_value(MUX,931)@10
    i_shl42_i_average_value_s <= i_cmp2_i_average_value_q;
    i_shl42_i_average_value_combproc: PROCESS (i_shl42_i_average_value_s, i_op_i_average_value_vt_join_q, dupName_2_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl42_i_average_value_s) IS
            WHEN "0" => i_shl42_i_average_value_q <= i_op_i_average_value_vt_join_q;
            WHEN "1" => i_shl42_i_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl42_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl42_i_average_value_vt_select_62(BITSELECT,935)@10
    i_shl42_i_average_value_vt_select_62_b <= i_shl42_i_average_value_q(62 downto 52);

    -- i_shl42_i_average_value_vt_join(BITJOIN,934)@10
    i_shl42_i_average_value_vt_join_q <= GND_q & i_shl42_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x(BITSELECT,1252)@10
    leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x_in <= leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q(60 downto 0);
    leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x_b <= leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x_in(60 downto 0);

    -- leftShiftStage0Idx3_uid1254_i_shl18_i_average_value_average_value85_shift_x(BITJOIN,1253)@10
    leftShiftStage0Idx3_uid1254_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0Idx3Rng3_uid1253_i_shl18_i_average_value_average_value85_shift_x_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x(BITSELECT,1249)@10
    leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x_in <= leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q(61 downto 0);
    leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x_b <= leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx2_uid1251_i_shl18_i_average_value_average_value85_shift_x(BITJOIN,1250)@10
    leftShiftStage0Idx2_uid1251_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0Idx2Rng2_uid1250_i_shl18_i_average_value_average_value85_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x(BITSELECT,1246)@10
    leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x_in <= leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q(62 downto 0);
    leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x_b <= leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x_in(62 downto 0);

    -- leftShiftStage0Idx1_uid1248_i_shl18_i_average_value_average_value85_shift_x(BITJOIN,1247)@10
    leftShiftStage0Idx1_uid1248_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0Idx1Rng1_uid1247_i_shl18_i_average_value_average_value85_shift_x_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x(BITSELECT,1222)@10
    leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x_in <= leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q(51 downto 0);
    leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x_b <= leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x_in(51 downto 0);

    -- leftShiftStage0Idx3_uid1224_i_shl15_i_average_value_average_value84_shift_x(BITJOIN,1223)@10
    leftShiftStage0Idx3_uid1224_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0Idx3Rng12_uid1223_i_shl15_i_average_value_average_value84_shift_x_b & i_and253_i_average_value_vt_const_11_q;

    -- leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x(BITSELECT,1219)@10
    leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x_in <= leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q(55 downto 0);
    leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x_b <= leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x_in(55 downto 0);

    -- leftShiftStage0Idx2_uid1221_i_shl15_i_average_value_average_value84_shift_x(BITJOIN,1220)@10
    leftShiftStage0Idx2_uid1221_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0Idx2Rng8_uid1220_i_shl15_i_average_value_average_value84_shift_x_b & c_i8_0gr_q;

    -- leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x(BITSELECT,1216)@10
    leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x_in <= leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q(59 downto 0);
    leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x_b <= leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x_in(59 downto 0);

    -- leftShiftStage0Idx1_uid1218_i_shl15_i_average_value_average_value84_shift_x(BITJOIN,1217)@10
    leftShiftStage0Idx1_uid1218_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0Idx1Rng4_uid1217_i_shl15_i_average_value_average_value84_shift_x_b & i_and12_i16_average_value_vt_const_3_q;

    -- leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x(BITSELECT,1376)@10
    leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x_in <= redist135_i_select1_average_value_vt_join_q_1_q(15 downto 0);
    leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x_b <= leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx3_uid1378_i_shl_i_average_value_average_value83_shift_x(BITJOIN,1377)@10
    leftShiftStage0Idx3_uid1378_i_shl_i_average_value_average_value83_shift_x_q <= leftShiftStage0Idx3Rng48_uid1377_i_shl_i_average_value_average_value83_shift_x_b & leftShiftStage0Idx3Pad48_uid1337_i_shl_i18_average_value_average_value126_shift_x_q;

    -- leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x(BITSELECT,1373)@10
    leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x_in <= redist135_i_select1_average_value_vt_join_q_1_q(31 downto 0);
    leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x_b <= leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx2_uid1375_i_shl_i_average_value_average_value83_shift_x(BITJOIN,1374)@10
    leftShiftStage0Idx2_uid1375_i_shl_i_average_value_average_value83_shift_x_q <= leftShiftStage0Idx2Rng32_uid1374_i_shl_i_average_value_average_value83_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x(BITSELECT,1370)@10
    leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x_in <= redist135_i_select1_average_value_vt_join_q_1_q(47 downto 0);
    leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x_b <= leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x_in(47 downto 0);

    -- leftShiftStage0Idx1_uid1372_i_shl_i_average_value_average_value83_shift_x(BITJOIN,1371)@10
    leftShiftStage0Idx1_uid1372_i_shl_i_average_value_average_value83_shift_x_q <= leftShiftStage0Idx1Rng16_uid1371_i_shl_i_average_value_average_value83_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- c_i32_85(CONSTANT,588)
    c_i32_85_q <= "00000000000000000000000001010101";

    -- i_sub10_i_average_value(ADD,994)@10
    i_sub10_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_llvm_ctpop_i32_unnamed_average_value6_average_value_vt_join_q);
    i_sub10_i_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_85_q);
    i_sub10_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub10_i_average_value_a) + UNSIGNED(i_sub10_i_average_value_b));
    i_sub10_i_average_value_q <= i_sub10_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub10_i_average_value_sel_x(BITSELECT,6)@10
    bgTrunc_i_sub10_i_average_value_sel_x_b <= i_sub10_i_average_value_q(31 downto 0);

    -- i_sub10_i_average_value_vt_select_7(BITSELECT,997)@10
    i_sub10_i_average_value_vt_select_7_b <= bgTrunc_i_sub10_i_average_value_sel_x_b(7 downto 0);

    -- i_sub10_i_average_value_vt_join(BITJOIN,996)@10
    i_sub10_i_average_value_vt_join_q <= i_sub10_i_average_value_vt_const_31_q & i_sub10_i_average_value_vt_select_7_b;

    -- i_and12_i_average_value_BitSelect_for_a_merged_bit_select(BITSELECT,1637)@10
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in <= i_sub10_i_average_value_vt_join_q(5 downto 0);
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_b <= i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in(5 downto 4);
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_c <= i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in(3 downto 2);
    i_and12_i_average_value_BitSelect_for_a_merged_bit_select_d <= i_and12_i_average_value_BitSelect_for_a_merged_bit_select_in(1 downto 0);

    -- i_and12_i_average_value_join(BITJOIN,1564)@10
    i_and12_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_average_value_BitSelect_for_a_merged_bit_select_b & GND_q & GND_q & GND_q & GND_q;

    -- i_and12_i_average_value_vt_select_5(BITSELECT,652)@10
    i_and12_i_average_value_vt_select_5_b <= i_and12_i_average_value_join_q(5 downto 4);

    -- i_and12_i_average_value_vt_join(BITJOIN,651)@10
    i_and12_i_average_value_vt_join_q <= i_and12_i16_average_value_vt_const_31_q & i_and12_i_average_value_vt_select_5_b & i_and12_i16_average_value_vt_const_3_q;

    -- i_sh_prom_i_average_value_sel_x(BITSELECT,448)@10
    i_sh_prom_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and12_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom_i_average_value_vt_select_5(BITSELECT,920)@10
    i_sh_prom_i_average_value_vt_select_5_b <= i_sh_prom_i_average_value_sel_x_b(5 downto 4);

    -- i_sh_prom_i_average_value_vt_join(BITJOIN,919)@10
    i_sh_prom_i_average_value_vt_join_q <= i_sh_prom_i17_average_value_vt_const_63_q & i_sh_prom_i_average_value_vt_select_5_b & i_and12_i16_average_value_vt_const_3_q;

    -- i_shl_i_average_value_average_value83_shift_narrow_x(BITSELECT,484)@10
    i_shl_i_average_value_average_value83_shift_narrow_x_b <= i_sh_prom_i_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel5Dto4_uid1379_i_shl_i_average_value_average_value83_shift_x(BITSELECT,1378)@10
    leftShiftStageSel5Dto4_uid1379_i_shl_i_average_value_average_value83_shift_x_b <= i_shl_i_average_value_average_value83_shift_narrow_x_b(5 downto 4);

    -- leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x(MUX,1379)@10
    leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_s <= leftShiftStageSel5Dto4_uid1379_i_shl_i_average_value_average_value83_shift_x_b;
    leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_combproc: PROCESS (leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_s, redist135_i_select1_average_value_vt_join_q_1_q, leftShiftStage0Idx1_uid1372_i_shl_i_average_value_average_value83_shift_x_q, leftShiftStage0Idx2_uid1375_i_shl_i_average_value_average_value83_shift_x_q, leftShiftStage0Idx3_uid1378_i_shl_i_average_value_average_value83_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q <= redist135_i_select1_average_value_vt_join_q_1_q;
            WHEN "01" => leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q <= leftShiftStage0Idx1_uid1372_i_shl_i_average_value_average_value83_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q <= leftShiftStage0Idx2_uid1375_i_shl_i_average_value_average_value83_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q <= leftShiftStage0Idx3_uid1378_i_shl_i_average_value_average_value83_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and13_i_average_value_join(BITJOIN,1568)@10
    i_and13_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_average_value_BitSelect_for_a_merged_bit_select_c & GND_q & GND_q;

    -- i_and13_i_average_value_vt_select_3(BITSELECT,662)@10
    i_and13_i_average_value_vt_select_3_b <= i_and13_i_average_value_join_q(3 downto 2);

    -- i_and13_i_average_value_vt_join(BITJOIN,661)@10
    i_and13_i_average_value_vt_join_q <= i_and13_i19_average_value_vt_const_31_q & i_and13_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_sh_prom14_i_average_value_sel_x(BITSELECT,442)@10
    i_sh_prom14_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and13_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom14_i_average_value_vt_select_3(BITSELECT,893)@10
    i_sh_prom14_i_average_value_vt_select_3_b <= i_sh_prom14_i_average_value_sel_x_b(3 downto 2);

    -- i_sh_prom14_i_average_value_vt_join(BITJOIN,892)@10
    i_sh_prom14_i_average_value_vt_join_q <= i_sh_prom14_i20_average_value_vt_const_63_q & i_sh_prom14_i_average_value_vt_select_3_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_shl15_i_average_value_average_value84_shift_narrow_x(BITSELECT,456)@10
    i_shl15_i_average_value_average_value84_shift_narrow_x_b <= i_sh_prom14_i_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x(BITSELECT,1224)@10
    leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x_in <= i_shl15_i_average_value_average_value84_shift_narrow_x_b(3 downto 0);
    leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x_b <= leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x_in(3 downto 2);

    -- leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x(MUX,1225)@10
    leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_s <= leftShiftStageSel3Dto2_uid1225_i_shl15_i_average_value_average_value84_shift_x_b;
    leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_combproc: PROCESS (leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_s, leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q, leftShiftStage0Idx1_uid1218_i_shl15_i_average_value_average_value84_shift_x_q, leftShiftStage0Idx2_uid1221_i_shl15_i_average_value_average_value84_shift_x_q, leftShiftStage0Idx3_uid1224_i_shl15_i_average_value_average_value84_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0_uid1380_i_shl_i_average_value_average_value83_shift_x_q;
            WHEN "01" => leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0Idx1_uid1218_i_shl15_i_average_value_average_value84_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0Idx2_uid1221_i_shl15_i_average_value_average_value84_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q <= leftShiftStage0Idx3_uid1224_i_shl15_i_average_value_average_value84_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and16_i_average_value_join(BITJOIN,1572)@10
    i_and16_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and12_i_average_value_BitSelect_for_a_merged_bit_select_d;

    -- i_and16_i_average_value_vt_select_1(BITSELECT,670)@10
    i_and16_i_average_value_vt_select_1_b <= i_and16_i_average_value_join_q(1 downto 0);

    -- i_and16_i_average_value_vt_join(BITJOIN,669)@10
    i_and16_i_average_value_vt_join_q <= i_and16_i22_average_value_vt_const_31_q & i_and16_i_average_value_vt_select_1_b;

    -- i_sh_prom17_i_average_value_sel_x(BITSELECT,444)@10
    i_sh_prom17_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and16_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_sh_prom17_i_average_value_vt_select_1(BITSELECT,901)@10
    i_sh_prom17_i_average_value_vt_select_1_b <= i_sh_prom17_i_average_value_sel_x_b(1 downto 0);

    -- i_sh_prom17_i_average_value_vt_join(BITJOIN,900)@10
    i_sh_prom17_i_average_value_vt_join_q <= i_sh_prom17_i23_average_value_vt_const_63_q & i_sh_prom17_i_average_value_vt_select_1_b;

    -- i_shl18_i_average_value_average_value85_shift_narrow_x(BITSELECT,464)@10
    i_shl18_i_average_value_average_value85_shift_narrow_x_b <= i_sh_prom17_i_average_value_vt_join_q(5 downto 0);

    -- leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x(BITSELECT,1254)@10
    leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x_in <= i_shl18_i_average_value_average_value85_shift_narrow_x_b(1 downto 0);
    leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x_b <= leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x_in(1 downto 0);

    -- leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x(MUX,1255)@10
    leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_s <= leftShiftStageSel1Dto0_uid1255_i_shl18_i_average_value_average_value85_shift_x_b;
    leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_combproc: PROCESS (leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_s, leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q, leftShiftStage0Idx1_uid1248_i_shl18_i_average_value_average_value85_shift_x_q, leftShiftStage0Idx2_uid1251_i_shl18_i_average_value_average_value85_shift_x_q, leftShiftStage0Idx3_uid1254_i_shl18_i_average_value_average_value85_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0_uid1226_i_shl15_i_average_value_average_value84_shift_x_q;
            WHEN "01" => leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0Idx1_uid1248_i_shl18_i_average_value_average_value85_shift_x_q;
            WHEN "10" => leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0Idx2_uid1251_i_shl18_i_average_value_average_value85_shift_x_q;
            WHEN "11" => leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q <= leftShiftStage0Idx3_uid1254_i_shl18_i_average_value_average_value85_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_i_average_value(MUX,819)@10
    i_i_average_value_s <= i_cmp9_i_average_value_c;
    i_i_average_value_combproc: PROCESS (i_i_average_value_s, rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q, leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q)
    BEGIN
        CASE (i_i_average_value_s) IS
            WHEN "0" => i_i_average_value_q <= rightShiftStage0_uid1458_i_shr34_i_average_value_average_value89_shift_x_q;
            WHEN "1" => i_i_average_value_q <= leftShiftStage0_uid1256_i_shl18_i_average_value_average_value85_shift_x_q;
            WHEN OTHERS => i_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_or44_bitvec_i_average_value_average_value93_or44_vec_2_i_join_x(BITJOIN,439)@10
    i_or44_bitvec_i_average_value_average_value93_or44_vec_2_i_join_x_q <= redist135_i_select1_average_value_vt_join_q_1_q & i_shl42_i_average_value_vt_join_q & i_i_average_value_q;

    -- i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select(BITSELECT,1632)@10
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in <= i_or44_bitvec_i_average_value_average_value93_or44_vec_2_i_join_x_q(126 downto 0);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(0 downto 0);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(1 downto 1);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(10 downto 10);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(11 downto 11);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(116 downto 116);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(117 downto 117);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(118 downto 118);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(119 downto 119);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(12 downto 12);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(120 downto 120);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(121 downto 121);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(122 downto 122);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(123 downto 123);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(124 downto 124);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(125 downto 125);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(126 downto 126);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(13 downto 13);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(14 downto 14);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(15 downto 15);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(16 downto 16);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(17 downto 17);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(18 downto 18);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(19 downto 19);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(2 downto 2);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(20 downto 20);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(21 downto 21);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(22 downto 22);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(23 downto 23);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(24 downto 24);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(25 downto 25);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(26 downto 26);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(27 downto 27);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(28 downto 28);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(29 downto 29);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(3 downto 3);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(30 downto 30);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(31 downto 31);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(32 downto 32);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(33 downto 33);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(34 downto 34);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(35 downto 35);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(36 downto 36);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(37 downto 37);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(38 downto 38);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(39 downto 39);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(4 downto 4);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(40 downto 40);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(41 downto 41);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(42 downto 42);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(43 downto 43);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(44 downto 44);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(45 downto 45);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(46 downto 46);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(47 downto 47);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(48 downto 48);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(49 downto 49);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(5 downto 5);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(50 downto 50);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(51 downto 51);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(6 downto 6);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(7 downto 7);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(8 downto 8);
    i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62 <= i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_in(9 downto 9);

    -- redist15_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q_1(DELAY,1653)
    redist15_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q, xout => redist15_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q, clk => clock, aclr => resetn );

    -- redist14_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p_1(DELAY,1652)
    redist14_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p, xout => redist14_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q, clk => clock, aclr => resetn );

    -- redist13_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o_1(DELAY,1651)
    redist13_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o, xout => redist13_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q, clk => clock, aclr => resetn );

    -- redist12_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n_1(DELAY,1650)
    redist12_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n, xout => redist12_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q, clk => clock, aclr => resetn );

    -- redist11_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m_1(DELAY,1649)
    redist11_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m, xout => redist11_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q, clk => clock, aclr => resetn );

    -- redist10_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l_1(DELAY,1648)
    redist10_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l, xout => redist10_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q, clk => clock, aclr => resetn );

    -- redist9_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k_1(DELAY,1647)
    redist9_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k, xout => redist9_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q, clk => clock, aclr => resetn );

    -- redist7_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i_1(DELAY,1645)
    redist7_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i, xout => redist7_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q, clk => clock, aclr => resetn );

    -- redist6_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h_1(DELAY,1644)
    redist6_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h, xout => redist6_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q, clk => clock, aclr => resetn );

    -- redist5_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g_1(DELAY,1643)
    redist5_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g, xout => redist5_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q, clk => clock, aclr => resetn );

    -- redist4_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f_1(DELAY,1642)
    redist4_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f, xout => redist4_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q, clk => clock, aclr => resetn );

    -- redist58_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8_1(DELAY,1696)
    redist58_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8, xout => redist58_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q, clk => clock, aclr => resetn );

    -- redist57_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7_1(DELAY,1695)
    redist57_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7, xout => redist57_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q, clk => clock, aclr => resetn );

    -- redist55_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5_1(DELAY,1693)
    redist55_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5, xout => redist55_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q, clk => clock, aclr => resetn );

    -- redist54_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4_1(DELAY,1692)
    redist54_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4, xout => redist54_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q, clk => clock, aclr => resetn );

    -- redist53_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3_1(DELAY,1691)
    redist53_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3, xout => redist53_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q, clk => clock, aclr => resetn );

    -- redist52_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2_1(DELAY,1690)
    redist52_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2, xout => redist52_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q, clk => clock, aclr => resetn );

    -- redist51_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1_1(DELAY,1689)
    redist51_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1, xout => redist51_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q, clk => clock, aclr => resetn );

    -- redist50_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz_1(DELAY,1688)
    redist50_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz, xout => redist50_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q, clk => clock, aclr => resetn );

    -- redist49_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy_1(DELAY,1687)
    redist49_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy, xout => redist49_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q, clk => clock, aclr => resetn );

    -- redist48_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx_1(DELAY,1686)
    redist48_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx, xout => redist48_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q, clk => clock, aclr => resetn );

    -- redist47_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww_1(DELAY,1685)
    redist47_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww, xout => redist47_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q, clk => clock, aclr => resetn );

    -- redist46_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv_1(DELAY,1684)
    redist46_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv, xout => redist46_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q, clk => clock, aclr => resetn );

    -- redist44_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt_1(DELAY,1682)
    redist44_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt, xout => redist44_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q, clk => clock, aclr => resetn );

    -- redist43_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss_1(DELAY,1681)
    redist43_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss, xout => redist43_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q, clk => clock, aclr => resetn );

    -- redist42_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr_1(DELAY,1680)
    redist42_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr, xout => redist42_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q, clk => clock, aclr => resetn );

    -- redist41_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq_1(DELAY,1679)
    redist41_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq, xout => redist41_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q, clk => clock, aclr => resetn );

    -- redist40_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp_1(DELAY,1678)
    redist40_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp, xout => redist40_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q, clk => clock, aclr => resetn );

    -- redist39_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo_1(DELAY,1677)
    redist39_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo, xout => redist39_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q, clk => clock, aclr => resetn );

    -- redist38_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn_1(DELAY,1676)
    redist38_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn, xout => redist38_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q, clk => clock, aclr => resetn );

    -- redist37_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm_1(DELAY,1675)
    redist37_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm, xout => redist37_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q, clk => clock, aclr => resetn );

    -- redist36_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll_1(DELAY,1674)
    redist36_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll, xout => redist36_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q, clk => clock, aclr => resetn );

    -- redist35_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk_1(DELAY,1673)
    redist35_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk, xout => redist35_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q, clk => clock, aclr => resetn );

    -- redist33_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii_1(DELAY,1671)
    redist33_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii, xout => redist33_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q, clk => clock, aclr => resetn );

    -- redist32_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh_1(DELAY,1670)
    redist32_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh, xout => redist32_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q, clk => clock, aclr => resetn );

    -- redist31_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg_1(DELAY,1669)
    redist31_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg, xout => redist31_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q, clk => clock, aclr => resetn );

    -- redist30_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff_1(DELAY,1668)
    redist30_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff, xout => redist30_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q, clk => clock, aclr => resetn );

    -- redist29_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee_1(DELAY,1667)
    redist29_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee, xout => redist29_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q, clk => clock, aclr => resetn );

    -- redist28_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd_1(DELAY,1666)
    redist28_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd, xout => redist28_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q, clk => clock, aclr => resetn );

    -- redist27_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc_1(DELAY,1665)
    redist27_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc, xout => redist27_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q, clk => clock, aclr => resetn );

    -- redist26_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb_1(DELAY,1664)
    redist26_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb, xout => redist26_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q, clk => clock, aclr => resetn );

    -- redist25_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa_1(DELAY,1663)
    redist25_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa, xout => redist25_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q, clk => clock, aclr => resetn );

    -- redist24_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z_1(DELAY,1662)
    redist24_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z, xout => redist24_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q, clk => clock, aclr => resetn );

    -- redist22_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x_1(DELAY,1660)
    redist22_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x, xout => redist22_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q, clk => clock, aclr => resetn );

    -- redist21_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w_1(DELAY,1659)
    redist21_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w, xout => redist21_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q, clk => clock, aclr => resetn );

    -- redist20_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v_1(DELAY,1658)
    redist20_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v, xout => redist20_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q, clk => clock, aclr => resetn );

    -- redist19_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u_1(DELAY,1657)
    redist19_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u, xout => redist19_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q, clk => clock, aclr => resetn );

    -- redist18_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t_1(DELAY,1656)
    redist18_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t, xout => redist18_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q, clk => clock, aclr => resetn );

    -- redist17_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s_1(DELAY,1655)
    redist17_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s, xout => redist17_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q, clk => clock, aclr => resetn );

    -- redist16_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r_1(DELAY,1654)
    redist16_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r, xout => redist16_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q, clk => clock, aclr => resetn );

    -- redist8_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j_1(DELAY,1646)
    redist8_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j, xout => redist8_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q, clk => clock, aclr => resetn );

    -- redist3_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e_1(DELAY,1641)
    redist3_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e, xout => redist3_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q, clk => clock, aclr => resetn );

    -- redist2_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d_1(DELAY,1640)
    redist2_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d, xout => redist2_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q, clk => clock, aclr => resetn );

    -- redist62_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62_1(DELAY,1700)
    redist62_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62, xout => redist62_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q, clk => clock, aclr => resetn );

    -- redist61_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61_1(DELAY,1699)
    redist61_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61, xout => redist61_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q, clk => clock, aclr => resetn );

    -- redist60_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0_1(DELAY,1698)
    redist60_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0, xout => redist60_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q, clk => clock, aclr => resetn );

    -- redist59_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9_1(DELAY,1697)
    redist59_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9, xout => redist59_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q, clk => clock, aclr => resetn );

    -- redist56_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6_1(DELAY,1694)
    redist56_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6, xout => redist56_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q, clk => clock, aclr => resetn );

    -- redist45_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu_1(DELAY,1683)
    redist45_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu, xout => redist45_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q, clk => clock, aclr => resetn );

    -- redist34_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj_1(DELAY,1672)
    redist34_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj, xout => redist34_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q, clk => clock, aclr => resetn );

    -- redist23_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y_1(DELAY,1661)
    redist23_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y, xout => redist23_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q, clk => clock, aclr => resetn );

    -- redist1_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c_1(DELAY,1639)
    redist1_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c, xout => redist1_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- redist0_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b_1(DELAY,1638)
    redist0_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b, xout => redist0_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- i_or44_compressed_i_average_value_average_value94_or44_shuffle_i_m_join_x(BITJOIN,440)@11
    i_or44_compressed_i_average_value_average_value94_or44_shuffle_i_m_join_x_q <= GND_q & redist15_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_q_1_q & redist14_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_p_1_q & redist13_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o_1_q & redist12_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_n_1_q & redist11_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_m_1_q & redist10_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_l_1_q & redist9_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_k_1_q & redist7_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_i_1_q & redist6_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_h_1_q & redist5_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_g_1_q & redist4_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_f_1_q & redist58_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_8_1_q & redist57_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_7_1_q & redist55_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_5_1_q & redist54_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_4_1_q & redist53_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_3_1_q & redist52_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_2_1_q & redist51_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_1_1_q & redist50_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_zz_1_q & redist49_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_yy_1_q & redist48_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_xx_1_q & redist47_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ww_1_q & redist46_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_vv_1_q & redist44_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_tt_1_q & redist43_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ss_1_q & redist42_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_rr_1_q & redist41_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_qq_1_q & redist40_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_pp_1_q & redist39_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_oo_1_q & redist38_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_nn_1_q & redist37_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_mm_1_q & redist36_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ll_1_q & redist35_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_kk_1_q & redist33_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ii_1_q & redist32_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_hh_1_q & redist31_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_gg_1_q & redist30_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ff_1_q & redist29_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_ee_1_q & redist28_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_dd_1_q & redist27_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_cc_1_q & redist26_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_bb_1_q & redist25_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_aa_1_q & redist24_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_z_1_q & redist22_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_x_1_q & redist21_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_w_1_q & redist20_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_v_1_q & redist19_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_u_1_q & redist18_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_t_1_q & redist17_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_s_1_q & redist16_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_r_1_q & redist8_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_j_1_q & redist3_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_e_1_q & redist2_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_d_1_q & redist62_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o62_1_q & redist61_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_o61_1_q & redist60_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_0_1_q & redist59_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_9_1_q & redist56_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_6_1_q & redist45_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_uu_1_q & redist34_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_jj_1_q & redist23_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_y_1_q & redist1_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_c_1_q & redist0_i_or44_bitvec_i_average_value_average_value93_or44_bitvec_i_select_0_x_merged_bit_select_b_1_q;

    -- i_or44_compressed_i_average_value_vt_select_62(BITSELECT,855)@11
    i_or44_compressed_i_average_value_vt_select_62_b <= i_or44_compressed_i_average_value_average_value94_or44_shuffle_i_m_join_x_q(62 downto 0);

    -- i_or44_compressed_i_average_value_vt_join(BITJOIN,854)@11
    i_or44_compressed_i_average_value_vt_join_q <= GND_q & i_or44_compressed_i_average_value_vt_select_62_b;

    -- i_add_i_average_value(ADD,638)@11
    i_add_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_or44_compressed_i_average_value_vt_join_q);
    i_add_i_average_value_b <= STD_LOGIC_VECTOR("0" & i_acl_11_i_average_value_vt_join_q);
    i_add_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_i_average_value_a) + UNSIGNED(i_add_i_average_value_b));
    i_add_i_average_value_q <= i_add_i_average_value_o(64 downto 0);

    -- bgTrunc_i_add_i_average_value_sel_x(BITSELECT,3)@11
    bgTrunc_i_add_i_average_value_sel_x_b <= i_add_i_average_value_q(63 downto 0);

    -- rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x(MUX,1147)@11
    rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_s <= VCC_q;
    rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_combproc: PROCESS (rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_s, bgTrunc_i_add_i_average_value_sel_x_b, rightShiftStage0Idx1_uid1146_i_and3_i53_average_value_average_value95_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q <= bgTrunc_i_add_i_average_value_sel_x_b;
            WHEN "1" => rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q <= rightShiftStage0Idx1_uid1146_i_and3_i53_average_value_average_value95_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x(MUX,1152)@11
    rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_s <= VCC_q;
    rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_combproc: PROCESS (rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_s, rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q, rightShiftStage1Idx1_uid1151_i_and3_i53_average_value_average_value95_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q <= rightShiftStage0_uid1148_i_and3_i53_average_value_average_value95_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q <= rightShiftStage1Idx1_uid1151_i_and3_i53_average_value_average_value95_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x(MUX,1541)@11
    rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_s <= VCC_q;
    rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_combproc: PROCESS (rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_s, rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q, rightShiftStage2Idx1_uid1540_i_unnamed_average_value99_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q <= rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q <= rightShiftStage2Idx1_uid1540_i_unnamed_average_value99_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x(MUX,1546)@11
    rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_s <= VCC_q;
    rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_combproc: PROCESS (rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_s, rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q, rightShiftStage3Idx1_uid1545_i_unnamed_average_value99_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_q <= rightShiftStage2_uid1542_i_unnamed_average_value99_shift_x_q;
            WHEN "1" => rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_q <= rightShiftStage3Idx1_uid1545_i_unnamed_average_value99_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_average_value98_vt_select_12(BITSELECT,1049)@11
    i_unnamed_average_value98_vt_select_12_b <= rightShiftStage3_uid1547_i_unnamed_average_value99_shift_x_q(12 downto 0);

    -- i_unnamed_average_value98_vt_join(BITJOIN,1048)@11
    i_unnamed_average_value98_vt_join_q <= i_conv353_i_average_value_vt_const_63_q & i_unnamed_average_value98_vt_select_12_b;

    -- i_and313_tr_i_average_value_sel_x(BITSELECT,34)@11
    i_and313_tr_i_average_value_sel_x_b <= i_unnamed_average_value98_vt_join_q(31 downto 0);

    -- i_and313_tr_i_average_value_vt_select_12(BITSELECT,739)@11
    i_and313_tr_i_average_value_vt_select_12_b <= i_and313_tr_i_average_value_sel_x_b(12 downto 0);

    -- i_and313_tr_i_average_value_vt_join(BITJOIN,738)@11
    i_and313_tr_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_and313_tr_i_average_value_vt_select_12_b;

    -- i_shl_i50_average_value_BitSelect_for_a(BITSELECT,1618)@11
    i_shl_i50_average_value_BitSelect_for_a_b <= i_and313_tr_i_average_value_vt_join_q(12 downto 12);

    -- i_shl_i50_average_value_join(BITJOIN,1619)@11
    i_shl_i50_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_shl_i50_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_shl_i50_average_value_vt_select_12(BITSELECT,947)@11
    i_shl_i50_average_value_vt_select_12_b <= i_shl_i50_average_value_join_q(12 downto 12);

    -- i_shl_i50_average_value_vt_join(BITJOIN,946)@11
    i_shl_i50_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_shl_i50_average_value_vt_select_12_b & i_and253_i_average_value_vt_const_11_q;

    -- i_or352_i_average_value_BitSelect_for_b(BITSELECT,1604)@11
    i_or352_i_average_value_BitSelect_for_b_b <= i_shl_i50_average_value_vt_join_q(12 downto 12);

    -- redist127_i_or352_i_average_value_BitSelect_for_b_b_1(DELAY,1765)
    redist127_i_or352_i_average_value_BitSelect_for_b_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or352_i_average_value_BitSelect_for_b_b, xout => redist127_i_or352_i_average_value_BitSelect_for_b_b_1_q, clk => clock, aclr => resetn );

    -- i_sub30_i_average_value_vt_const_31(CONSTANT,1002)
    i_sub30_i_average_value_vt_const_31_q <= "000000000000000000";

    -- c_i32_8176(CONSTANT,586)
    c_i32_8176_q <= "00000000000000000001111111110000";

    -- rightShiftStage2Idx1Rng4_uid1154_i_and3_i53_average_value_average_value95_shift_x(BITSELECT,1153)@11
    rightShiftStage2Idx1Rng4_uid1154_i_and3_i53_average_value_average_value95_shift_x_b <= rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q(63 downto 4);

    -- rightShiftStage2Idx1_uid1156_i_and3_i53_average_value_average_value95_shift_x(BITJOIN,1155)@11
    rightShiftStage2Idx1_uid1156_i_and3_i53_average_value_average_value95_shift_x_q <= i_and12_i16_average_value_vt_const_3_q & rightShiftStage2Idx1Rng4_uid1154_i_and3_i53_average_value_average_value95_shift_x_b;

    -- rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x(MUX,1157)@11
    rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_s <= VCC_q;
    rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_combproc: PROCESS (rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_s, rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q, rightShiftStage2Idx1_uid1156_i_and3_i53_average_value_average_value95_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_q <= rightShiftStage1_uid1153_i_and3_i53_average_value_average_value95_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_q <= rightShiftStage2Idx1_uid1156_i_and3_i53_average_value_average_value95_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and3_i53_average_value_vt_select_11(BITSELECT,754)@11
    i_and3_i53_average_value_vt_select_11_b <= rightShiftStage2_uid1158_i_and3_i53_average_value_average_value95_shift_x_q(11 downto 0);

    -- i_and3_i53_average_value_vt_join(BITJOIN,753)@11
    i_and3_i53_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_and3_i53_average_value_vt_select_11_b;

    -- i_tr_i_average_value_sel_x(BITSELECT,541)@11
    i_tr_i_average_value_sel_x_b <= i_and3_i53_average_value_vt_join_q(31 downto 0);

    -- i_tr_i_average_value_vt_select_11(BITSELECT,1025)@11
    i_tr_i_average_value_vt_select_11_b <= i_tr_i_average_value_sel_x_b(11 downto 0);

    -- i_tr_i_average_value_vt_join(BITJOIN,1024)@11
    i_tr_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_tr_i_average_value_vt_select_11_b;

    -- i_conv_i_average_value_BitSelect_for_a(BITSELECT,1601)@11
    i_conv_i_average_value_BitSelect_for_a_b <= i_tr_i_average_value_vt_join_q(10 downto 0);

    -- i_conv_i_average_value_join(BITJOIN,1602)@11
    i_conv_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv_i_average_value_BitSelect_for_a_b;

    -- i_conv_i_average_value_vt_select_10(BITSELECT,809)@11
    i_conv_i_average_value_vt_select_10_b <= i_conv_i_average_value_join_q(10 downto 0);

    -- i_conv_i_average_value_vt_join(BITJOIN,808)@11
    i_conv_i_average_value_vt_join_q <= i_conv_i_average_value_vt_const_31_q & i_conv_i_average_value_vt_select_10_b;

    -- i_sub30_i_average_value(ADD,1001)@11
    i_sub30_i_average_value_a <= STD_LOGIC_VECTOR("0" & i_conv_i_average_value_vt_join_q);
    i_sub30_i_average_value_b <= STD_LOGIC_VECTOR("0" & c_i32_8176_q);
    i_sub30_i_average_value_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub30_i_average_value_a) + UNSIGNED(i_sub30_i_average_value_b));
    i_sub30_i_average_value_q <= i_sub30_i_average_value_o(32 downto 0);

    -- bgTrunc_i_sub30_i_average_value_sel_x(BITSELECT,10)@11
    bgTrunc_i_sub30_i_average_value_sel_x_b <= i_sub30_i_average_value_q(31 downto 0);

    -- i_sub30_i_average_value_vt_select_13(BITSELECT,1004)@11
    i_sub30_i_average_value_vt_select_13_b <= bgTrunc_i_sub30_i_average_value_sel_x_b(13 downto 0);

    -- redist133_i_sub30_i_average_value_vt_select_13_b_1(DELAY,1771)
    redist133_i_sub30_i_average_value_vt_select_13_b_1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_sub30_i_average_value_vt_select_13_b, xout => redist133_i_sub30_i_average_value_vt_select_13_b_1_q, clk => clock, aclr => resetn );

    -- i_sub30_i_average_value_vt_join(BITJOIN,1003)@12
    i_sub30_i_average_value_vt_join_q <= i_sub30_i_average_value_vt_const_31_q & redist133_i_sub30_i_average_value_vt_select_13_b_1_q;

    -- i_and31_i_average_value_BitSelect_for_a(BITSELECT,1585)@12
    i_and31_i_average_value_BitSelect_for_a_b <= i_sub30_i_average_value_vt_join_q(12 downto 0);

    -- i_and31_i_average_value_join(BITJOIN,1586)@12
    i_and31_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and31_i_average_value_BitSelect_for_a_b;

    -- i_and31_i_average_value_vt_select_12(BITSELECT,743)@12
    i_and31_i_average_value_vt_select_12_b <= i_and31_i_average_value_join_q(12 downto 0);

    -- i_and31_i_average_value_vt_join(BITJOIN,742)@12
    i_and31_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_and31_i_average_value_vt_select_12_b;

    -- i_and253_i_average_value_BitSelect_for_a(BITSELECT,1573)@12
    i_and253_i_average_value_BitSelect_for_a_b <= i_sub30_i_average_value_vt_join_q(12 downto 12);

    -- i_and253_i_average_value_join(BITJOIN,1574)@12
    i_and253_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and253_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and253_i_average_value_vt_select_12(BITSELECT,682)@12
    i_and253_i_average_value_vt_select_12_b <= i_and253_i_average_value_join_q(12 downto 12);

    -- i_and253_i_average_value_vt_join(BITJOIN,681)@12
    i_and253_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_and253_i_average_value_vt_select_12_b & i_and253_i_average_value_vt_const_11_q;

    -- i_tobool254_i_average_value(LOGICAL,1016)@12
    i_tobool254_i_average_value_q <= "1" WHEN i_and253_i_average_value_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_acl_22_i_average_value(MUX,616)@12
    i_acl_22_i_average_value_s <= i_tobool254_i_average_value_q;
    i_acl_22_i_average_value_combproc: PROCESS (i_acl_22_i_average_value_s, c_i32_0gr_q, i_and31_i_average_value_vt_join_q)
    BEGIN
        CASE (i_acl_22_i_average_value_s) IS
            WHEN "0" => i_acl_22_i_average_value_q <= c_i32_0gr_q;
            WHEN "1" => i_acl_22_i_average_value_q <= i_and31_i_average_value_vt_join_q;
            WHEN OTHERS => i_acl_22_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_22_i_average_value_vt_select_12(BITSELECT,619)@12
    i_acl_22_i_average_value_vt_select_12_b <= i_acl_22_i_average_value_q(12 downto 0);

    -- i_acl_22_i_average_value_vt_join(BITJOIN,618)@12
    i_acl_22_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_acl_22_i_average_value_vt_select_12_b;

    -- i_and265_i_average_value_BitSelect_for_a(BITSELECT,1575)@12
    i_and265_i_average_value_BitSelect_for_a_b <= i_acl_22_i_average_value_vt_join_q(11 downto 0);

    -- i_and265_i_average_value_join(BITJOIN,1576)@12
    i_and265_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and265_i_average_value_BitSelect_for_a_b;

    -- i_and265_i_average_value_vt_select_11(BITSELECT,686)@12
    i_and265_i_average_value_vt_select_11_b <= i_and265_i_average_value_join_q(11 downto 0);

    -- i_and265_i_average_value_vt_join(BITJOIN,685)@12
    i_and265_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_and265_i_average_value_vt_select_11_b;

    -- i_and274_i_average_value_BitSelect_for_a(BITSELECT,1577)@12
    i_and274_i_average_value_BitSelect_for_a_b <= i_acl_22_i_average_value_vt_join_q(11 downto 11);

    -- i_and274_i_average_value_join(BITJOIN,1578)@12
    i_and274_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and274_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and274_i_average_value_vt_select_11(BITSELECT,691)@12
    i_and274_i_average_value_vt_select_11_b <= i_and274_i_average_value_join_q(11 downto 11);

    -- i_and274_i_average_value_vt_const_10(CONSTANT,688)
    i_and274_i_average_value_vt_const_10_q <= "00000000000";

    -- i_and274_i_average_value_vt_join(BITJOIN,690)@12
    i_and274_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_and274_i_average_value_vt_select_11_b & i_and274_i_average_value_vt_const_10_q;

    -- i_tobool275_i_average_value(LOGICAL,1017)@12
    i_tobool275_i_average_value_q <= "1" WHEN i_and274_i_average_value_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_resulting_exp_2_i_average_value(MUX,876)@12
    i_resulting_exp_2_i_average_value_s <= i_tobool275_i_average_value_q;
    i_resulting_exp_2_i_average_value_combproc: PROCESS (i_resulting_exp_2_i_average_value_s, c_i32_0gr_q, i_and265_i_average_value_vt_join_q)
    BEGIN
        CASE (i_resulting_exp_2_i_average_value_s) IS
            WHEN "0" => i_resulting_exp_2_i_average_value_q <= c_i32_0gr_q;
            WHEN "1" => i_resulting_exp_2_i_average_value_q <= i_and265_i_average_value_vt_join_q;
            WHEN OTHERS => i_resulting_exp_2_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_resulting_exp_2_i_average_value_vt_select_11(BITSELECT,879)@12
    i_resulting_exp_2_i_average_value_vt_select_11_b <= i_resulting_exp_2_i_average_value_q(11 downto 0);

    -- i_resulting_exp_2_i_average_value_vt_join(BITJOIN,878)@12
    i_resulting_exp_2_i_average_value_vt_join_q <= i_and265_i_average_value_vt_const_31_q & i_resulting_exp_2_i_average_value_vt_select_11_b;

    -- i_or352_i_average_value_BitSelect_for_a(BITSELECT,1603)@12
    i_or352_i_average_value_BitSelect_for_a_b <= i_resulting_exp_2_i_average_value_vt_join_q(11 downto 0);

    -- i_or352_i_average_value_join(BITJOIN,1605)@12
    i_or352_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist127_i_or352_i_average_value_BitSelect_for_b_b_1_q & i_or352_i_average_value_BitSelect_for_a_b;

    -- i_or352_i_average_value_vt_select_12(BITSELECT,852)@12
    i_or352_i_average_value_vt_select_12_b <= i_or352_i_average_value_join_q(12 downto 0);

    -- i_or352_i_average_value_vt_join(BITJOIN,851)@12
    i_or352_i_average_value_vt_join_q <= i_acl_22_i_average_value_vt_const_31_q & i_or352_i_average_value_vt_select_12_b;

    -- i_conv353_i_average_value_sel_x(BITSELECT,44)@12
    i_conv353_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_or352_i_average_value_vt_join_q(31 downto 0)), 64));

    -- i_conv353_i_average_value_vt_select_12(BITSELECT,795)@12
    i_conv353_i_average_value_vt_select_12_b <= i_conv353_i_average_value_sel_x_b(12 downto 0);

    -- i_conv353_i_average_value_vt_join(BITJOIN,794)@12
    i_conv353_i_average_value_vt_join_q <= i_conv353_i_average_value_vt_const_63_q & i_conv353_i_average_value_vt_select_12_b;

    -- i_conv353_i_op_average_value_BitSelect_for_a(BITSELECT,1597)@12
    i_conv353_i_op_average_value_BitSelect_for_a_b <= i_conv353_i_average_value_vt_join_q(11 downto 0);

    -- redist128_i_conv353_i_op_average_value_BitSelect_for_a_b_1(DELAY,1766)
    redist128_i_conv353_i_op_average_value_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv353_i_op_average_value_BitSelect_for_a_b, xout => redist128_i_conv353_i_op_average_value_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_conv353_i_op_average_value_join(BITJOIN,1598)@13
    i_conv353_i_op_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist128_i_conv353_i_op_average_value_BitSelect_for_a_b_1_q;

    -- i_conv353_i_op_average_value_vt_select_11(BITSELECT,799)@13
    i_conv353_i_op_average_value_vt_select_11_b <= i_conv353_i_op_average_value_join_q(11 downto 0);

    -- i_conv353_i_op_average_value_vt_join(BITJOIN,798)@13
    i_conv353_i_op_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_conv353_i_op_average_value_vt_select_11_b;

    -- i_shr266_i_average_value_vt_const_63(CONSTANT,972)
    i_shr266_i_average_value_vt_const_63_q <= "000000000";

    -- rightShiftStage0Idx1Rng1_uid1439_i_shr266_i_average_value_average_value101_shift_x(BITSELECT,1438)@12
    rightShiftStage0Idx1Rng1_uid1439_i_shr266_i_average_value_average_value101_shift_x_b <= i_shl_i57_average_value_vt_join_q(63 downto 1);

    -- rightShiftStage0Idx1_uid1441_i_shr266_i_average_value_average_value101_shift_x(BITJOIN,1440)@12
    rightShiftStage0Idx1_uid1441_i_shr266_i_average_value_average_value101_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid1439_i_shr266_i_average_value_average_value101_shift_x_b;

    -- leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x(BITSELECT,1135)@12
    leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x_in <= leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q(62 downto 0);
    leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x_b <= leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x_in(62 downto 0);

    -- leftShiftStage1Idx1_uid1137_i_and2_or7_op_i_average_value_average_value97_shift_x(BITJOIN,1136)@12
    leftShiftStage1Idx1_uid1137_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= leftShiftStage1Idx1Rng1_uid1136_i_and2_or7_op_i_average_value_average_value97_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x(BITSELECT,1130)@12
    leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x_in <= i_and2_or7_i_average_value_vt_join_q(61 downto 0);
    leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x_b <= leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x_in(61 downto 0);

    -- leftShiftStage0Idx1_uid1132_i_and2_or7_op_i_average_value_average_value97_shift_x(BITJOIN,1131)@12
    leftShiftStage0Idx1_uid1132_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= leftShiftStage0Idx1Rng2_uid1131_i_and2_or7_op_i_average_value_average_value97_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- c_i64_4503599627370495(CONSTANT,599)
    c_i64_4503599627370495_q <= "0000000000001111111111111111111111111111111111111111111111111111";

    -- i_and2_i52_average_value(LOGICAL,709)@11
    i_and2_i52_average_value_q <= bgTrunc_i_add_i_average_value_sel_x_b and c_i64_4503599627370495_q;

    -- i_and2_i52_average_value_vt_select_51(BITSELECT,712)@11
    i_and2_i52_average_value_vt_select_51_b <= i_and2_i52_average_value_q(51 downto 0);

    -- redist140_i_and2_i52_average_value_vt_select_51_b_1(DELAY,1778)
    redist140_i_and2_i52_average_value_vt_select_51_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and2_i52_average_value_vt_select_51_b, xout => redist140_i_and2_i52_average_value_vt_select_51_b_1_q, clk => clock, aclr => resetn );

    -- i_and2_i52_average_value_vt_join(BITJOIN,711)@12
    i_and2_i52_average_value_vt_join_q <= i_and253_i_average_value_vt_const_11_q & redist140_i_and2_i52_average_value_vt_select_51_b_1_q;

    -- i_or7_i_average_value_vt_const_63(CONSTANT,860)
    i_or7_i_average_value_vt_const_63_q <= "000000000001";

    -- i_or7_i_average_value_BitSelect_for_a(BITSELECT,1606)@12
    i_or7_i_average_value_BitSelect_for_a_b <= i_and2_i52_average_value_vt_join_q(51 downto 0);
    i_or7_i_average_value_BitSelect_for_a_c <= i_and2_i52_average_value_vt_join_q(63 downto 63);

    -- i_or7_i_average_value_join(BITJOIN,1607)@12
    i_or7_i_average_value_join_q <= i_or7_i_average_value_BitSelect_for_a_c & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & VCC_q & i_or7_i_average_value_BitSelect_for_a_b;

    -- i_or7_i_average_value_vt_select_51(BITSELECT,862)@12
    i_or7_i_average_value_vt_select_51_b <= i_or7_i_average_value_join_q(51 downto 0);

    -- i_or7_i_average_value_vt_join(BITJOIN,861)@12
    i_or7_i_average_value_vt_join_q <= i_or7_i_average_value_vt_const_63_q & i_or7_i_average_value_vt_select_51_b;

    -- i_and2_or7_i_average_value(MUX,713)@12
    i_and2_or7_i_average_value_s <= i_cmp5_i_average_value_q;
    i_and2_or7_i_average_value_combproc: PROCESS (i_and2_or7_i_average_value_s, i_or7_i_average_value_vt_join_q, i_and2_i52_average_value_vt_join_q)
    BEGIN
        CASE (i_and2_or7_i_average_value_s) IS
            WHEN "0" => i_and2_or7_i_average_value_q <= i_or7_i_average_value_vt_join_q;
            WHEN "1" => i_and2_or7_i_average_value_q <= i_and2_i52_average_value_vt_join_q;
            WHEN OTHERS => i_and2_or7_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and2_or7_i_average_value_vt_select_52(BITSELECT,716)@12
    i_and2_or7_i_average_value_vt_select_52_b <= i_and2_or7_i_average_value_q(52 downto 0);

    -- i_and2_or7_i_average_value_vt_join(BITJOIN,715)@12
    i_and2_or7_i_average_value_vt_join_q <= i_and274_i_average_value_vt_const_10_q & i_and2_or7_i_average_value_vt_select_52_b;

    -- leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x(MUX,1133)@12
    leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_s <= VCC_q;
    leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_combproc: PROCESS (leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_s, i_and2_or7_i_average_value_vt_join_q, leftShiftStage0Idx1_uid1132_i_and2_or7_op_i_average_value_average_value97_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= i_and2_or7_i_average_value_vt_join_q;
            WHEN "1" => leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= leftShiftStage0Idx1_uid1132_i_and2_or7_op_i_average_value_average_value97_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x(MUX,1138)@12
    leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_s <= VCC_q;
    leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_combproc: PROCESS (leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_s, leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q, leftShiftStage1Idx1_uid1137_i_and2_or7_op_i_average_value_average_value97_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= leftShiftStage0_uid1134_i_and2_or7_op_i_average_value_average_value97_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= leftShiftStage1Idx1_uid1137_i_and2_or7_op_i_average_value_average_value97_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and2_or7_op_i_average_value_vt_select_55(BITSELECT,720)@12
    i_and2_or7_op_i_average_value_vt_select_55_b <= leftShiftStage1_uid1139_i_and2_or7_op_i_average_value_average_value97_shift_x_q(55 downto 3);

    -- i_and2_or7_op_i_average_value_vt_join(BITJOIN,719)@12
    i_and2_or7_op_i_average_value_vt_join_q <= c_i8_0gr_q & i_and2_or7_op_i_average_value_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- i_shr4_i_average_value_BitSelect_for_a(BITSELECT,1620)@11
    i_shr4_i_average_value_BitSelect_for_a_b <= i_and3_i53_average_value_vt_join_q(10 downto 0);

    -- i_shr4_i_average_value_join(BITJOIN,1621)@11
    i_shr4_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_shr4_i_average_value_BitSelect_for_a_b;

    -- i_shr4_i_average_value_vt_select_10(BITSELECT,984)@11
    i_shr4_i_average_value_vt_select_10_b <= i_shr4_i_average_value_join_q(10 downto 0);

    -- i_shr4_i_average_value_vt_join(BITJOIN,983)@11
    i_shr4_i_average_value_vt_join_q <= i_shr4_i_average_value_vt_const_63_q & i_shr4_i_average_value_vt_select_10_b;

    -- i_cmp5_i_average_value(LOGICAL,776)@11 + 1
    i_cmp5_i_average_value_qi <= "1" WHEN i_shr4_i_average_value_vt_join_q = dupName_2_c_i64_0gr_x_q ELSE "0";
    i_cmp5_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp5_i_average_value_qi, xout => i_cmp5_i_average_value_q, clk => clock, aclr => resetn );

    -- i_shl_i57_average_value(MUX,948)@12
    i_shl_i57_average_value_s <= i_cmp5_i_average_value_q;
    i_shl_i57_average_value_combproc: PROCESS (i_shl_i57_average_value_s, i_and2_or7_op_i_average_value_vt_join_q, dupName_2_c_i64_0gr_x_q)
    BEGIN
        CASE (i_shl_i57_average_value_s) IS
            WHEN "0" => i_shl_i57_average_value_q <= i_and2_or7_op_i_average_value_vt_join_q;
            WHEN "1" => i_shl_i57_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN OTHERS => i_shl_i57_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i57_average_value_vt_select_55(BITSELECT,952)@12
    i_shl_i57_average_value_vt_select_55_b <= i_shl_i57_average_value_q(55 downto 3);

    -- i_shl_i57_average_value_vt_join(BITJOIN,951)@12
    i_shl_i57_average_value_vt_join_q <= c_i8_0gr_q & i_shl_i57_average_value_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x(MUX,1442)@12
    rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_s <= VCC_q;
    rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_combproc: PROCESS (rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_s, i_shl_i57_average_value_vt_join_q, rightShiftStage0Idx1_uid1441_i_shr266_i_average_value_average_value101_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_q <= i_shl_i57_average_value_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_q <= rightShiftStage0Idx1_uid1441_i_shr266_i_average_value_average_value101_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr266_i_average_value_vt_select_54(BITSELECT,974)@12
    i_shr266_i_average_value_vt_select_54_b <= rightShiftStage0_uid1443_i_shr266_i_average_value_average_value101_shift_x_q(54 downto 2);

    -- i_shr266_i_average_value_vt_join(BITJOIN,973)@12
    i_shr266_i_average_value_vt_join_q <= i_shr266_i_average_value_vt_const_63_q & i_shr266_i_average_value_vt_select_54_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_x_mantissa_mask_i_i_average_value_BitSelect_for_a(BITSELECT,1626)@12
    i_x_mantissa_mask_i_i_average_value_BitSelect_for_a_b <= i_shr266_i_average_value_vt_join_q(54 downto 2);

    -- i_x_mantissa_mask_i_i_average_value_join(BITJOIN,1627)@12
    i_x_mantissa_mask_i_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_x_mantissa_mask_i_i_average_value_BitSelect_for_a_b & GND_q & GND_q;

    -- i_x_mantissa_mask_i_i_average_value_vt_select_54(BITSELECT,1054)@12
    i_x_mantissa_mask_i_i_average_value_vt_select_54_b <= i_x_mantissa_mask_i_i_average_value_join_q(54 downto 2);

    -- i_x_mantissa_mask_i_i_average_value_vt_join(BITJOIN,1053)@12
    i_x_mantissa_mask_i_i_average_value_vt_join_q <= i_shr266_i_average_value_vt_const_63_q & i_x_mantissa_mask_i_i_average_value_vt_select_54_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_and308_i_average_value_BitSelect_for_a(BITSELECT,1582)@12
    i_and308_i_average_value_BitSelect_for_a_b <= i_shl_i57_average_value_vt_join_q(55 downto 3);

    -- i_and308_i_average_value_join(BITJOIN,1583)@12
    i_and308_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and308_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q;

    -- i_and308_i_average_value_vt_select_55(BITSELECT,730)@12
    i_and308_i_average_value_vt_select_55_b <= i_and308_i_average_value_join_q(55 downto 3);

    -- i_and308_i_average_value_vt_join(BITJOIN,729)@12
    i_and308_i_average_value_vt_join_q <= c_i8_0gr_q & i_and308_i_average_value_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- i_and286_i_average_value_vt_const_7(CONSTANT,702)
    i_and286_i_average_value_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,607)
    c_i8_1gr_q <= "00000001";

    -- i_and274_i_lobit_average_value_vt_const_31(CONSTANT,692)
    i_and274_i_lobit_average_value_vt_const_31_q <= "0000000000000000000000000000000";

    -- rightShiftStage2Idx1Rng1_uid1121_i_and274_i_lobit_average_value_average_value105_shift_x(BITSELECT,1120)@12
    rightShiftStage2Idx1Rng1_uid1121_i_and274_i_lobit_average_value_average_value105_shift_x_b <= rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q(31 downto 1);

    -- rightShiftStage2Idx1_uid1123_i_and274_i_lobit_average_value_average_value105_shift_x(BITJOIN,1122)@12
    rightShiftStage2Idx1_uid1123_i_and274_i_lobit_average_value_average_value105_shift_x_q <= GND_q & rightShiftStage2Idx1Rng1_uid1121_i_and274_i_lobit_average_value_average_value105_shift_x_b;

    -- rightShiftStage1Idx1Rng2_uid1116_i_and274_i_lobit_average_value_average_value105_shift_x(BITSELECT,1115)@12
    rightShiftStage1Idx1Rng2_uid1116_i_and274_i_lobit_average_value_average_value105_shift_x_b <= rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q(31 downto 2);

    -- rightShiftStage1Idx1_uid1118_i_and274_i_lobit_average_value_average_value105_shift_x(BITJOIN,1117)@12
    rightShiftStage1Idx1_uid1118_i_and274_i_lobit_average_value_average_value105_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage1Idx1Rng2_uid1116_i_and274_i_lobit_average_value_average_value105_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid1111_i_and274_i_lobit_average_value_average_value105_shift_x(BITSELECT,1110)@12
    rightShiftStage0Idx1Rng8_uid1111_i_and274_i_lobit_average_value_average_value105_shift_x_b <= i_and274_i_average_value_vt_join_q(31 downto 8);

    -- rightShiftStage0Idx1_uid1113_i_and274_i_lobit_average_value_average_value105_shift_x(BITJOIN,1112)@12
    rightShiftStage0Idx1_uid1113_i_and274_i_lobit_average_value_average_value105_shift_x_q <= c_i8_0gr_q & rightShiftStage0Idx1Rng8_uid1111_i_and274_i_lobit_average_value_average_value105_shift_x_b;

    -- rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x(MUX,1114)@12
    rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_s <= VCC_q;
    rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_combproc: PROCESS (rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_s, i_and274_i_average_value_vt_join_q, rightShiftStage0Idx1_uid1113_i_and274_i_lobit_average_value_average_value105_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q <= i_and274_i_average_value_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q <= rightShiftStage0Idx1_uid1113_i_and274_i_lobit_average_value_average_value105_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x(MUX,1119)@12
    rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_s <= VCC_q;
    rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_combproc: PROCESS (rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_s, rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q, rightShiftStage1Idx1_uid1118_i_and274_i_lobit_average_value_average_value105_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q <= rightShiftStage0_uid1115_i_and274_i_lobit_average_value_average_value105_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q <= rightShiftStage1Idx1_uid1118_i_and274_i_lobit_average_value_average_value105_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x(MUX,1124)@12
    rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_s <= VCC_q;
    rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_combproc: PROCESS (rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_s, rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q, rightShiftStage2Idx1_uid1123_i_and274_i_lobit_average_value_average_value105_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_q <= rightShiftStage1_uid1120_i_and274_i_lobit_average_value_average_value105_shift_x_q;
            WHEN "1" => rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_q <= rightShiftStage2Idx1_uid1123_i_and274_i_lobit_average_value_average_value105_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and274_i_lobit_average_value_vt_select_0(BITSELECT,694)@12
    i_and274_i_lobit_average_value_vt_select_0_b <= rightShiftStage2_uid1125_i_and274_i_lobit_average_value_average_value105_shift_x_q(0 downto 0);

    -- i_and274_i_lobit_average_value_vt_join(BITJOIN,693)@12
    i_and274_i_lobit_average_value_vt_join_q <= i_and274_i_lobit_average_value_vt_const_31_q & i_and274_i_lobit_average_value_vt_select_0_b;

    -- i_unnamed_average_value106(LOGICAL,1026)@12
    i_unnamed_average_value106_q <= i_and274_i_lobit_average_value_vt_join_q xor c_i32_1gr_q;

    -- i_unnamed_average_value106_vt_select_0(BITSELECT,1029)@12
    i_unnamed_average_value106_vt_select_0_b <= i_unnamed_average_value106_q(0 downto 0);

    -- i_unnamed_average_value106_vt_join(BITJOIN,1028)@12
    i_unnamed_average_value106_vt_join_q <= i_and274_i_lobit_average_value_vt_const_31_q & i_unnamed_average_value106_vt_select_0_b;

    -- i_unnamed_average_value107_sel_x(BITSELECT,542)@12
    i_unnamed_average_value107_sel_x_b <= i_unnamed_average_value106_vt_join_q(7 downto 0);

    -- i_unnamed_average_value107_vt_select_0(BITSELECT,1033)@12
    i_unnamed_average_value107_vt_select_0_b <= i_unnamed_average_value107_sel_x_b(0 downto 0);

    -- i_unnamed_average_value107_vt_join(BITJOIN,1032)@12
    i_unnamed_average_value107_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_unnamed_average_value107_vt_select_0_b;

    -- i_masked_i_average_value(LOGICAL,828)@12
    i_masked_i_average_value_q <= i_unnamed_average_value107_vt_join_q xor c_i8_1gr_q;

    -- i_masked_i_average_value_vt_select_0(BITSELECT,831)@12
    i_masked_i_average_value_vt_select_0_b <= i_masked_i_average_value_q(0 downto 0);

    -- i_masked_i_average_value_vt_join(BITJOIN,830)@12
    i_masked_i_average_value_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_masked_i_average_value_vt_select_0_b;

    -- i_and283_i_average_value_BitSelect_for_a(BITSELECT,1579)@12
    i_and283_i_average_value_BitSelect_for_a_b <= i_shl_i57_average_value_vt_join_q(53 downto 52);

    -- i_and283_i_average_value_join(BITJOIN,1580)@12
    i_and283_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and283_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and283_i_average_value_vt_select_53(BITSELECT,699)@12
    i_and283_i_average_value_vt_select_53_b <= i_and283_i_average_value_join_q(53 downto 52);

    -- i_and283_i_average_value_vt_join(BITJOIN,698)@12
    i_and283_i_average_value_vt_join_q <= i_and283_i_average_value_vt_const_63_q & i_and283_i_average_value_vt_select_53_b & i_and1_i_average_value_vt_const_51_q;

    -- i_cmp284_i_average_value(LOGICAL,770)@12
    i_cmp284_i_average_value_q <= "1" WHEN i_and283_i_average_value_vt_join_q = dupName_2_c_i64_0gr_x_q ELSE "0";

    -- i_cmp271_i_average_value(LOGICAL,769)@12
    i_cmp271_i_average_value_q <= "1" WHEN i_and265_i_average_value_vt_join_q = c_i32_0gr_q ELSE "0";

    -- i_and2868_i_average_value(LOGICAL,700)@12
    i_and2868_i_average_value_q <= i_cmp271_i_average_value_q and i_cmp284_i_average_value_q;

    -- i_and286_i_average_value_sel_x(BITSELECT,29)@12
    i_and286_i_average_value_sel_x_b <= std_logic_vector(resize(unsigned(i_and2868_i_average_value_q(0 downto 0)), 8));

    -- i_and286_i_average_value_vt_select_0(BITSELECT,704)@12
    i_and286_i_average_value_vt_select_0_b <= i_and286_i_average_value_sel_x_b(0 downto 0);

    -- i_and286_i_average_value_vt_join(BITJOIN,703)@12
    i_and286_i_average_value_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_and286_i_average_value_vt_select_0_b;

    -- i_unnamed_average_value108(LOGICAL,1034)@12
    i_unnamed_average_value108_q <= i_and286_i_average_value_vt_join_q or i_masked_i_average_value_vt_join_q;

    -- i_unnamed_average_value108_vt_select_0(BITSELECT,1037)@12
    i_unnamed_average_value108_vt_select_0_b <= i_unnamed_average_value108_q(0 downto 0);

    -- i_unnamed_average_value108_vt_join(BITJOIN,1036)@12
    i_unnamed_average_value108_vt_join_q <= i_and286_i_average_value_vt_const_7_q & i_unnamed_average_value108_vt_select_0_b;

    -- i_tobool297_i_average_value(LOGICAL,1018)@12
    i_tobool297_i_average_value_q <= "1" WHEN i_unnamed_average_value108_vt_join_q = c_i8_0gr_q ELSE "0";

    -- i_and308_i_average_value_average_value110(MUX,722)@12
    i_and308_i_average_value_average_value110_s <= i_tobool297_i_average_value_q;
    i_and308_i_average_value_average_value110_combproc: PROCESS (i_and308_i_average_value_average_value110_s, dupName_2_c_i64_0gr_x_q, i_and308_i_average_value_vt_join_q)
    BEGIN
        CASE (i_and308_i_average_value_average_value110_s) IS
            WHEN "0" => i_and308_i_average_value_average_value110_q <= dupName_2_c_i64_0gr_x_q;
            WHEN "1" => i_and308_i_average_value_average_value110_q <= i_and308_i_average_value_vt_join_q;
            WHEN OTHERS => i_and308_i_average_value_average_value110_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and308_i_average_value_average_value110_vt_select_55(BITSELECT,726)@12
    i_and308_i_average_value_average_value110_vt_select_55_b <= i_and308_i_average_value_average_value110_q(55 downto 3);

    -- i_and308_i_average_value_average_value110_vt_join(BITJOIN,725)@12
    i_and308_i_average_value_average_value110_vt_join_q <= c_i8_0gr_q & i_and308_i_average_value_average_value110_vt_select_55_b & i_and2_or7_op_i_average_value_vt_const_2_q;

    -- i_acl_46_i_average_value(LOGICAL,620)@12
    i_acl_46_i_average_value_q <= i_tobool297_i_average_value_q and i_cmp271_i_average_value_q;

    -- i_acl_47_i_average_value(MUX,621)@12
    i_acl_47_i_average_value_s <= i_acl_46_i_average_value_q;
    i_acl_47_i_average_value_combproc: PROCESS (i_acl_47_i_average_value_s, i_and308_i_average_value_average_value110_vt_join_q, i_x_mantissa_mask_i_i_average_value_vt_join_q)
    BEGIN
        CASE (i_acl_47_i_average_value_s) IS
            WHEN "0" => i_acl_47_i_average_value_q <= i_and308_i_average_value_average_value110_vt_join_q;
            WHEN "1" => i_acl_47_i_average_value_q <= i_x_mantissa_mask_i_i_average_value_vt_join_q;
            WHEN OTHERS => i_acl_47_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_47_i_average_value_vt_select_55(BITSELECT,625)@12
    i_acl_47_i_average_value_vt_select_55_b <= i_acl_47_i_average_value_q(55 downto 2);

    -- i_acl_47_i_average_value_vt_join(BITJOIN,624)@12
    i_acl_47_i_average_value_vt_join_q <= c_i8_0gr_q & i_acl_47_i_average_value_vt_select_55_b & i_acl_47_i_average_value_vt_const_1_q;

    -- i_conv50_i_average_value_BitSelect_for_a(BITSELECT,1599)@12
    i_conv50_i_average_value_BitSelect_for_a_b <= i_acl_47_i_average_value_vt_join_q(55 downto 55);

    -- i_conv50_i_average_value_join(BITJOIN,1600)@12
    i_conv50_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_conv50_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_conv50_i_average_value_vt_select_55(BITSELECT,804)@12
    i_conv50_i_average_value_vt_select_55_b <= i_conv50_i_average_value_join_q(55 downto 55);

    -- redist138_i_conv50_i_average_value_vt_select_55_b_1(DELAY,1776)
    redist138_i_conv50_i_average_value_vt_select_55_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv50_i_average_value_vt_select_55_b, xout => redist138_i_conv50_i_average_value_vt_select_55_b_1_q, clk => clock, aclr => resetn );

    -- i_conv50_i_average_value_vt_const_54(CONSTANT,801)
    i_conv50_i_average_value_vt_const_54_q <= "0000000000000000000000000000000000000000000000000000000";

    -- i_conv50_i_average_value_vt_join(BITJOIN,803)@13
    i_conv50_i_average_value_vt_join_q <= c_i8_0gr_q & redist138_i_conv50_i_average_value_vt_select_55_b_1_q & i_conv50_i_average_value_vt_const_54_q;

    -- i_tobool52_i_average_value(LOGICAL,1019)@13
    i_tobool52_i_average_value_q <= "1" WHEN i_conv50_i_average_value_vt_join_q /= dupName_2_c_i64_0gr_x_q ELSE "0";

    -- i_and60_i_average_value(MUX,764)@13
    i_and60_i_average_value_s <= i_tobool52_i_average_value_q;
    i_and60_i_average_value_combproc: PROCESS (i_and60_i_average_value_s, dupName_2_c_i64_0gr_x_q, i_conv353_i_op_average_value_vt_join_q)
    BEGIN
        CASE (i_and60_i_average_value_s) IS
            WHEN "0" => i_and60_i_average_value_q <= dupName_2_c_i64_0gr_x_q;
            WHEN "1" => i_and60_i_average_value_q <= i_conv353_i_op_average_value_vt_join_q;
            WHEN OTHERS => i_and60_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and60_i_average_value_vt_select_11(BITSELECT,767)@13
    i_and60_i_average_value_vt_select_11_b <= i_and60_i_average_value_q(11 downto 0);

    -- i_and60_i_average_value_vt_join(BITJOIN,766)@13
    i_and60_i_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_and60_i_average_value_vt_select_11_b;

    -- leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x(MUX,1095)@13
    leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_s <= VCC_q;
    leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_combproc: PROCESS (leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_s, i_and60_i_average_value_vt_join_q, leftShiftStage0Idx1_uid1094_i_and1_i_average_value_average_value113_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q <= i_and60_i_average_value_vt_join_q;
            WHEN "1" => leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage0Idx1_uid1094_i_and1_i_average_value_average_value113_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x(MUX,1100)@13
    leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_s <= VCC_q;
    leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_combproc: PROCESS (leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_s, leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q, leftShiftStage1Idx1_uid1099_i_and1_i_average_value_average_value113_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage0_uid1096_i_and1_i_average_value_average_value113_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage1Idx1_uid1099_i_and1_i_average_value_average_value113_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x(MUX,1105)@13
    leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_s <= VCC_q;
    leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_combproc: PROCESS (leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_s, leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q, leftShiftStage2Idx1_uid1104_i_and1_i_average_value_average_value113_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage1_uid1101_i_and1_i_average_value_average_value113_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_q <= leftShiftStage2Idx1_uid1104_i_and1_i_average_value_average_value113_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and1_i_average_value_vt_select_63(BITSELECT,673)@13
    i_and1_i_average_value_vt_select_63_b <= leftShiftStage2_uid1106_i_and1_i_average_value_average_value113_shift_x_q(63 downto 52);

    -- i_and1_i_average_value_vt_join(BITJOIN,672)@13
    i_and1_i_average_value_vt_join_q <= i_and1_i_average_value_vt_select_63_b & i_and1_i_average_value_vt_const_51_q;

    -- i_shl2_i_average_value_BitSelect_for_a(BITSELECT,1616)@13
    i_shl2_i_average_value_BitSelect_for_a_b <= i_and1_i_average_value_vt_join_q(62 downto 52);

    -- i_shl2_i_average_value_join(BITJOIN,1617)@13
    i_shl2_i_average_value_join_q <= GND_q & i_shl2_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_shl2_i_average_value_vt_select_62(BITSELECT,930)@13
    i_shl2_i_average_value_vt_select_62_b <= i_shl2_i_average_value_join_q(62 downto 52);

    -- i_shl2_i_average_value_vt_join(BITJOIN,929)@13
    i_shl2_i_average_value_vt_join_q <= GND_q & i_shl2_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- c_i64_9218868437227405312(CONSTANT,604)
    c_i64_9218868437227405312_q <= "0111111111110000000000000000000000000000000000000000000000000000";

    -- i_and5_i_average_value_BitSelect_for_a(BITSELECT,1589)@13
    i_and5_i_average_value_BitSelect_for_a_b <= i_and60_i_average_value_vt_join_q(11 downto 11);

    -- i_and5_i_average_value_join(BITJOIN,1590)@13
    i_and5_i_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & i_and5_i_average_value_BitSelect_for_a_b & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q;

    -- i_and5_i_average_value_vt_select_11(BITSELECT,763)@13
    i_and5_i_average_value_vt_select_11_b <= i_and5_i_average_value_join_q(11 downto 11);

    -- i_and5_i_average_value_vt_join(BITJOIN,762)@13
    i_and5_i_average_value_vt_join_q <= i_and1_i_average_value_vt_const_51_q & i_and5_i_average_value_vt_select_11_b & i_and274_i_average_value_vt_const_10_q;

    -- i_tobool_i28_average_value(LOGICAL,1020)@13
    i_tobool_i28_average_value_q <= "1" WHEN i_and5_i_average_value_vt_join_q = dupName_2_c_i64_0gr_x_q ELSE "0";

    -- i_exponent_0_i_average_value(MUX,811)@13
    i_exponent_0_i_average_value_s <= i_tobool_i28_average_value_q;
    i_exponent_0_i_average_value_combproc: PROCESS (i_exponent_0_i_average_value_s, c_i64_9218868437227405312_q, i_shl2_i_average_value_vt_join_q)
    BEGIN
        CASE (i_exponent_0_i_average_value_s) IS
            WHEN "0" => i_exponent_0_i_average_value_q <= c_i64_9218868437227405312_q;
            WHEN "1" => i_exponent_0_i_average_value_q <= i_shl2_i_average_value_vt_join_q;
            WHEN OTHERS => i_exponent_0_i_average_value_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exponent_0_i_average_value_vt_select_62(BITSELECT,815)@13
    i_exponent_0_i_average_value_vt_select_62_b <= i_exponent_0_i_average_value_q(62 downto 52);

    -- i_exponent_0_i_average_value_vt_join(BITJOIN,814)@13
    i_exponent_0_i_average_value_vt_join_q <= GND_q & i_exponent_0_i_average_value_vt_select_62_b & i_and1_i_average_value_vt_const_51_q;

    -- rightShiftStage1Idx1Rng1_uid1468_i_shr3_i_average_value_average_value114_shift_x(BITSELECT,1467)@12
    rightShiftStage1Idx1Rng1_uid1468_i_shr3_i_average_value_average_value114_shift_x_b <= rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q(63 downto 1);

    -- rightShiftStage1Idx1_uid1470_i_shr3_i_average_value_average_value114_shift_x(BITJOIN,1469)@12
    rightShiftStage1Idx1_uid1470_i_shr3_i_average_value_average_value114_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid1468_i_shr3_i_average_value_average_value114_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid1463_i_shr3_i_average_value_average_value114_shift_x(BITSELECT,1462)@12
    rightShiftStage0Idx1Rng2_uid1463_i_shr3_i_average_value_average_value114_shift_x_b <= i_acl_47_i_average_value_vt_join_q(63 downto 2);

    -- rightShiftStage0Idx1_uid1465_i_shr3_i_average_value_average_value114_shift_x(BITJOIN,1464)@12
    rightShiftStage0Idx1_uid1465_i_shr3_i_average_value_average_value114_shift_x_q <= i_acl_47_i_average_value_vt_const_1_q & rightShiftStage0Idx1Rng2_uid1463_i_shr3_i_average_value_average_value114_shift_x_b;

    -- rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x(MUX,1466)@12
    rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_s <= VCC_q;
    rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_combproc: PROCESS (rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_s, i_acl_47_i_average_value_vt_join_q, rightShiftStage0Idx1_uid1465_i_shr3_i_average_value_average_value114_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q <= i_acl_47_i_average_value_vt_join_q;
            WHEN "1" => rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q <= rightShiftStage0Idx1_uid1465_i_shr3_i_average_value_average_value114_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x(MUX,1471)@12
    rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_s <= VCC_q;
    rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_combproc: PROCESS (rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_s, rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q, rightShiftStage1Idx1_uid1470_i_shr3_i_average_value_average_value114_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_q <= rightShiftStage0_uid1467_i_shr3_i_average_value_average_value114_shift_x_q;
            WHEN "1" => rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_q <= rightShiftStage1Idx1_uid1470_i_shr3_i_average_value_average_value114_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr3_i_average_value_vt_select_52(BITSELECT,977)@12
    i_shr3_i_average_value_vt_select_52_b <= rightShiftStage1_uid1472_i_shr3_i_average_value_average_value114_shift_x_q(52 downto 0);

    -- i_shr3_i_average_value_vt_join(BITJOIN,976)@12
    i_shr3_i_average_value_vt_join_q <= i_and274_i_average_value_vt_const_10_q & i_shr3_i_average_value_vt_select_52_b;

    -- i_and4_i27_average_value_BitSelect_for_a(BITSELECT,1587)@12
    i_and4_i27_average_value_BitSelect_for_a_b <= i_shr3_i_average_value_vt_join_q(51 downto 0);

    -- redist129_i_and4_i27_average_value_BitSelect_for_a_b_1(DELAY,1767)
    redist129_i_and4_i27_average_value_BitSelect_for_a_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and4_i27_average_value_BitSelect_for_a_b, xout => redist129_i_and4_i27_average_value_BitSelect_for_a_b_1_q, clk => clock, aclr => resetn );

    -- i_and4_i27_average_value_join(BITJOIN,1588)@13
    i_and4_i27_average_value_join_q <= GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & GND_q & redist129_i_and4_i27_average_value_BitSelect_for_a_b_1_q;

    -- i_and4_i27_average_value_vt_select_51(BITSELECT,758)@13
    i_and4_i27_average_value_vt_select_51_b <= i_and4_i27_average_value_join_q(51 downto 0);

    -- i_and4_i27_average_value_vt_join(BITJOIN,757)@13
    i_and4_i27_average_value_vt_join_q <= i_and253_i_average_value_vt_const_11_q & i_and4_i27_average_value_vt_select_51_b;

    -- c_i64_9223372036854775808(CONSTANT,605)
    c_i64_9223372036854775808_q <= "1000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x(BITSELECT,1361)@12
    leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x_in <= leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q(62 downto 0);
    leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x_b <= leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x_in(62 downto 0);

    -- leftShiftStage3Idx1_uid1363_i_shl_i39_average_value_average_value112_shift_x(BITJOIN,1362)@12
    leftShiftStage3Idx1_uid1363_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage3Idx1Rng1_uid1362_i_shl_i39_average_value_average_value112_shift_x_b & GND_q;

    -- leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x(BITSELECT,1356)@12
    leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x_in <= leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q(61 downto 0);
    leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x_b <= leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x_in(61 downto 0);

    -- leftShiftStage2Idx1_uid1358_i_shl_i39_average_value_average_value112_shift_x(BITJOIN,1357)@12
    leftShiftStage2Idx1_uid1358_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage2Idx1Rng2_uid1357_i_shl_i39_average_value_average_value112_shift_x_b & i_acl_47_i_average_value_vt_const_1_q;

    -- leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x(BITSELECT,1351)@12
    leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x_in <= leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q(47 downto 0);
    leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x_b <= leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x_in(47 downto 0);

    -- leftShiftStage1Idx1_uid1353_i_shl_i39_average_value_average_value112_shift_x(BITJOIN,1352)@12
    leftShiftStage1Idx1_uid1353_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage1Idx1Rng16_uid1352_i_shl_i39_average_value_average_value112_shift_x_b & i_shr20_i_i_average_value_vt_const_31_q;

    -- leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x(BITSELECT,1346)@12
    leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x_in <= i_conv353_i_average_value_vt_join_q(31 downto 0);
    leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x_b <= leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx1_uid1348_i_shl_i39_average_value_average_value112_shift_x(BITJOIN,1347)@12
    leftShiftStage0Idx1_uid1348_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage0Idx1Rng32_uid1347_i_shl_i39_average_value_average_value112_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x(MUX,1349)@12
    leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_s <= VCC_q;
    leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_combproc: PROCESS (leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_s, i_conv353_i_average_value_vt_join_q, leftShiftStage0Idx1_uid1348_i_shl_i39_average_value_average_value112_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q <= i_conv353_i_average_value_vt_join_q;
            WHEN "1" => leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage0Idx1_uid1348_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x(MUX,1354)@12
    leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_s <= VCC_q;
    leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_combproc: PROCESS (leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_s, leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q, leftShiftStage1Idx1_uid1353_i_shl_i39_average_value_average_value112_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage0_uid1350_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN "1" => leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage1Idx1_uid1353_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x(MUX,1359)@12
    leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_s <= VCC_q;
    leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_combproc: PROCESS (leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_s, leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q, leftShiftStage2Idx1_uid1358_i_shl_i39_average_value_average_value112_shift_x_q)
    BEGIN
        CASE (leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_s) IS
            WHEN "0" => leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage1_uid1355_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN "1" => leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage2Idx1_uid1358_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN OTHERS => leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x(MUX,1364)@12
    leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_s <= VCC_q;
    leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_combproc: PROCESS (leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_s, leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q, leftShiftStage3Idx1_uid1363_i_shl_i39_average_value_average_value112_shift_x_q)
    BEGIN
        CASE (leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_s) IS
            WHEN "0" => leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage2_uid1360_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN "1" => leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_q <= leftShiftStage3Idx1_uid1363_i_shl_i39_average_value_average_value112_shift_x_q;
            WHEN OTHERS => leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shl_i39_average_value_vt_select_63(BITSELECT,942)@12
    i_shl_i39_average_value_vt_select_63_b <= leftShiftStage3_uid1365_i_shl_i39_average_value_average_value112_shift_x_q(63 downto 51);

    -- i_shl_i39_average_value_vt_join(BITJOIN,941)@12
    i_shl_i39_average_value_vt_join_q <= i_shl_i39_average_value_vt_select_63_b & i_conv353_i_average_value_vt_const_63_q;

    -- i_shl_i26_average_value(LOGICAL,936)@12
    i_shl_i26_average_value_q <= i_shl_i39_average_value_vt_join_q and c_i64_9223372036854775808_q;

    -- i_shl_i26_average_value_vt_select_63(BITSELECT,939)@12
    i_shl_i26_average_value_vt_select_63_b <= i_shl_i26_average_value_q(63 downto 63);

    -- redist134_i_shl_i26_average_value_vt_select_63_b_1(DELAY,1772)
    redist134_i_shl_i26_average_value_vt_select_63_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shl_i26_average_value_vt_select_63_b, xout => redist134_i_shl_i26_average_value_vt_select_63_b_1_q, clk => clock, aclr => resetn );

    -- i_shl_i26_average_value_vt_join(BITJOIN,938)@13
    i_shl_i26_average_value_vt_join_q <= redist134_i_shl_i26_average_value_vt_select_63_b_1_q & i_acl_10_i_average_value_vt_const_63_q;

    -- i_or_i29_average_value(LOGICAL,866)@13
    i_or_i29_average_value_q <= i_shl_i26_average_value_vt_join_q or i_and4_i27_average_value_vt_join_q;

    -- i_or_i29_average_value_vt_select_51_merged_bit_select(BITSELECT,1636)@13
    i_or_i29_average_value_vt_select_51_merged_bit_select_b <= i_or_i29_average_value_q(51 downto 0);
    i_or_i29_average_value_vt_select_51_merged_bit_select_c <= i_or_i29_average_value_q(63 downto 63);

    -- i_or_i29_average_value_vt_join(BITJOIN,868)@13
    i_or_i29_average_value_vt_join_q <= i_or_i29_average_value_vt_select_51_merged_bit_select_c & i_and274_i_average_value_vt_const_10_q & i_or_i29_average_value_vt_select_51_merged_bit_select_b;

    -- i_or6_i_average_value(LOGICAL,857)@13 + 1
    i_or6_i_average_value_qi <= i_or_i29_average_value_vt_join_q or i_exponent_0_i_average_value_vt_join_q;
    i_or6_i_average_value_delay : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or6_i_average_value_qi, xout => i_or6_i_average_value_q, clk => clock, aclr => resetn );

    -- i_div_average_value(BLACKBOX,810)@2
    -- in in_0@14
    -- out out_primWireOut@24
    thei_div_average_value : floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Zcqp00j0ucqp00j0oqf0z
    PORT MAP (
        in_0 => i_or6_i_average_value_q,
        in_1 => i_or22_compressed_i_average_value_average_value131_or22_shuffle_i_join_x_q,
        out_primWireOut => i_div_average_value_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- redist137_i_div_average_value_out_primWireOut_1(DELAY,1775)
    redist137_i_div_average_value_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_div_average_value_out_primWireOut, xout => redist137_i_div_average_value_out_primWireOut_1_q, clk => clock, aclr => resetn );

    -- i_conv8_average_value(BLACKBOX,805)@25
    thei_conv8_average_value : floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Z50c2463a0054c2a6355y
    PORT MAP (
        in_0 => redist137_i_div_average_value_out_primWireOut_1_q,
        out_primWireOut => i_conv8_average_value_out_primWireOut,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,550)@25
    out_c0_exi117_0 <= GND_q;
    out_c0_exi117_1 <= i_conv8_average_value_out_primWireOut;
    out_o_valid <= redist131_sync_in_in_i_valid_25_q;

END normal;
