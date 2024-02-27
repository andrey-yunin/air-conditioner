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

-- VHDL created from floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Zcqp00j0ucqp00j0oqf0z
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

entity floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Zcqp00j0ucqp00j0oqf0z is
    port (
        in_0 : in std_logic_vector(63 downto 0);  -- float64_m52
        in_1 : in std_logic_vector(63 downto 0);  -- float64_m52
        out_primWireOut : out std_logic_vector(63 downto 0);  -- float64_m52
        clock : in std_logic;
        resetn : in std_logic
    );
end floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Zcqp00j0ucqp00j0oqf0z;

architecture normal of floatComponent_i_sfc_logic_c0_for_cond_for_end_crit_edge_loopexit_average_value_A0Zcqp00j0ucqp00j0oqf0z is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstBiasM1_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal cstBias_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal expX_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal fracX_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal signX_uid12_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expY_uid13_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal fracY_uid14_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal signY_uid15_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal paddingY_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (51 downto 0);
    signal updatedY_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal fracYZero_uid16_block_rsrvd_fix_a : STD_LOGIC_VECTOR (52 downto 0);
    signal fracYZero_uid16_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracYZero_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal cstAllZWE_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal expXIsZero_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid28_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid29_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid30_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsZero_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid45_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid46_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid47_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yNotSubnormal_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYSubnorm_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotSubnormal_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXSubnorm_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid57_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXSubnorm_uid58_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expXSubnorm_uid58_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expXSubnorm_uid58_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expXSubnorm_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal expYSubnorm_uid59_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expYSubnorm_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expYSubnorm_uid59_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expYSubnorm_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal expXmY_uid60_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expXmY_uid60_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expXmY_uid60_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expXmY_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal expR_uid61_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expR_uid61_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expR_uid61_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expR_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal fracOYForLZC_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal addrFull_uid66_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal addrFull_uid66_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal yAddr_uid68_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal yPE_uid69_block_rsrvd_fix_in : STD_LOGIC_VECTOR (40 downto 0);
    signal yPE_uid69_block_rsrvd_fix_b : STD_LOGIC_VECTOR (40 downto 0);
    signal invY_uid71_block_rsrvd_fix_in : STD_LOGIC_VECTOR (60 downto 0);
    signal invY_uid71_block_rsrvd_fix_b : STD_LOGIC_VECTOR (55 downto 0);
    signal hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal fracPostNormIsNotZero_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNormIsZero_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormSelect_uid80_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormSelect_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal z4_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal oFracXZ4_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (57 downto 0);
    signal divValPreNormYPow2Exc_uid84_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q : STD_LOGIC_VECTOR (57 downto 0);
    signal norm_uid85_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal addSubnormAdditions_uid86_block_rsrvd_fix_a : STD_LOGIC_VECTOR (6 downto 0);
    signal addSubnormAdditions_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (6 downto 0);
    signal addSubnormAdditions_uid86_block_rsrvd_fix_o : STD_LOGIC_VECTOR (6 downto 0);
    signal addSubnormAdditions_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal expRPostNormHandling0_uid87_block_rsrvd_fix_a : STD_LOGIC_VECTOR (15 downto 0);
    signal expRPostNormHandling0_uid87_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal expRPostNormHandling0_uid87_block_rsrvd_fix_o : STD_LOGIC_VECTOR (15 downto 0);
    signal expRPostNormHandling0_uid87_block_rsrvd_fix_q : STD_LOGIC_VECTOR (14 downto 0);
    signal expRPostNormHandling_uid88_block_rsrvd_fix_a : STD_LOGIC_VECTOR (15 downto 0);
    signal expRPostNormHandling_uid88_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal expRPostNormHandling_uid88_block_rsrvd_fix_o : STD_LOGIC_VECTOR (15 downto 0);
    signal expRPostNormHandling_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal divValPreNormHigh_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal divValPreNormHigh_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (53 downto 0);
    signal divValPreNormLow_uid90_block_rsrvd_fix_in : STD_LOGIC_VECTOR (55 downto 0);
    signal divValPreNormLow_uid90_block_rsrvd_fix_b : STD_LOGIC_VECTOR (53 downto 0);
    signal normFracRnd_uid91_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal normFracRnd_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal divValPreNormForShift_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (55 downto 0);
    signal subnormalRes_uid93_block_rsrvd_fix_a : STD_LOGIC_VECTOR (17 downto 0);
    signal subnormalRes_uid93_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal subnormalRes_uid93_block_rsrvd_fix_o : STD_LOGIC_VECTOR (17 downto 0);
    signal subnormalRes_uid93_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal mExpRPostNormHandling_uid94_block_rsrvd_fix_a : STD_LOGIC_VECTOR (17 downto 0);
    signal mExpRPostNormHandling_uid94_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal mExpRPostNormHandling_uid94_block_rsrvd_fix_o : STD_LOGIC_VECTOR (17 downto 0);
    signal mExpRPostNormHandling_uid94_block_rsrvd_fix_q : STD_LOGIC_VECTOR (16 downto 0);
    signal invNorm_uid95_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zInvNorm_uid96_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal muxNotSubnormalRightShiftValue_to17_uid97_in : STD_LOGIC_VECTOR (16 downto 0);
    signal muxNotSubnormalRightShiftValue_to17_uid97_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftFractionValue_uid99_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftFractionValue_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (16 downto 0);
    signal padConst_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal rightPaddedIn_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal alignedResultFracForRnd_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (108 downto 0);
    signal alignedResultFracForRnd_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (53 downto 0);
    signal fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal xMSB_uid105_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpRPostNormHandlingSign_uid107_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forwardExponentResult_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal forwardExponentResult_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal fwdExponentResult_uid109_block_rsrvd_fix_in : STD_LOGIC_VECTOR (12 downto 0);
    signal fwdExponentResult_uid109_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expFracRnd_uid110_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal expFracPostRnd_uid113_block_rsrvd_fix_a : STD_LOGIC_VECTOR (68 downto 0);
    signal expFracPostRnd_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (68 downto 0);
    signal expFracPostRnd_uid113_block_rsrvd_fix_o : STD_LOGIC_VECTOR (68 downto 0);
    signal expFracPostRnd_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal fracPostRndF_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (53 downto 0);
    signal fracPostRndF_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal expPostRndF_uid115_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal expPostRndF_uid115_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal invSubnormalRes_uid116_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ofracPostRndF_uid117_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal resExpIncludingSubnormals0_uid120_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal resExpIncludingSubnormals0_uid120_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal resExpIncludingSubnormals0_uid120_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal resExpIncludingSubnormals0_uid120_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal resExpIncludingSubnormals_uid121_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal resExpIncludingSubnormals_uid121_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal resExpIncludingSubnormals_uid121_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal resExpIncludingSubnormals_uid121_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal c_uid122_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal c_uid122_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal c_uid122_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal c_uid122_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal expYIncludingSubnormals_uid124_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expYIncludingSubnormals_uid124_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expYIncludingSubnormals_uid124_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expYIncludingSubnormals_uid124_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal prodExpPreNorm_uid128_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal prodExpPreNorm_uid128_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal prodExpPreNorm_uid128_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal prodExpPreNorm_uid128_block_rsrvd_fix_q : STD_LOGIC_VECTOR (14 downto 0);
    signal qDivProdNorm_uid129_block_rsrvd_fix_in : STD_LOGIC_VECTOR (106 downto 0);
    signal qDivProdNorm_uid129_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal prodExpPostNorm_uid130_block_rsrvd_fix_a : STD_LOGIC_VECTOR (16 downto 0);
    signal prodExpPostNorm_uid130_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal prodExpPostNorm_uid130_block_rsrvd_fix_o : STD_LOGIC_VECTOR (16 downto 0);
    signal prodExpPostNorm_uid130_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal qDivProdFracHigh_uid131_block_rsrvd_fix_in : STD_LOGIC_VECTOR (105 downto 0);
    signal qDivProdFracHigh_uid131_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal qDivProdFracLow_uid132_block_rsrvd_fix_in : STD_LOGIC_VECTOR (104 downto 0);
    signal qDivProdFracLow_uid132_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal qDivProdFrac_uid133_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal qDivProdFrac_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal lowStickyqDivR_uid134_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal lowStickyqDivR_uid134_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal lowStickyqDiv_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal qDivProdS_uid136_block_rsrvd_fix_in : STD_LOGIC_VECTOR (52 downto 0);
    signal qDivProdS_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal possibleStickyBit_uid137_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fullSticky_uid138_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIncludingSubnormals_uid140_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expXIncludingSubnormals_uid140_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expXIncludingSubnormals_uid140_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expXIncludingSubnormals_uid140_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal expProdEqExpX_uid142_block_rsrvd_fix_a : STD_LOGIC_VECTOR (15 downto 0);
    signal expProdEqExpX_uid142_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expProdLtExpX_uid143_block_rsrvd_fix_a : STD_LOGIC_VECTOR (17 downto 0);
    signal expProdLtExpX_uid143_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal expProdLtExpX_uid143_block_rsrvd_fix_o : STD_LOGIC_VECTOR (17 downto 0);
    signal expProdLtExpX_uid143_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal qDivProd_opB_uid144_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal qDivProd_opB_uid144_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal updatedY_uid146_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal fracProdLtFracX_uid145_block_rsrvd_fix_a : STD_LOGIC_VECTOR (54 downto 0);
    signal fracProdLtFracX_uid145_block_rsrvd_fix_b : STD_LOGIC_VECTOR (54 downto 0);
    signal fracProdLtFracX_uid145_block_rsrvd_fix_o : STD_LOGIC_VECTOR (54 downto 0);
    signal fracProdLtFracX_uid145_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal fracProdEQFracX_uid148_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expEqFracLT_uid151_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal qDivProdLTX_uid152_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal betweenFPwF_uid153_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal betweenFPwF_uid153_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invFullSticky_uid154_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal lsbFrac_uid155_block_rsrvd_fix_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lsbFrac_uid155_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp1_uid156_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp1_uid156_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp0_uid157_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp0_uid157_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp_uid158_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostRndFT_uid159_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal fracRPreExcExt_uid160_block_rsrvd_fix_a : STD_LOGIC_VECTOR (52 downto 0);
    signal fracRPreExcExt_uid160_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal fracRPreExcExt_uid160_block_rsrvd_fix_o : STD_LOGIC_VECTOR (52 downto 0);
    signal fracRPreExcExt_uid160_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal fracPostRndFPostUlp_uid161_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal fracPostRndFPostUlp_uid161_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal fracRPreExc_uid162_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid162_block_rsrvd_fix_q : STD_LOGIC_VECTOR (51 downto 0);
    signal ovfIncRnd_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracPostRndInc_uid165_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expFracPostRndInc_uid165_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expFracPostRndInc_uid165_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expFracPostRndInc_uid165_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal expFracPostRndR_uid166_block_rsrvd_fix_in : STD_LOGIC_VECTOR (10 downto 0);
    signal expFracPostRndR_uid166_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expRPreExc_uid167_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRPreExc_uid167_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal expRExt_uid169_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid170_block_rsrvd_fix_a : STD_LOGIC_VECTOR (15 downto 0);
    signal expUdf_uid170_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal expUdf_uid170_block_rsrvd_fix_o : STD_LOGIC_VECTOR (15 downto 0);
    signal expUdf_uid170_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal rUnderflow_uid172_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid175_block_rsrvd_fix_a : STD_LOGIC_VECTOR (15 downto 0);
    signal expOvf_uid175_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal expOvf_uid175_block_rsrvd_fix_o : STD_LOGIC_VECTOR (15 downto 0);
    signal expOvf_uid175_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegOrSubnormal_uid176_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegOrSubnormal_uid176_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yRegOrSubnormal_uid177_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yRegOrSubnormal_uid177_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroOverReg_uid178_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal regOverRegWithUf_uid179_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegOrZero_uid180_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal regOrZeroOverInf_uid181_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid182_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRYZ_uid183_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRYROvf_uid184_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYZ_uid185_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYR_uid186_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid187_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZYZ_uid188_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYI_uid189_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid190_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid190_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid191_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid192_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid193_block_rsrvd_fix_q : STD_LOGIC_VECTOR (51 downto 0);
    signal fracRPostExc_uid196_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid196_block_rsrvd_fix_q : STD_LOGIC_VECTOR (51 downto 0);
    signal expRPostExc_uid200_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid200_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal invExcRNaN_uid201_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sRPostExc_uid202_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal sRPostExc_uid202_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal divR_uid203_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal zs_uid205_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid206_lzFracY_uid63_block_rsrvd_fix_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid208_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal vStage_uid209_lzFracY_uid63_block_rsrvd_fix_in : STD_LOGIC_VECTOR (20 downto 0);
    signal vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b : STD_LOGIC_VECTOR (20 downto 0);
    signal cStage_uid210_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid213_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid219_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid225_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid231_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid233_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid238_lzFracY_uid63_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid239_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid240_lzFracY_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal os_uid258_invTables_q : STD_LOGIC_VECTOR (60 downto 0);
    signal os_uid273_invTables_q : STD_LOGIC_VECTOR (48 downto 0);
    signal os_uid285_invTables_q : STD_LOGIC_VECTOR (37 downto 0);
    signal os_uid294_invTables_q : STD_LOGIC_VECTOR (27 downto 0);
    signal os_uid300_invTables_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yT1_uid307_invPolyEval_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rndBit_uid309_invPolyEval_q : STD_LOGIC_VECTOR (1 downto 0);
    signal cIncludingRoundingBit_uid310_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal ts1_uid312_invPolyEval_a : STD_LOGIC_VECTOR (30 downto 0);
    signal ts1_uid312_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal ts1_uid312_invPolyEval_o : STD_LOGIC_VECTOR (30 downto 0);
    signal ts1_uid312_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal s1_uid313_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal yT2_uid314_invPolyEval_b : STD_LOGIC_VECTOR (27 downto 0);
    signal cIncludingRoundingBit_uid317_invPolyEval_q : STD_LOGIC_VECTOR (39 downto 0);
    signal ts2_uid319_invPolyEval_a : STD_LOGIC_VECTOR (40 downto 0);
    signal ts2_uid319_invPolyEval_b : STD_LOGIC_VECTOR (40 downto 0);
    signal ts2_uid319_invPolyEval_o : STD_LOGIC_VECTOR (40 downto 0);
    signal ts2_uid319_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal s2_uid320_invPolyEval_b : STD_LOGIC_VECTOR (39 downto 0);
    signal yT3_uid321_invPolyEval_b : STD_LOGIC_VECTOR (37 downto 0);
    signal cIncludingRoundingBit_uid324_invPolyEval_q : STD_LOGIC_VECTOR (50 downto 0);
    signal ts3_uid326_invPolyEval_a : STD_LOGIC_VECTOR (51 downto 0);
    signal ts3_uid326_invPolyEval_b : STD_LOGIC_VECTOR (51 downto 0);
    signal ts3_uid326_invPolyEval_o : STD_LOGIC_VECTOR (51 downto 0);
    signal ts3_uid326_invPolyEval_q : STD_LOGIC_VECTOR (51 downto 0);
    signal s3_uid327_invPolyEval_b : STD_LOGIC_VECTOR (50 downto 0);
    signal rndBit_uid330_invPolyEval_q : STD_LOGIC_VECTOR (2 downto 0);
    signal cIncludingRoundingBit_uid331_invPolyEval_q : STD_LOGIC_VECTOR (63 downto 0);
    signal ts4_uid333_invPolyEval_a : STD_LOGIC_VECTOR (64 downto 0);
    signal ts4_uid333_invPolyEval_b : STD_LOGIC_VECTOR (64 downto 0);
    signal ts4_uid333_invPolyEval_o : STD_LOGIC_VECTOR (64 downto 0);
    signal ts4_uid333_invPolyEval_q : STD_LOGIC_VECTOR (64 downto 0);
    signal s4_uid334_invPolyEval_b : STD_LOGIC_VECTOR (63 downto 0);
    signal rVStage_uid337_lzoFracX_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_in : STD_LOGIC_VECTOR (20 downto 0);
    signal vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (20 downto 0);
    signal cStage_uid341_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid364_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid369_lzoFracX_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid370_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid371_lzoFracX_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal topRangeX_uid381_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid382_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (34 downto 0);
    signal aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (37 downto 0);
    signal rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_mergedSignalTM_uid430_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (19 downto 0);
    signal rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (37 downto 0);
    signal aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (19 downto 0);
    signal rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (34 downto 0);
    signal rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightBottomX_mergedSignalTM_uid457_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomY_uid459_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_b0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_s1 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_reset : std_logic;
    signal sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal sumAb_uid469_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (71 downto 0);
    signal sumAb_uid470_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal sumAb_uid471_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (72 downto 0);
    signal lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (72 downto 0);
    signal lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (72 downto 0);
    signal lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (72 downto 0);
    signal lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (73 downto 0);
    signal lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (73 downto 0);
    signal lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (73 downto 0);
    signal lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (73 downto 0);
    signal lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (74 downto 0);
    signal lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (74 downto 0);
    signal lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (74 downto 0);
    signal lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (74 downto 0);
    signal osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (71 downto 0);
    signal osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (57 downto 0);
    signal rVStage_uid480_lzFracWfP1_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid482_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_in : STD_LOGIC_VECTOR (21 downto 0);
    signal vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (21 downto 0);
    signal cStage_uid484_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid495_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid501_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid507_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid512_lzFracWfP1_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid513_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid514_lzFracWfP1_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal nx_mergedSignalTM_uid518_pT1_uid308_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeY_mergedSignalTM_uid531_pT1_uid308_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid533_pT1_uid308_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid533_pT1_uid308_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid533_pT1_uid308_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid533_pT1_uid308_invPolyEval_reset : std_logic;
    signal sm0_uid533_pT1_uid308_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal osig_uid534_pT1_uid308_invPolyEval_in : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid534_pT1_uid308_invPolyEval_b : STD_LOGIC_VECTOR (18 downto 0);
    signal nx_mergedSignalTM_uid538_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (28 downto 0);
    signal aboveLeftY_mergedSignalTM_uid572_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightBottomX_mergedSignalTM_uid576_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid579_pT2_uid315_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid579_pT2_uid315_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid579_pT2_uid315_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid579_pT2_uid315_invPolyEval_reset : std_logic;
    signal sm0_uid579_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid580_pT2_uid315_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid580_pT2_uid315_invPolyEval_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid580_pT2_uid315_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm0_uid580_pT2_uid315_invPolyEval_reset : std_logic;
    signal sm0_uid580_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm1_uid581_pT2_uid315_invPolyEval_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm1_uid581_pT2_uid315_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm1_uid581_pT2_uid315_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm1_uid581_pT2_uid315_invPolyEval_reset : std_logic;
    signal sm1_uid581_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal lowRangeB_uid582_pT2_uid315_invPolyEval_in : STD_LOGIC_VECTOR (16 downto 0);
    signal lowRangeB_uid582_pT2_uid315_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal highBBits_uid583_pT2_uid315_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_a : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_b : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_o : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a0_uid585_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (51 downto 0);
    signal lev2_a0_uid586_pT2_uid315_invPolyEval_a : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a0_uid586_pT2_uid315_invPolyEval_b : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a0_uid586_pT2_uid315_invPolyEval_o : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a0_uid586_pT2_uid315_invPolyEval_q : STD_LOGIC_VECTOR (52 downto 0);
    signal osig_uid587_pT2_uid315_invPolyEval_in : STD_LOGIC_VECTOR (49 downto 0);
    signal osig_uid587_pT2_uid315_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal topRangeX_uid601_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeY_uid602_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid620_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (22 downto 0);
    signal aboveLeftY_uid620_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightBottomX_uid621_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (21 downto 0);
    signal rightBottomX_uid621_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftX_uid629_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (5 downto 0);
    signal aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (5 downto 0);
    signal aboveLeftY_mergedSignalTM_uid632_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal aboveLeftX_uid634_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (21 downto 0);
    signal aboveLeftX_uid634_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal aboveLeftY_uid635_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (22 downto 0);
    signal aboveLeftY_uid635_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (2 downto 0);
    signal rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (4 downto 0);
    signal rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal rightBottomX_mergedSignalTM_uid638_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomY_uid640_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_uid644_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (30 downto 0);
    signal rightBottomX_uid644_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal rightBottomY_uid645_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (5 downto 0);
    signal rightBottomY_uid645_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftX_uid646_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (21 downto 0);
    signal aboveLeftX_uid646_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_uid647_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (14 downto 0);
    signal aboveLeftY_uid647_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal rightBottomX_uid648_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (13 downto 0);
    signal rightBottomX_uid648_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal rightBottomY_uid649_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (22 downto 0);
    signal rightBottomY_uid649_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftX_uid650_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftX_uid650_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_uid651_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (31 downto 0);
    signal aboveLeftY_uid651_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal n1_uid657_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n0_uid658_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n1_uid659_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n0_uid660_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n1_uid661_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n0_uid662_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n1_uid663_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n0_uid664_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid679_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid679_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid679_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid679_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid679_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid680_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid680_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid680_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm0_uid680_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid680_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm1_uid681_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm1_uid681_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm1_uid681_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm1_uid681_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm1_uid681_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid682_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid682_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid682_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid682_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid682_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal sm0_uid683_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid683_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid683_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sm0_uid683_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid683_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal sm0_uid684_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid684_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid684_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid684_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid684_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal sm0_uid685_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid685_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid685_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid685_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid685_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid686_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid686_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid686_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid686_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid686_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid687_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid687_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid687_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid687_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid687_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid688_pT3_uid322_invPolyEval_a0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid688_pT3_uid322_invPolyEval_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal sm0_uid688_pT3_uid322_invPolyEval_s1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid688_pT3_uid322_invPolyEval_reset : std_logic;
    signal sm0_uid688_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal sumAb_uid689_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (49 downto 0);
    signal lowRangeB_uid690_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid690_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid691_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0_uid693_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (51 downto 0);
    signal lowRangeA_uid694_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid694_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid695_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a1high_uid696_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a1high_uid696_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a1high_uid696_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a1high_uid696_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a1_uid697_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a2_uid698_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a2_uid698_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a2_uid698_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a2_uid698_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal lev1_a3_uid699_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (8 downto 0);
    signal lev1_a3_uid699_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (8 downto 0);
    signal lev1_a3_uid699_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (8 downto 0);
    signal lev1_a3_uid699_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (8 downto 0);
    signal lev2_a0_uid700_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a0_uid700_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a0_uid700_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a0_uid700_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (52 downto 0);
    signal lev2_a1_uid701_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (18 downto 0);
    signal lev2_a1_uid701_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lev2_a1_uid701_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (18 downto 0);
    signal lev2_a1_uid701_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeA_uid702_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid702_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid703_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (51 downto 0);
    signal lev3_a0high_uid704_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (52 downto 0);
    signal lev3_a0high_uid704_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (52 downto 0);
    signal lev3_a0high_uid704_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (52 downto 0);
    signal lev3_a0high_uid704_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (52 downto 0);
    signal lev3_a0_uid705_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (53 downto 0);
    signal lowRangeA_uid706_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid706_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid707_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (52 downto 0);
    signal lev4_a0high_uid708_pT3_uid322_invPolyEval_a : STD_LOGIC_VECTOR (54 downto 0);
    signal lev4_a0high_uid708_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (54 downto 0);
    signal lev4_a0high_uid708_pT3_uid322_invPolyEval_o : STD_LOGIC_VECTOR (54 downto 0);
    signal lev4_a0high_uid708_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (53 downto 0);
    signal lev4_a0_uid709_pT3_uid322_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal osig_uid710_pT3_uid322_invPolyEval_in : STD_LOGIC_VECTOR (49 downto 0);
    signal osig_uid710_pT3_uid322_invPolyEval_b : STD_LOGIC_VECTOR (40 downto 0);
    signal nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (41 downto 0);
    signal topRangeX_uid724_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeY_uid725_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid743_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (33 downto 0);
    signal aboveLeftY_uid743_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightBottomX_uid744_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (24 downto 0);
    signal rightBottomX_uid744_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid772_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid772_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightBottomX_bottomExtension_uid775_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_mergedSignalTM_uid777_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftX_uid793_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (24 downto 0);
    signal aboveLeftX_uid793_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal aboveLeftY_uid794_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid794_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_uid795_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_uid795_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomY_uid796_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rightBottomY_uid796_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid800_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid800_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid800_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid800_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm0_uid800_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid801_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid801_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid801_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm0_uid801_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm0_uid801_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm1_uid802_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm1_uid802_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm1_uid802_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm1_uid802_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm1_uid802_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid803_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid803_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid803_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm0_uid803_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm0_uid803_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid804_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid804_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid804_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid804_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm0_uid804_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid805_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal sm0_uid805_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid805_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal sm0_uid805_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm0_uid805_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid806_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid806_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid806_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sm0_uid806_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm0_uid806_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal sm1_uid807_pT4_uid329_invPolyEval_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm1_uid807_pT4_uid329_invPolyEval_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm1_uid807_pT4_uid329_invPolyEval_s1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sm1_uid807_pT4_uid329_invPolyEval_reset : std_logic;
    signal sm1_uid807_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal sumAb_uid808_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (67 downto 0);
    signal sumAb_uid809_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (49 downto 0);
    signal sumAb_uid810_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (49 downto 0);
    signal lowRangeA_uid811_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid811_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid812_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (66 downto 0);
    signal lev1_a0high_uid813_pT4_uid329_invPolyEval_a : STD_LOGIC_VECTOR (67 downto 0);
    signal lev1_a0high_uid813_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (67 downto 0);
    signal lev1_a0high_uid813_pT4_uid329_invPolyEval_o : STD_LOGIC_VECTOR (67 downto 0);
    signal lev1_a0high_uid813_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (67 downto 0);
    signal lev1_a0_uid814_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (68 downto 0);
    signal lowRangeB_uid815_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid815_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid816_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_a : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_o : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a1_uid818_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (51 downto 0);
    signal lev2_a0_uid819_pT4_uid329_invPolyEval_a : STD_LOGIC_VECTOR (69 downto 0);
    signal lev2_a0_uid819_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (69 downto 0);
    signal lev2_a0_uid819_pT4_uid329_invPolyEval_o : STD_LOGIC_VECTOR (69 downto 0);
    signal lev2_a0_uid819_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (69 downto 0);
    signal lev3_a0_uid820_pT4_uid329_invPolyEval_a : STD_LOGIC_VECTOR (70 downto 0);
    signal lev3_a0_uid820_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (70 downto 0);
    signal lev3_a0_uid820_pT4_uid329_invPolyEval_o : STD_LOGIC_VECTOR (70 downto 0);
    signal lev3_a0_uid820_pT4_uid329_invPolyEval_q : STD_LOGIC_VECTOR (70 downto 0);
    signal osig_uid821_pT4_uid329_invPolyEval_in : STD_LOGIC_VECTOR (66 downto 0);
    signal osig_uid821_pT4_uid329_invPolyEval_b : STD_LOGIC_VECTOR (52 downto 0);
    signal memoryC1_uid272_invTables_q_const_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage0Idx1_uid829_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0Idx2_uid832_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx3Pad24_uid833_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage0Idx3_uid835_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx4_uid838_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx5Pad40_uid839_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (39 downto 0);
    signal leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (12 downto 0);
    signal leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal leftShiftStage0Idx5_uid841_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal leftShiftStage0Idx6_uid844_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx1_uid850_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2_uid853_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (49 downto 0);
    signal leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (49 downto 0);
    signal leftShiftStage1Idx3_uid856_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx4_uid859_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx5_uid862_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx6_uid865_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx7_uid868_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage0Idx1_uid876_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0Idx2_uid879_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage0Idx3_uid882_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx4_uid885_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (12 downto 0);
    signal leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal leftShiftStage0Idx5_uid888_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal leftShiftStage0Idx6_uid891_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx1_uid897_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2_uid900_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (49 downto 0);
    signal leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (49 downto 0);
    signal leftShiftStage1Idx3_uid903_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx4_uid906_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx5_uid909_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx6_uid912_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx7_uid915_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal wIntCst_uid921_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_a : STD_LOGIC_VECTOR (18 downto 0);
    signal shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (18 downto 0);
    signal shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_o : STD_LOGIC_VECTOR (18 downto 0);
    signal shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng16_uid923_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (93 downto 0);
    signal rightShiftStage0Idx1_uid925_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0Idx2Rng32_uid926_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (77 downto 0);
    signal rightShiftStage0Idx2_uid928_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0Idx3Rng48_uid929_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage0Idx3_uid931_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0Idx4Rng64_uid932_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage0Idx4Pad64_uid933_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx4_uid934_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0Idx5Rng80_uid935_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx5Pad80_uid936_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (79 downto 0);
    signal rightShiftStage0Idx5_uid937_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0Idx6Rng96_uid938_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal rightShiftStage0Idx6Pad96_uid939_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (95 downto 0);
    signal rightShiftStage0Idx6_uid940_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx1Rng2_uid944_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (107 downto 0);
    signal rightShiftStage1Idx1_uid946_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx2Rng4_uid947_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (105 downto 0);
    signal rightShiftStage1Idx2_uid949_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx3Rng6_uid950_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (103 downto 0);
    signal rightShiftStage1Idx3_uid952_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx4Rng8_uid953_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (101 downto 0);
    signal rightShiftStage1Idx4_uid955_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx5Rng10_uid956_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (99 downto 0);
    signal rightShiftStage1Idx5Pad10_uid957_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rightShiftStage1Idx5_uid958_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx6Rng12_uid959_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (97 downto 0);
    signal rightShiftStage1Idx6Pad12_uid960_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx6_uid961_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1Idx7Rng14_uid962_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (95 downto 0);
    signal rightShiftStage1Idx7Pad14_uid963_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal rightShiftStage1Idx7_uid964_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage2Idx1Rng1_uid967_alignedResultFraction_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (108 downto 0);
    signal rightShiftStage2Idx1_uid969_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (109 downto 0);
    signal leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage0Idx1_uid979_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (37 downto 0);
    signal leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (37 downto 0);
    signal leftShiftStage0Idx2_uid982_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx3_uid985_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0Idx4_uid988_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage0Idx5_uid991_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage0Idx6_uid994_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx1_uid1000_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx2_uid1003_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx3_uid1006_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (49 downto 0);
    signal leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (49 downto 0);
    signal leftShiftStage1Idx4_uid1009_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx5_uid1012_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage1Idx6_uid1015_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx7_uid1018_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_s : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im0_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im0_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im0_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im0_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im3_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im3_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im3_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im3_q : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs5_in : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs5_b : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im6_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im6_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im6_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im6_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im6_q : STD_LOGIC_VECTOR (34 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs8_b : STD_LOGIC_VECTOR (16 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im9_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im9_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im9_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im9_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im9_q : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im12_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im12_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im12_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im12_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im15_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im15_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im15_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im15_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im15_q : STD_LOGIC_VECTOR (34 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im18_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im18_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im18_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im18_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im18_q : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im21_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im21_b0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im21_s1 : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im21_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im21_q : STD_LOGIC_VECTOR (35 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im24_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im24_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im24_s1 : STD_LOGIC_VECTOR (34 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_im24_reset : std_logic;
    signal qDivProd_uid127_block_rsrvd_fix_im24_q : STD_LOGIC_VECTOR (34 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_join_27_q : STD_LOGIC_VECTOR (106 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_28_q : STD_LOGIC_VECTOR (53 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_28_qint : STD_LOGIC_VECTOR (53 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_join_29_q : STD_LOGIC_VECTOR (89 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_30_q : STD_LOGIC_VECTOR (53 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_30_qint : STD_LOGIC_VECTOR (53 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_join_31_q : STD_LOGIC_VECTOR (88 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_32_q : STD_LOGIC_VECTOR (71 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_32_qint : STD_LOGIC_VECTOR (71 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_34_q : STD_LOGIC_VECTOR (70 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_align_34_qint : STD_LOGIC_VECTOR (70 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_0_a : STD_LOGIC_VECTOR (107 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_0_b : STD_LOGIC_VECTOR (107 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_0_o : STD_LOGIC_VECTOR (107 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_0_q : STD_LOGIC_VECTOR (107 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_1_a : STD_LOGIC_VECTOR (89 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_1_b : STD_LOGIC_VECTOR (89 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_1_o : STD_LOGIC_VECTOR (89 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_0_1_q : STD_LOGIC_VECTOR (89 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_1_0_a : STD_LOGIC_VECTOR (108 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_1_0_b : STD_LOGIC_VECTOR (108 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_1_0_o : STD_LOGIC_VECTOR (108 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_1_0_q : STD_LOGIC_VECTOR (108 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_2_0_a : STD_LOGIC_VECTOR (109 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_2_0_b : STD_LOGIC_VECTOR (109 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_2_0_o : STD_LOGIC_VECTOR (109 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q : STD_LOGIC_VECTOR (109 downto 0);
    signal memoryC0_uid242_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid242_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid242_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid242_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid242_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid242_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid243_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid243_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid243_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid243_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid243_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid243_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid244_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid244_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid244_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid244_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid244_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid244_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid245_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid245_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid245_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid245_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid245_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid245_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid246_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid246_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid246_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid246_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid246_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid246_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid247_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid247_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid247_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid247_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid247_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid247_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid248_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid248_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid248_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid248_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid248_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid248_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid249_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid249_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid249_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid249_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid249_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid249_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid250_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid250_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid250_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid250_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid250_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid250_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid251_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid251_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid251_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid251_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid251_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid251_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid252_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid252_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid252_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid252_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid252_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid252_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid253_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid253_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid253_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid253_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid253_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid253_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid254_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid254_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid254_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid254_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid254_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid254_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid255_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid255_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid255_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid255_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid255_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid255_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid256_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid256_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid256_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid256_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid256_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC0_uid256_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid260_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid260_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid260_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid260_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid260_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid260_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid261_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid261_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid261_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid261_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid261_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid261_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid262_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid262_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid262_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid262_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid262_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid262_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid263_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid263_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid263_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid263_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid263_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid263_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid264_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid264_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid264_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid264_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid264_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid264_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid265_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid265_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid265_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid265_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid265_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid265_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid266_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid266_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid266_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid266_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid266_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid266_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid267_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid267_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid267_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid267_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid267_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid267_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid268_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid268_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid268_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid268_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid268_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid268_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid269_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid269_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid269_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid269_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid269_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid269_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid270_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid270_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid270_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid270_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid270_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid270_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid271_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid271_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid271_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid271_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid271_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC1_uid271_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid275_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid275_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid275_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid275_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid275_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid275_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid276_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid276_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid276_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid276_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid276_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid276_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid277_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid277_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid277_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid277_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid277_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid277_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid278_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid278_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid278_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid278_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid278_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid278_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid279_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid279_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid279_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid279_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid279_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid279_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid280_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid280_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid280_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid280_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid280_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid280_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid281_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid281_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid281_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid281_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid281_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid281_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid282_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid282_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid282_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid282_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid282_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid282_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid283_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid283_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid283_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid283_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid283_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid283_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC2_uid284_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid284_invTables_lutmem_ia : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC2_uid284_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid284_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC2_uid284_invTables_lutmem_ir : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC2_uid284_invTables_lutmem_r : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC3_uid287_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid287_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid287_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid287_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid287_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid287_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid288_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid288_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid288_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid288_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid288_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid288_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid289_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid289_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid289_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid289_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid289_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid289_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid290_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid290_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid290_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid290_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid290_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid290_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid291_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid291_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid291_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid291_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid291_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid291_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid292_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid292_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid292_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid292_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid292_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid292_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid293_invTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid293_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid293_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid293_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC3_uid293_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC3_uid293_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid296_invTables_lutmem_reset0 : std_logic;
    signal memoryC4_uid296_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid296_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid296_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid296_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid296_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid297_invTables_lutmem_reset0 : std_logic;
    signal memoryC4_uid297_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid297_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid297_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid297_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid297_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid298_invTables_lutmem_reset0 : std_logic;
    signal memoryC4_uid298_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid298_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid298_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid298_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid298_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid299_invTables_lutmem_reset0 : std_logic;
    signal memoryC4_uid299_invTables_lutmem_ia : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid299_invTables_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid299_invTables_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC4_uid299_invTables_lutmem_ir : STD_LOGIC_VECTOR (3 downto 0);
    signal memoryC4_uid299_invTables_lutmem_r : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (6 downto 0);
    signal rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (2 downto 0);
    signal topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (11 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (17 downto 0);
    signal qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_qDivProd_uid127_block_rsrvd_fix_im24_q_1_q : STD_LOGIC_VECTOR (34 downto 0);
    signal redist4_leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist6_osig_uid821_pT4_uid329_invPolyEval_b_1_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist7_highABits_uid707_pT3_uid322_invPolyEval_b_1_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist8_lowRangeA_uid706_pT3_uid322_invPolyEval_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_n0_uid664_pT3_uid322_invPolyEval_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_n1_uid663_pT3_uid322_invPolyEval_b_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist11_vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist13_vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (57 downto 0);
    signal redist15_r_uid371_lzoFracX_uid74_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist16_vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist20_vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_r_uid240_lzFracY_uid63_block_rsrvd_fix_q_14_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist22_vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist26_vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_sRPostExc_uid202_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_excREnc_uid192_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist29_excRNaN_uid190_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal redist33_qDivProd_opB_uid144_block_rsrvd_fix_b_5_q : STD_LOGIC_VECTOR (51 downto 0);
    signal redist34_expXIncludingSubnormals_uid140_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist35_prodExpPreNorm_uid128_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist36_expYIncludingSubnormals_uid124_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (53 downto 0);
    signal redist38_expPostRndF_uid115_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist39_expPostRndF_uid115_block_rsrvd_fix_b_5_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist41_fwdExponentResult_uid109_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist42_subnormalRes_uid93_block_rsrvd_fix_n_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_subnormalRes_uid93_block_rsrvd_fix_n_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_subnormalRes_uid93_block_rsrvd_fix_n_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_divValPreNormSelect_uid80_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist47_yPE_uid69_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (40 downto 0);
    signal redist48_yPE_uid69_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (40 downto 0);
    signal redist49_yPE_uid69_block_rsrvd_fix_b_7_q : STD_LOGIC_VECTOR (40 downto 0);
    signal redist50_yAddr_uid68_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist51_yAddr_uid68_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist52_yAddr_uid68_block_rsrvd_fix_b_7_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist53_yAddr_uid68_block_rsrvd_fix_b_10_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (52 downto 0);
    signal redist55_signR_uid57_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_excR_y_uid50_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_excN_y_uid47_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_excI_y_uid46_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_excI_y_uid46_block_rsrvd_fix_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_excZ_y_uid45_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_excZ_y_uid45_block_rsrvd_fix_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_excR_x_uid33_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_excN_x_uid30_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_excI_x_uid29_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist65_excI_x_uid29_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist66_excZ_x_uid28_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist67_excZ_x_uid28_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist68_signY_uid15_block_rsrvd_fix_b_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist70_expX_uid10_block_rsrvd_fix_b_3_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_reset0 : std_logic;
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_iq : STD_LOGIC_VECTOR (16 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i : signal is true;
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_eq : std_logic;
    attribute preserve of redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_eq : signal is true;
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_reset0 : std_logic;
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i : signal is true;
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_eq : std_logic;
    attribute preserve of redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_eq : signal is true;
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_reset0 : std_logic;
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i : signal is true;
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_eq : std_logic;
    attribute preserve of redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_eq : signal is true;
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_reset0 : std_logic;
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_ia : STD_LOGIC_VECTOR (10 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_iq : STD_LOGIC_VECTOR (10 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i : signal is true;
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_eq : std_logic;
    attribute preserve of redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_eq : signal is true;
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist69_expY_uid13_block_rsrvd_fix_b_15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- fracY_uid14_block_rsrvd_fix(BITSELECT,13)@0
    fracY_uid14_block_rsrvd_fix_b <= in_1(51 downto 0);

    -- paddingY_uid16_block_rsrvd_fix(CONSTANT,15)
    paddingY_uid16_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000";

    -- fracXIsZero_uid43_block_rsrvd_fix(LOGICAL,42)@0
    fracXIsZero_uid43_block_rsrvd_fix_q <= "1" WHEN paddingY_uid16_block_rsrvd_fix_q = fracY_uid14_block_rsrvd_fix_b ELSE "0";

    -- cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    cstAllOWE_uid19_block_rsrvd_fix_q <= "11111111111";

    -- expY_uid13_block_rsrvd_fix(BITSELECT,12)@0
    expY_uid13_block_rsrvd_fix_b <= in_1(62 downto 52);

    -- expXIsMax_uid42_block_rsrvd_fix(LOGICAL,41)@0
    expXIsMax_uid42_block_rsrvd_fix_q <= "1" WHEN expY_uid13_block_rsrvd_fix_b = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";

    -- excI_y_uid46_block_rsrvd_fix(LOGICAL,45)@0 + 1
    excI_y_uid46_block_rsrvd_fix_qi <= expXIsMax_uid42_block_rsrvd_fix_q and fracXIsZero_uid43_block_rsrvd_fix_q;
    excI_y_uid46_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_y_uid46_block_rsrvd_fix_qi, xout => excI_y_uid46_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist58_excI_y_uid46_block_rsrvd_fix_q_15(DELAY,1186)
    redist58_excI_y_uid46_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_y_uid46_block_rsrvd_fix_q, xout => redist58_excI_y_uid46_block_rsrvd_fix_q_15_q, clk => clock, aclr => resetn );

    -- fracX_uid11_block_rsrvd_fix(BITSELECT,10)@12
    fracX_uid11_block_rsrvd_fix_b <= in_0(51 downto 0);

    -- fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@12
    fracXIsZero_uid26_block_rsrvd_fix_q <= "1" WHEN paddingY_uid16_block_rsrvd_fix_q = fracX_uid11_block_rsrvd_fix_b ELSE "0";

    -- expX_uid10_block_rsrvd_fix(BITSELECT,9)@12
    expX_uid10_block_rsrvd_fix_b <= in_0(62 downto 52);

    -- expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@12
    expXIsMax_uid25_block_rsrvd_fix_q <= "1" WHEN expX_uid10_block_rsrvd_fix_b = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";

    -- excI_x_uid29_block_rsrvd_fix(LOGICAL,28)@12 + 1
    excI_x_uid29_block_rsrvd_fix_qi <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsZero_uid26_block_rsrvd_fix_q;
    excI_x_uid29_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_x_uid29_block_rsrvd_fix_qi, xout => excI_x_uid29_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist64_excI_x_uid29_block_rsrvd_fix_q_3(DELAY,1192)
    redist64_excI_x_uid29_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excI_x_uid29_block_rsrvd_fix_q, xout => redist64_excI_x_uid29_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- excXIYI_uid189_block_rsrvd_fix(LOGICAL,188)@15
    excXIYI_uid189_block_rsrvd_fix_q <= redist64_excI_x_uid29_block_rsrvd_fix_q_3_q and redist58_excI_y_uid46_block_rsrvd_fix_q_15_q;

    -- fracXIsNotZero_uid44_block_rsrvd_fix(LOGICAL,43)@0
    fracXIsNotZero_uid44_block_rsrvd_fix_q <= not (fracXIsZero_uid43_block_rsrvd_fix_q);

    -- excN_y_uid47_block_rsrvd_fix(LOGICAL,46)@0 + 1
    excN_y_uid47_block_rsrvd_fix_qi <= expXIsMax_uid42_block_rsrvd_fix_q and fracXIsNotZero_uid44_block_rsrvd_fix_q;
    excN_y_uid47_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_y_uid47_block_rsrvd_fix_qi, xout => excN_y_uid47_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist57_excN_y_uid47_block_rsrvd_fix_q_15(DELAY,1185)
    redist57_excN_y_uid47_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_y_uid47_block_rsrvd_fix_q, xout => redist57_excN_y_uid47_block_rsrvd_fix_q_15_q, clk => clock, aclr => resetn );

    -- fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@12
    fracXIsNotZero_uid27_block_rsrvd_fix_q <= not (fracXIsZero_uid26_block_rsrvd_fix_q);

    -- excN_x_uid30_block_rsrvd_fix(LOGICAL,29)@12 + 1
    excN_x_uid30_block_rsrvd_fix_qi <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsNotZero_uid27_block_rsrvd_fix_q;
    excN_x_uid30_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_x_uid30_block_rsrvd_fix_qi, xout => excN_x_uid30_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist63_excN_x_uid30_block_rsrvd_fix_q_3(DELAY,1191)
    redist63_excN_x_uid30_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excN_x_uid30_block_rsrvd_fix_q, xout => redist63_excN_x_uid30_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    cstAllZWE_uid21_block_rsrvd_fix_q <= "00000000000";

    -- expXIsZero_uid41_block_rsrvd_fix(LOGICAL,40)@0
    expXIsZero_uid41_block_rsrvd_fix_q <= "1" WHEN expY_uid13_block_rsrvd_fix_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- excZ_y_uid45_block_rsrvd_fix(LOGICAL,44)@0 + 1
    excZ_y_uid45_block_rsrvd_fix_qi <= expXIsZero_uid41_block_rsrvd_fix_q and fracXIsZero_uid43_block_rsrvd_fix_q;
    excZ_y_uid45_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_y_uid45_block_rsrvd_fix_qi, xout => excZ_y_uid45_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist60_excZ_y_uid45_block_rsrvd_fix_q_15(DELAY,1188)
    redist60_excZ_y_uid45_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_y_uid45_block_rsrvd_fix_q, xout => redist60_excZ_y_uid45_block_rsrvd_fix_q_15_q, clk => clock, aclr => resetn );

    -- expXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@12
    expXIsZero_uid24_block_rsrvd_fix_q <= "1" WHEN expX_uid10_block_rsrvd_fix_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- excZ_x_uid28_block_rsrvd_fix(LOGICAL,27)@12 + 1
    excZ_x_uid28_block_rsrvd_fix_qi <= expXIsZero_uid24_block_rsrvd_fix_q and fracXIsZero_uid26_block_rsrvd_fix_q;
    excZ_x_uid28_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_x_uid28_block_rsrvd_fix_qi, xout => excZ_x_uid28_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist66_excZ_x_uid28_block_rsrvd_fix_q_3(DELAY,1194)
    redist66_excZ_x_uid28_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excZ_x_uid28_block_rsrvd_fix_q, xout => redist66_excZ_x_uid28_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- excXZYZ_uid188_block_rsrvd_fix(LOGICAL,187)@15
    excXZYZ_uid188_block_rsrvd_fix_q <= redist66_excZ_x_uid28_block_rsrvd_fix_q_3_q and redist60_excZ_y_uid45_block_rsrvd_fix_q_15_q;

    -- excRNaN_uid190_block_rsrvd_fix(LOGICAL,189)@15 + 1
    excRNaN_uid190_block_rsrvd_fix_qi <= excXZYZ_uid188_block_rsrvd_fix_q or redist63_excN_x_uid30_block_rsrvd_fix_q_3_q or redist57_excN_y_uid47_block_rsrvd_fix_q_15_q or excXIYI_uid189_block_rsrvd_fix_q;
    excRNaN_uid190_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excRNaN_uid190_block_rsrvd_fix_qi, xout => excRNaN_uid190_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist29_excRNaN_uid190_block_rsrvd_fix_q_2(DELAY,1157)
    redist29_excRNaN_uid190_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excRNaN_uid190_block_rsrvd_fix_q, xout => redist29_excRNaN_uid190_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- invExcRNaN_uid201_block_rsrvd_fix(LOGICAL,200)@17
    invExcRNaN_uid201_block_rsrvd_fix_q <= not (redist29_excRNaN_uid190_block_rsrvd_fix_q_2_q);

    -- signY_uid15_block_rsrvd_fix(BITSELECT,14)@0
    signY_uid15_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(63 downto 63));

    -- redist68_signY_uid15_block_rsrvd_fix_b_12(DELAY,1196)
    redist68_signY_uid15_block_rsrvd_fix_b_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signY_uid15_block_rsrvd_fix_b, xout => redist68_signY_uid15_block_rsrvd_fix_b_12_q, clk => clock, aclr => resetn );

    -- signX_uid12_block_rsrvd_fix(BITSELECT,11)@12
    signX_uid12_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(63 downto 63));

    -- signR_uid57_block_rsrvd_fix(LOGICAL,56)@12 + 1
    signR_uid57_block_rsrvd_fix_qi <= signX_uid12_block_rsrvd_fix_b xor redist68_signY_uid15_block_rsrvd_fix_b_12_q;
    signR_uid57_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signR_uid57_block_rsrvd_fix_qi, xout => signR_uid57_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist55_signR_uid57_block_rsrvd_fix_q_5(DELAY,1183)
    redist55_signR_uid57_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => signR_uid57_block_rsrvd_fix_q, xout => redist55_signR_uid57_block_rsrvd_fix_q_5_q, clk => clock, aclr => resetn );

    -- sRPostExc_uid202_block_rsrvd_fix(LOGICAL,201)@17 + 1
    sRPostExc_uid202_block_rsrvd_fix_qi <= redist55_signR_uid57_block_rsrvd_fix_q_5_q and invExcRNaN_uid201_block_rsrvd_fix_q;
    sRPostExc_uid202_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sRPostExc_uid202_block_rsrvd_fix_qi, xout => sRPostExc_uid202_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist27_sRPostExc_uid202_block_rsrvd_fix_q_5(DELAY,1155)
    redist27_sRPostExc_uid202_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => sRPostExc_uid202_block_rsrvd_fix_q, xout => redist27_sRPostExc_uid202_block_rsrvd_fix_q_5_q, clk => clock, aclr => resetn );

    -- xMSB_uid105_block_rsrvd_fix(BITSELECT,104)@16
    xMSB_uid105_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expRPostNormHandling_uid88_block_rsrvd_fix_q(15 downto 15));

    -- invExpRPostNormHandlingSign_uid107_block_rsrvd_fix(LOGICAL,106)@16
    invExpRPostNormHandlingSign_uid107_block_rsrvd_fix_q <= not (xMSB_uid105_block_rsrvd_fix_b);

    -- zs_uid205_lzFracY_uid63_block_rsrvd_fix(CONSTANT,204)
    zs_uid205_lzFracY_uid63_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- invExpXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@12
    invExpXIsMax_uid31_block_rsrvd_fix_q <= not (expXIsMax_uid25_block_rsrvd_fix_q);

    -- InvExpXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@12
    InvExpXIsZero_uid32_block_rsrvd_fix_q <= not (expXIsZero_uid24_block_rsrvd_fix_q);

    -- excR_x_uid33_block_rsrvd_fix(LOGICAL,32)@12
    excR_x_uid33_block_rsrvd_fix_q <= InvExpXIsZero_uid32_block_rsrvd_fix_q and invExpXIsMax_uid31_block_rsrvd_fix_q;

    -- hiddenOnefracXForLZC_uid73_block_rsrvd_fix(BITJOIN,72)@12
    hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q <= excR_x_uid33_block_rsrvd_fix_q & fracX_uid11_block_rsrvd_fix_b;

    -- rVStage_uid337_lzoFracX_uid74_block_rsrvd_fix(BITSELECT,336)@12
    rVStage_uid337_lzoFracX_uid74_block_rsrvd_fix_b <= hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q(52 downto 21);

    -- vCount_uid338_lzoFracX_uid74_block_rsrvd_fix(LOGICAL,337)@12
    vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q <= "1" WHEN rVStage_uid337_lzoFracX_uid74_block_rsrvd_fix_b = zs_uid205_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist20_vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q_1(DELAY,1148)
    redist20_vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q, xout => redist20_vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- zs_uid213_lzFracY_uid63_block_rsrvd_fix(CONSTANT,212)
    zs_uid213_lzFracY_uid63_block_rsrvd_fix_q <= "0000000000000000";

    -- vStage_uid340_lzoFracX_uid74_block_rsrvd_fix(BITSELECT,339)@12
    vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_in <= hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q(20 downto 0);
    vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b <= vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_in(20 downto 0);

    -- mO_uid208_lzFracY_uid63_block_rsrvd_fix(CONSTANT,207)
    mO_uid208_lzFracY_uid63_block_rsrvd_fix_q <= "11111111111";

    -- cStage_uid341_lzoFracX_uid74_block_rsrvd_fix(BITJOIN,340)@12
    cStage_uid341_lzoFracX_uid74_block_rsrvd_fix_q <= vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b & mO_uid208_lzFracY_uid63_block_rsrvd_fix_q;

    -- vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix(MUX,342)@12
    vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_s <= vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q;
    vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_combproc: PROCESS (vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_s, rVStage_uid337_lzoFracX_uid74_block_rsrvd_fix_b, cStage_uid341_lzoFracX_uid74_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid337_lzoFracX_uid74_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_q <= cStage_uid341_lzoFracX_uid74_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select(BITSELECT,1116)@12
    rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid343_lzoFracX_uid74_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid346_lzoFracX_uid74_block_rsrvd_fix(LOGICAL,345)@12
    vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q <= "1" WHEN rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b = zs_uid213_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist18_vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q_1(DELAY,1146)
    redist18_vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q, xout => redist18_vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- zs_uid219_lzFracY_uid63_block_rsrvd_fix(CONSTANT,218)
    zs_uid219_lzFracY_uid63_block_rsrvd_fix_q <= "00000000";

    -- vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix(MUX,348)@12
    vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_s <= vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q;
    vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_combproc: PROCESS (vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_s, rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b, rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid345_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select(BITSELECT,1117)@12
    rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid349_lzoFracX_uid74_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid352_lzoFracX_uid74_block_rsrvd_fix(LOGICAL,351)@12
    vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q <= "1" WHEN rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b = zs_uid219_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist17_vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q_1(DELAY,1145)
    redist17_vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q, xout => redist17_vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- zs_uid225_lzFracY_uid63_block_rsrvd_fix(CONSTANT,224)
    zs_uid225_lzFracY_uid63_block_rsrvd_fix_q <= "0000";

    -- vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix(MUX,354)@12
    vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_s <= vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q;
    vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_combproc: PROCESS (vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_s, rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b, rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid351_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select(BITSELECT,1118)@12
    rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid355_lzoFracX_uid74_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid358_lzoFracX_uid74_block_rsrvd_fix(LOGICAL,357)@12
    vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q <= "1" WHEN rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b = zs_uid225_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist16_vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q_1(DELAY,1144)
    redist16_vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q, xout => redist16_vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- zs_uid231_lzFracY_uid63_block_rsrvd_fix(CONSTANT,230)
    zs_uid231_lzFracY_uid63_block_rsrvd_fix_q <= "00";

    -- vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix(MUX,360)@12 + 1
    vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_s <= vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q;
    vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid357_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select(BITSELECT,1119)@13
    rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid361_lzoFracX_uid74_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid364_lzoFracX_uid74_block_rsrvd_fix(LOGICAL,363)@13
    vCount_uid364_lzoFracX_uid74_block_rsrvd_fix_q <= "1" WHEN rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b = zs_uid231_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix(MUX,366)@13
    vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_s <= vCount_uid364_lzoFracX_uid74_block_rsrvd_fix_q;
    vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_combproc: PROCESS (vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_s, rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b, rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_q <= rVStage_uid363_lzoFracX_uid74_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid369_lzoFracX_uid74_block_rsrvd_fix(BITSELECT,368)@13
    rVStage_uid369_lzoFracX_uid74_block_rsrvd_fix_b <= vStagei_uid367_lzoFracX_uid74_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid370_lzoFracX_uid74_block_rsrvd_fix(LOGICAL,369)@13
    vCount_uid370_lzoFracX_uid74_block_rsrvd_fix_q <= "1" WHEN rVStage_uid369_lzoFracX_uid74_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid371_lzoFracX_uid74_block_rsrvd_fix(BITJOIN,370)@13
    r_uid371_lzoFracX_uid74_block_rsrvd_fix_q <= redist20_vCount_uid338_lzoFracX_uid74_block_rsrvd_fix_q_1_q & redist18_vCount_uid346_lzoFracX_uid74_block_rsrvd_fix_q_1_q & redist17_vCount_uid352_lzoFracX_uid74_block_rsrvd_fix_q_1_q & redist16_vCount_uid358_lzoFracX_uid74_block_rsrvd_fix_q_1_q & vCount_uid364_lzoFracX_uid74_block_rsrvd_fix_q & vCount_uid370_lzoFracX_uid74_block_rsrvd_fix_q;

    -- redist15_r_uid371_lzoFracX_uid74_block_rsrvd_fix_q_2(DELAY,1143)
    redist15_r_uid371_lzoFracX_uid74_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 6, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid371_lzoFracX_uid74_block_rsrvd_fix_q, xout => redist15_r_uid371_lzoFracX_uid74_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- invExpXIsMax_uid48_block_rsrvd_fix(LOGICAL,47)@0
    invExpXIsMax_uid48_block_rsrvd_fix_q <= not (expXIsMax_uid42_block_rsrvd_fix_q);

    -- InvExpXIsZero_uid49_block_rsrvd_fix(LOGICAL,48)@0
    InvExpXIsZero_uid49_block_rsrvd_fix_q <= not (expXIsZero_uid41_block_rsrvd_fix_q);

    -- excR_y_uid50_block_rsrvd_fix(LOGICAL,49)@0
    excR_y_uid50_block_rsrvd_fix_q <= InvExpXIsZero_uid49_block_rsrvd_fix_q and invExpXIsMax_uid48_block_rsrvd_fix_q;

    -- fracOYForLZC_uid62_block_rsrvd_fix(BITJOIN,61)@0
    fracOYForLZC_uid62_block_rsrvd_fix_q <= excR_y_uid50_block_rsrvd_fix_q & fracY_uid14_block_rsrvd_fix_b;

    -- rVStage_uid206_lzFracY_uid63_block_rsrvd_fix(BITSELECT,205)@0
    rVStage_uid206_lzFracY_uid63_block_rsrvd_fix_b <= fracOYForLZC_uid62_block_rsrvd_fix_q(52 downto 21);

    -- vCount_uid207_lzFracY_uid63_block_rsrvd_fix(LOGICAL,206)@0
    vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q <= "1" WHEN rVStage_uid206_lzFracY_uid63_block_rsrvd_fix_b = zs_uid205_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist26_vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q_1(DELAY,1154)
    redist26_vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q, xout => redist26_vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- vStage_uid209_lzFracY_uid63_block_rsrvd_fix(BITSELECT,208)@0
    vStage_uid209_lzFracY_uid63_block_rsrvd_fix_in <= fracOYForLZC_uid62_block_rsrvd_fix_q(20 downto 0);
    vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b <= vStage_uid209_lzFracY_uid63_block_rsrvd_fix_in(20 downto 0);

    -- cStage_uid210_lzFracY_uid63_block_rsrvd_fix(BITJOIN,209)@0
    cStage_uid210_lzFracY_uid63_block_rsrvd_fix_q <= vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b & mO_uid208_lzFracY_uid63_block_rsrvd_fix_q;

    -- vStagei_uid212_lzFracY_uid63_block_rsrvd_fix(MUX,211)@0
    vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_s <= vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q;
    vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_combproc: PROCESS (vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_s, rVStage_uid206_lzFracY_uid63_block_rsrvd_fix_b, cStage_uid210_lzFracY_uid63_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid206_lzFracY_uid63_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_q <= cStage_uid210_lzFracY_uid63_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,1110)@0
    rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid212_lzFracY_uid63_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid215_lzFracY_uid63_block_rsrvd_fix(LOGICAL,214)@0
    vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q <= "1" WHEN rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = zs_uid213_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist24_vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q_1(DELAY,1152)
    redist24_vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q, xout => redist24_vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid218_lzFracY_uid63_block_rsrvd_fix(MUX,217)@0
    vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_s <= vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q;
    vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_combproc: PROCESS (vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_s, rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b, rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid214_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,1111)@0
    rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid218_lzFracY_uid63_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid221_lzFracY_uid63_block_rsrvd_fix(LOGICAL,220)@0
    vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q <= "1" WHEN rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = zs_uid219_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist23_vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q_1(DELAY,1151)
    redist23_vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q, xout => redist23_vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid224_lzFracY_uid63_block_rsrvd_fix(MUX,223)@0
    vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_s <= vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q;
    vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_combproc: PROCESS (vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_s, rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b, rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid220_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,1112)@0
    rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid224_lzFracY_uid63_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid227_lzFracY_uid63_block_rsrvd_fix(LOGICAL,226)@0
    vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q <= "1" WHEN rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = zs_uid225_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist22_vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q_1(DELAY,1150)
    redist22_vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q, xout => redist22_vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid230_lzFracY_uid63_block_rsrvd_fix(MUX,229)@0 + 1
    vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_s <= vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q;
    vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid226_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,1113)@1
    rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid230_lzFracY_uid63_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid233_lzFracY_uid63_block_rsrvd_fix(LOGICAL,232)@1
    vCount_uid233_lzFracY_uid63_block_rsrvd_fix_q <= "1" WHEN rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b = zs_uid231_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid236_lzFracY_uid63_block_rsrvd_fix(MUX,235)@1
    vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_s <= vCount_uid233_lzFracY_uid63_block_rsrvd_fix_q;
    vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_combproc: PROCESS (vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_s, rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b, rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_q <= rVStage_uid232_lzFracY_uid63_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid238_lzFracY_uid63_block_rsrvd_fix(BITSELECT,237)@1
    rVStage_uid238_lzFracY_uid63_block_rsrvd_fix_b <= vStagei_uid236_lzFracY_uid63_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid239_lzFracY_uid63_block_rsrvd_fix(LOGICAL,238)@1
    vCount_uid239_lzFracY_uid63_block_rsrvd_fix_q <= "1" WHEN rVStage_uid238_lzFracY_uid63_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid240_lzFracY_uid63_block_rsrvd_fix(BITJOIN,239)@1
    r_uid240_lzFracY_uid63_block_rsrvd_fix_q <= redist26_vCount_uid207_lzFracY_uid63_block_rsrvd_fix_q_1_q & redist24_vCount_uid215_lzFracY_uid63_block_rsrvd_fix_q_1_q & redist23_vCount_uid221_lzFracY_uid63_block_rsrvd_fix_q_1_q & redist22_vCount_uid227_lzFracY_uid63_block_rsrvd_fix_q_1_q & vCount_uid233_lzFracY_uid63_block_rsrvd_fix_q & vCount_uid239_lzFracY_uid63_block_rsrvd_fix_q;

    -- redist21_r_uid240_lzFracY_uid63_block_rsrvd_fix_q_14(DELAY,1149)
    redist21_r_uid240_lzFracY_uid63_block_rsrvd_fix_q_14 : dspba_delay
    GENERIC MAP ( width => 6, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => r_uid240_lzFracY_uid63_block_rsrvd_fix_q, xout => redist21_r_uid240_lzFracY_uid63_block_rsrvd_fix_q_14_q, clk => clock, aclr => resetn );

    -- addSubnormAdditions_uid86_block_rsrvd_fix(SUB,85)@15 + 1
    addSubnormAdditions_uid86_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist21_r_uid240_lzFracY_uid63_block_rsrvd_fix_q_14_q);
    addSubnormAdditions_uid86_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & redist15_r_uid371_lzoFracX_uid74_block_rsrvd_fix_q_2_q);
    addSubnormAdditions_uid86_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            addSubnormAdditions_uid86_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            addSubnormAdditions_uid86_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(addSubnormAdditions_uid86_block_rsrvd_fix_a) - UNSIGNED(addSubnormAdditions_uid86_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    addSubnormAdditions_uid86_block_rsrvd_fix_q <= addSubnormAdditions_uid86_block_rsrvd_fix_o(6 downto 0);

    -- leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix(BITSELECT,913)@13
    leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(45 downto 0);
    leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix_in(45 downto 0);

    -- rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix(CONSTANT,454)
    rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix_q <= "0000000";

    -- leftShiftStage1Idx7_uid915_normOFracX_uid75_block_rsrvd_fix(BITJOIN,914)@13
    leftShiftStage1Idx7_uid915_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx7Rng7_uid914_normOFracX_uid75_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix(BITSELECT,910)@13
    leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(46 downto 0);
    leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix_in(46 downto 0);

    -- leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix(CONSTANT,862)
    leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix_q <= "000000";

    -- leftShiftStage1Idx6_uid912_normOFracX_uid75_block_rsrvd_fix(BITJOIN,911)@13
    leftShiftStage1Idx6_uid912_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx6Rng6_uid911_normOFracX_uid75_block_rsrvd_fix_b & leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix(BITSELECT,907)@13
    leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(47 downto 0);
    leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix_in(47 downto 0);

    -- leftShiftStage1Idx5_uid909_normOFracX_uid75_block_rsrvd_fix(BITJOIN,908)@13
    leftShiftStage1Idx5_uid909_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx5Rng5_uid908_normOFracX_uid75_block_rsrvd_fix_b & z4_uid81_block_rsrvd_fix_q;

    -- leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix(BITSELECT,904)@13
    leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(48 downto 0);
    leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix_in(48 downto 0);

    -- leftShiftStage1Idx4_uid906_normOFracX_uid75_block_rsrvd_fix(BITJOIN,905)@13
    leftShiftStage1Idx4_uid906_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx4Rng4_uid905_normOFracX_uid75_block_rsrvd_fix_b & zs_uid225_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix(BITSELECT,901)@13
    leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(49 downto 0);
    leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix_in(49 downto 0);

    -- rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval(CONSTANT,635)
    rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval_q <= "000";

    -- leftShiftStage1Idx3_uid903_normOFracX_uid75_block_rsrvd_fix(BITJOIN,902)@13
    leftShiftStage1Idx3_uid903_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid902_normOFracX_uid75_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval_q;

    -- leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix(BITSELECT,898)@13
    leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(50 downto 0);
    leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix_in(50 downto 0);

    -- leftShiftStage1Idx2_uid900_normOFracX_uid75_block_rsrvd_fix(BITJOIN,899)@13
    leftShiftStage1Idx2_uid900_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid899_normOFracX_uid75_block_rsrvd_fix_b & zs_uid231_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix(BITSELECT,895)@13
    leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix_in <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q(51 downto 0);
    leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix_in(51 downto 0);

    -- leftShiftStage1Idx1_uid897_normOFracX_uid75_block_rsrvd_fix(BITJOIN,896)@13
    leftShiftStage1Idx1_uid897_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid896_normOFracX_uid75_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix(CONSTANT,844)
    leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix_q <= "00000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix(BITSELECT,889)@13
    leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix_in <= redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q(4 downto 0);
    leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix_in(4 downto 0);

    -- leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix(CONSTANT,841)
    leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx6_uid891_normOFracX_uid75_block_rsrvd_fix(BITJOIN,890)@13
    leftShiftStage0Idx6_uid891_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx6Rng48_uid890_normOFracX_uid75_block_rsrvd_fix_b & leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix(BITSELECT,886)@13
    leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix_in <= redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q(12 downto 0);
    leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix_in(12 downto 0);

    -- leftShiftStage0Idx5Pad40_uid839_normY_uid64_block_rsrvd_fix(CONSTANT,838)
    leftShiftStage0Idx5Pad40_uid839_normY_uid64_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000";

    -- leftShiftStage0Idx5_uid888_normOFracX_uid75_block_rsrvd_fix(BITJOIN,887)@13
    leftShiftStage0Idx5_uid888_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx5Rng40_uid887_normOFracX_uid75_block_rsrvd_fix_b & leftShiftStage0Idx5Pad40_uid839_normY_uid64_block_rsrvd_fix_q;

    -- redist19_vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b_1(DELAY,1147)
    redist19_vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b, xout => redist19_vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx4_uid885_normOFracX_uid75_block_rsrvd_fix(BITJOIN,884)@13
    leftShiftStage0Idx4_uid885_normOFracX_uid75_block_rsrvd_fix_q <= redist19_vStage_uid340_lzoFracX_uid74_block_rsrvd_fix_b_1_q & zs_uid205_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix(BITSELECT,880)@13
    leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix_in <= redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q(28 downto 0);
    leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix_in(28 downto 0);

    -- leftShiftStage0Idx3Pad24_uid833_normY_uid64_block_rsrvd_fix(CONSTANT,832)
    leftShiftStage0Idx3Pad24_uid833_normY_uid64_block_rsrvd_fix_q <= "000000000000000000000000";

    -- leftShiftStage0Idx3_uid882_normOFracX_uid75_block_rsrvd_fix(BITJOIN,881)@13
    leftShiftStage0Idx3_uid882_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng24_uid881_normOFracX_uid75_block_rsrvd_fix_b & leftShiftStage0Idx3Pad24_uid833_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix(BITSELECT,877)@13
    leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix_in <= redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q(36 downto 0);
    leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix_in(36 downto 0);

    -- leftShiftStage0Idx2_uid879_normOFracX_uid75_block_rsrvd_fix(BITJOIN,878)@13
    leftShiftStage0Idx2_uid879_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng16_uid878_normOFracX_uid75_block_rsrvd_fix_b & zs_uid213_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix(BITSELECT,874)@13
    leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix_in <= redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q(44 downto 0);
    leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix_in(44 downto 0);

    -- leftShiftStage0Idx1_uid876_normOFracX_uid75_block_rsrvd_fix(BITJOIN,875)@13
    leftShiftStage0Idx1_uid876_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng8_uid875_normOFracX_uid75_block_rsrvd_fix_b & zs_uid219_lzFracY_uid63_block_rsrvd_fix_q;

    -- redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1(DELAY,1174)
    redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 53, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q, xout => redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix(MUX,893)@13
    leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_s <= leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_s, redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q, leftShiftStage0Idx1_uid876_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage0Idx2_uid879_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage0Idx3_uid882_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage0Idx4_uid885_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage0Idx5_uid888_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage0Idx6_uid891_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_s) IS
            WHEN "000" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= redist46_hiddenOnefracXForLZC_uid73_block_rsrvd_fix_q_1_q;
            WHEN "001" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid876_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "010" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid879_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "011" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid882_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "100" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx4_uid885_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "101" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx5_uid888_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "110" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx6_uid891_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "111" => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,1120)@13
    leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select_b <= r_uid371_lzoFracX_uid74_block_rsrvd_fix_q(5 downto 3);
    leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select_c <= r_uid371_lzoFracX_uid74_block_rsrvd_fix_q(2 downto 0);

    -- leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix(MUX,916)@13
    leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_s <= leftShiftStageSel5Dto3_uid893_normOFracX_uid75_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_s, leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx1_uid897_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx2_uid900_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx3_uid903_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx4_uid906_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx5_uid909_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx6_uid912_normOFracX_uid75_block_rsrvd_fix_q, leftShiftStage1Idx7_uid915_normOFracX_uid75_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_s) IS
            WHEN "000" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage0_uid894_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "001" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid897_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "010" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid900_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "011" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid903_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "100" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx4_uid906_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "101" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx5_uid909_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "110" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx6_uid912_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN "111" => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= leftShiftStage1Idx7_uid915_normOFracX_uid75_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist4_leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q_3(DELAY,1132)
    redist4_leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 53, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q, xout => redist4_leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- z4_uid81_block_rsrvd_fix(CONSTANT,80)
    z4_uid81_block_rsrvd_fix_q <= "00000";

    -- oFracXZ4_uid82_block_rsrvd_fix(BITJOIN,81)@16
    oFracXZ4_uid82_block_rsrvd_fix_q <= redist4_leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q_3_q & z4_uid81_block_rsrvd_fix_q;

    -- rightBottomY_uid459_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,458)@13
    rightBottomY_uid459_divValPreNorm_uid76_block_rsrvd_fix_b <= leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q(52 downto 44);

    -- leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix(BITSELECT,866)@1
    leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(45 downto 0);
    leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix_in(45 downto 0);

    -- leftShiftStage1Idx7_uid868_normY_uid64_block_rsrvd_fix(BITJOIN,867)@1
    leftShiftStage1Idx7_uid868_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx7Rng7_uid867_normY_uid64_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix(BITSELECT,863)@1
    leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(46 downto 0);
    leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix_in(46 downto 0);

    -- leftShiftStage1Idx6_uid865_normY_uid64_block_rsrvd_fix(BITJOIN,864)@1
    leftShiftStage1Idx6_uid865_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx6Rng6_uid864_normY_uid64_block_rsrvd_fix_b & leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix(BITSELECT,860)@1
    leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(47 downto 0);
    leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix_in(47 downto 0);

    -- leftShiftStage1Idx5_uid862_normY_uid64_block_rsrvd_fix(BITJOIN,861)@1
    leftShiftStage1Idx5_uid862_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx5Rng5_uid861_normY_uid64_block_rsrvd_fix_b & z4_uid81_block_rsrvd_fix_q;

    -- leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix(BITSELECT,857)@1
    leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(48 downto 0);
    leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix_in(48 downto 0);

    -- leftShiftStage1Idx4_uid859_normY_uid64_block_rsrvd_fix(BITJOIN,858)@1
    leftShiftStage1Idx4_uid859_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx4Rng4_uid858_normY_uid64_block_rsrvd_fix_b & zs_uid225_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix(BITSELECT,854)@1
    leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(49 downto 0);
    leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix_in(49 downto 0);

    -- leftShiftStage1Idx3_uid856_normY_uid64_block_rsrvd_fix(BITJOIN,855)@1
    leftShiftStage1Idx3_uid856_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid855_normY_uid64_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval_q;

    -- leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix(BITSELECT,851)@1
    leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(50 downto 0);
    leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix_in(50 downto 0);

    -- leftShiftStage1Idx2_uid853_normY_uid64_block_rsrvd_fix(BITJOIN,852)@1
    leftShiftStage1Idx2_uid853_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid852_normY_uid64_block_rsrvd_fix_b & zs_uid231_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix(BITSELECT,848)@1
    leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix_in <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q(51 downto 0);
    leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix_in(51 downto 0);

    -- leftShiftStage1Idx1_uid850_normY_uid64_block_rsrvd_fix(BITJOIN,849)@1
    leftShiftStage1Idx1_uid850_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid849_normY_uid64_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix(BITSELECT,842)@1
    leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix_in <= redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q(4 downto 0);
    leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix_b <= leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix_in(4 downto 0);

    -- leftShiftStage0Idx6_uid844_normY_uid64_block_rsrvd_fix(BITJOIN,843)@1
    leftShiftStage0Idx6_uid844_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx6Rng48_uid843_normY_uid64_block_rsrvd_fix_b & leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix(BITSELECT,839)@1
    leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix_in <= redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q(12 downto 0);
    leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix_b <= leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix_in(12 downto 0);

    -- leftShiftStage0Idx5_uid841_normY_uid64_block_rsrvd_fix(BITJOIN,840)@1
    leftShiftStage0Idx5_uid841_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx5Rng40_uid840_normY_uid64_block_rsrvd_fix_b & leftShiftStage0Idx5Pad40_uid839_normY_uid64_block_rsrvd_fix_q;

    -- redist25_vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b_1(DELAY,1153)
    redist25_vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b, xout => redist25_vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx4_uid838_normY_uid64_block_rsrvd_fix(BITJOIN,837)@1
    leftShiftStage0Idx4_uid838_normY_uid64_block_rsrvd_fix_q <= redist25_vStage_uid209_lzFracY_uid63_block_rsrvd_fix_b_1_q & zs_uid205_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix(BITSELECT,833)@1
    leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix_in <= redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q(28 downto 0);
    leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix_in(28 downto 0);

    -- leftShiftStage0Idx3_uid835_normY_uid64_block_rsrvd_fix(BITJOIN,834)@1
    leftShiftStage0Idx3_uid835_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng24_uid834_normY_uid64_block_rsrvd_fix_b & leftShiftStage0Idx3Pad24_uid833_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix(BITSELECT,830)@1
    leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix_in <= redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q(36 downto 0);
    leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix_in(36 downto 0);

    -- leftShiftStage0Idx2_uid832_normY_uid64_block_rsrvd_fix(BITJOIN,831)@1
    leftShiftStage0Idx2_uid832_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng16_uid831_normY_uid64_block_rsrvd_fix_b & zs_uid213_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix(BITSELECT,827)@1
    leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix_in <= redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q(44 downto 0);
    leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix_in(44 downto 0);

    -- leftShiftStage0Idx1_uid829_normY_uid64_block_rsrvd_fix(BITJOIN,828)@1
    leftShiftStage0Idx1_uid829_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng8_uid828_normY_uid64_block_rsrvd_fix_b & zs_uid219_lzFracY_uid63_block_rsrvd_fix_q;

    -- redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1(DELAY,1182)
    redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 53, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracOYForLZC_uid62_block_rsrvd_fix_q, xout => redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix(MUX,846)@1
    leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_s <= leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_s, redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q, leftShiftStage0Idx1_uid829_normY_uid64_block_rsrvd_fix_q, leftShiftStage0Idx2_uid832_normY_uid64_block_rsrvd_fix_q, leftShiftStage0Idx3_uid835_normY_uid64_block_rsrvd_fix_q, leftShiftStage0Idx4_uid838_normY_uid64_block_rsrvd_fix_q, leftShiftStage0Idx5_uid841_normY_uid64_block_rsrvd_fix_q, leftShiftStage0Idx6_uid844_normY_uid64_block_rsrvd_fix_q, leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_s) IS
            WHEN "000" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= redist54_fracOYForLZC_uid62_block_rsrvd_fix_q_1_q;
            WHEN "001" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid829_normY_uid64_block_rsrvd_fix_q;
            WHEN "010" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid832_normY_uid64_block_rsrvd_fix_q;
            WHEN "011" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid835_normY_uid64_block_rsrvd_fix_q;
            WHEN "100" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx4_uid838_normY_uid64_block_rsrvd_fix_q;
            WHEN "101" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx5_uid841_normY_uid64_block_rsrvd_fix_q;
            WHEN "110" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx6_uid844_normY_uid64_block_rsrvd_fix_q;
            WHEN "111" => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0Idx7_uid845_normY_uid64_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select(BITSELECT,1114)@1
    leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select_b <= r_uid240_lzFracY_uid63_block_rsrvd_fix_q(5 downto 3);
    leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select_c <= r_uid240_lzFracY_uid63_block_rsrvd_fix_q(2 downto 0);

    -- leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix(MUX,869)@1
    leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_s <= leftShiftStageSel5Dto3_uid846_normY_uid64_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_s, leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx1_uid850_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx2_uid853_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx3_uid856_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx4_uid859_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx5_uid862_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx6_uid865_normY_uid64_block_rsrvd_fix_q, leftShiftStage1Idx7_uid868_normY_uid64_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_s) IS
            WHEN "000" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage0_uid847_normY_uid64_block_rsrvd_fix_q;
            WHEN "001" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid850_normY_uid64_block_rsrvd_fix_q;
            WHEN "010" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid853_normY_uid64_block_rsrvd_fix_q;
            WHEN "011" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid856_normY_uid64_block_rsrvd_fix_q;
            WHEN "100" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx4_uid859_normY_uid64_block_rsrvd_fix_q;
            WHEN "101" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx5_uid862_normY_uid64_block_rsrvd_fix_q;
            WHEN "110" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx6_uid865_normY_uid64_block_rsrvd_fix_q;
            WHEN "111" => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= leftShiftStage1Idx7_uid868_normY_uid64_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- addrFull_uid66_block_rsrvd_fix(BITSELECT,65)@1
    addrFull_uid66_block_rsrvd_fix_in <= leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q(51 downto 0);
    addrFull_uid66_block_rsrvd_fix_b <= addrFull_uid66_block_rsrvd_fix_in(51 downto 0);

    -- yAddr_uid68_block_rsrvd_fix(BITSELECT,67)@1
    yAddr_uid68_block_rsrvd_fix_b <= addrFull_uid66_block_rsrvd_fix_b(51 downto 41);

    -- memoryC4_uid299_invTables_lutmem(DUALMEM,1108)@1 + 2
    -- in j@20000000
    memoryC4_uid299_invTables_lutmem_aa <= yAddr_uid68_block_rsrvd_fix_b;
    memoryC4_uid299_invTables_lutmem_reset0 <= not (resetn);
    memoryC4_uid299_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA47ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC4_uid299_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC4_uid299_invTables_lutmem_aa,
        q_a => memoryC4_uid299_invTables_lutmem_ir
    );
    memoryC4_uid299_invTables_lutmem_r <= memoryC4_uid299_invTables_lutmem_ir(3 downto 0);

    -- memoryC4_uid298_invTables_lutmem(DUALMEM,1107)@1 + 2
    -- in j@20000000
    memoryC4_uid298_invTables_lutmem_aa <= yAddr_uid68_block_rsrvd_fix_b;
    memoryC4_uid298_invTables_lutmem_reset0 <= not (resetn);
    memoryC4_uid298_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA46ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC4_uid298_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC4_uid298_invTables_lutmem_aa,
        q_a => memoryC4_uid298_invTables_lutmem_ir
    );
    memoryC4_uid298_invTables_lutmem_r <= memoryC4_uid298_invTables_lutmem_ir(3 downto 0);

    -- memoryC4_uid297_invTables_lutmem(DUALMEM,1106)@1 + 2
    -- in j@20000000
    memoryC4_uid297_invTables_lutmem_aa <= yAddr_uid68_block_rsrvd_fix_b;
    memoryC4_uid297_invTables_lutmem_reset0 <= not (resetn);
    memoryC4_uid297_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA45ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC4_uid297_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC4_uid297_invTables_lutmem_aa,
        q_a => memoryC4_uid297_invTables_lutmem_ir
    );
    memoryC4_uid297_invTables_lutmem_r <= memoryC4_uid297_invTables_lutmem_ir(3 downto 0);

    -- memoryC4_uid296_invTables_lutmem(DUALMEM,1105)@1 + 2
    -- in j@20000000
    memoryC4_uid296_invTables_lutmem_aa <= yAddr_uid68_block_rsrvd_fix_b;
    memoryC4_uid296_invTables_lutmem_reset0 <= not (resetn);
    memoryC4_uid296_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA44ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC4_uid296_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC4_uid296_invTables_lutmem_aa,
        q_a => memoryC4_uid296_invTables_lutmem_ir
    );
    memoryC4_uid296_invTables_lutmem_r <= memoryC4_uid296_invTables_lutmem_ir(3 downto 0);

    -- os_uid300_invTables(BITJOIN,299)@3
    os_uid300_invTables_q <= memoryC4_uid299_invTables_lutmem_r & memoryC4_uid298_invTables_lutmem_r & memoryC4_uid297_invTables_lutmem_r & memoryC4_uid296_invTables_lutmem_r;

    -- topRangeY_mergedSignalTM_uid531_pT1_uid308_invPolyEval(BITJOIN,530)@3
    topRangeY_mergedSignalTM_uid531_pT1_uid308_invPolyEval_q <= os_uid300_invTables_q & GND_q;

    -- redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2(DELAY,1133)
    redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 53, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q, xout => redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- yPE_uid69_block_rsrvd_fix(BITSELECT,68)@3
    yPE_uid69_block_rsrvd_fix_in <= redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2_q(40 downto 0);
    yPE_uid69_block_rsrvd_fix_b <= yPE_uid69_block_rsrvd_fix_in(40 downto 0);

    -- yT1_uid307_invPolyEval(BITSELECT,306)@3
    yT1_uid307_invPolyEval_b <= yPE_uid69_block_rsrvd_fix_b(40 downto 25);

    -- nx_mergedSignalTM_uid518_pT1_uid308_invPolyEval(BITJOIN,517)@3
    nx_mergedSignalTM_uid518_pT1_uid308_invPolyEval_q <= GND_q & yT1_uid307_invPolyEval_b;

    -- sm0_uid533_pT1_uid308_invPolyEval(MULT,532)@3 + 2
    sm0_uid533_pT1_uid308_invPolyEval_a0 <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid518_pT1_uid308_invPolyEval_q);
    sm0_uid533_pT1_uid308_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_mergedSignalTM_uid531_pT1_uid308_invPolyEval_q);
    sm0_uid533_pT1_uid308_invPolyEval_reset <= not (resetn);
    sm0_uid533_pT1_uid308_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid533_pT1_uid308_invPolyEval_a0,
        datab => sm0_uid533_pT1_uid308_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid533_pT1_uid308_invPolyEval_reset,
        clock => clock,
        result => sm0_uid533_pT1_uid308_invPolyEval_s1
    );
    sm0_uid533_pT1_uid308_invPolyEval_q <= sm0_uid533_pT1_uid308_invPolyEval_s1;

    -- osig_uid534_pT1_uid308_invPolyEval(BITSELECT,533)@5
    osig_uid534_pT1_uid308_invPolyEval_in <= STD_LOGIC_VECTOR(sm0_uid533_pT1_uid308_invPolyEval_q(32 downto 0));
    osig_uid534_pT1_uid308_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid534_pT1_uid308_invPolyEval_in(32 downto 14));

    -- redist50_yAddr_uid68_block_rsrvd_fix_b_2(DELAY,1178)
    redist50_yAddr_uid68_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 11, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yAddr_uid68_block_rsrvd_fix_b, xout => redist50_yAddr_uid68_block_rsrvd_fix_b_2_q, clk => clock, aclr => resetn );

    -- memoryC3_uid293_invTables_lutmem(DUALMEM,1104)@3 + 2
    -- in j@20000000
    memoryC3_uid293_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid293_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid293_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA43ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid293_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid293_invTables_lutmem_aa,
        q_a => memoryC3_uid293_invTables_lutmem_ir
    );
    memoryC3_uid293_invTables_lutmem_r <= memoryC3_uid293_invTables_lutmem_ir(3 downto 0);

    -- memoryC3_uid292_invTables_lutmem(DUALMEM,1103)@3 + 2
    -- in j@20000000
    memoryC3_uid292_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid292_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid292_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA42ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid292_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid292_invTables_lutmem_aa,
        q_a => memoryC3_uid292_invTables_lutmem_ir
    );
    memoryC3_uid292_invTables_lutmem_r <= memoryC3_uid292_invTables_lutmem_ir(3 downto 0);

    -- memoryC3_uid291_invTables_lutmem(DUALMEM,1102)@3 + 2
    -- in j@20000000
    memoryC3_uid291_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid291_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid291_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA41ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid291_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid291_invTables_lutmem_aa,
        q_a => memoryC3_uid291_invTables_lutmem_ir
    );
    memoryC3_uid291_invTables_lutmem_r <= memoryC3_uid291_invTables_lutmem_ir(3 downto 0);

    -- memoryC3_uid290_invTables_lutmem(DUALMEM,1101)@3 + 2
    -- in j@20000000
    memoryC3_uid290_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid290_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid290_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA40ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid290_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid290_invTables_lutmem_aa,
        q_a => memoryC3_uid290_invTables_lutmem_ir
    );
    memoryC3_uid290_invTables_lutmem_r <= memoryC3_uid290_invTables_lutmem_ir(3 downto 0);

    -- memoryC3_uid289_invTables_lutmem(DUALMEM,1100)@3 + 2
    -- in j@20000000
    memoryC3_uid289_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid289_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid289_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA39ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid289_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid289_invTables_lutmem_aa,
        q_a => memoryC3_uid289_invTables_lutmem_ir
    );
    memoryC3_uid289_invTables_lutmem_r <= memoryC3_uid289_invTables_lutmem_ir(3 downto 0);

    -- memoryC3_uid288_invTables_lutmem(DUALMEM,1099)@3 + 2
    -- in j@20000000
    memoryC3_uid288_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid288_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid288_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA38ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid288_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid288_invTables_lutmem_aa,
        q_a => memoryC3_uid288_invTables_lutmem_ir
    );
    memoryC3_uid288_invTables_lutmem_r <= memoryC3_uid288_invTables_lutmem_ir(3 downto 0);

    -- memoryC3_uid287_invTables_lutmem(DUALMEM,1098)@3 + 2
    -- in j@20000000
    memoryC3_uid287_invTables_lutmem_aa <= redist50_yAddr_uid68_block_rsrvd_fix_b_2_q;
    memoryC3_uid287_invTables_lutmem_reset0 <= not (resetn);
    memoryC3_uid287_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA37ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid287_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC3_uid287_invTables_lutmem_aa,
        q_a => memoryC3_uid287_invTables_lutmem_ir
    );
    memoryC3_uid287_invTables_lutmem_r <= memoryC3_uid287_invTables_lutmem_ir(3 downto 0);

    -- os_uid294_invTables(BITJOIN,293)@5
    os_uid294_invTables_q <= memoryC3_uid293_invTables_lutmem_r & memoryC3_uid292_invTables_lutmem_r & memoryC3_uid291_invTables_lutmem_r & memoryC3_uid290_invTables_lutmem_r & memoryC3_uid289_invTables_lutmem_r & memoryC3_uid288_invTables_lutmem_r & memoryC3_uid287_invTables_lutmem_r;

    -- rndBit_uid309_invPolyEval(CONSTANT,308)
    rndBit_uid309_invPolyEval_q <= "01";

    -- cIncludingRoundingBit_uid310_invPolyEval(BITJOIN,309)@5
    cIncludingRoundingBit_uid310_invPolyEval_q <= os_uid294_invTables_q & rndBit_uid309_invPolyEval_q;

    -- ts1_uid312_invPolyEval(ADD,311)@5
    ts1_uid312_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => cIncludingRoundingBit_uid310_invPolyEval_q(29)) & cIncludingRoundingBit_uid310_invPolyEval_q));
    ts1_uid312_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 19 => osig_uid534_pT1_uid308_invPolyEval_b(18)) & osig_uid534_pT1_uid308_invPolyEval_b));
    ts1_uid312_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(ts1_uid312_invPolyEval_a) + SIGNED(ts1_uid312_invPolyEval_b));
    ts1_uid312_invPolyEval_q <= ts1_uid312_invPolyEval_o(30 downto 0);

    -- s1_uid313_invPolyEval(BITSELECT,312)@5
    s1_uid313_invPolyEval_b <= STD_LOGIC_VECTOR(ts1_uid312_invPolyEval_q(30 downto 1));

    -- topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select(BITSELECT,1115)@5
    topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s1_uid313_invPolyEval_b(29 downto 13));
    topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s1_uid313_invPolyEval_b(12 downto 0));

    -- redist47_yPE_uid69_block_rsrvd_fix_b_2(DELAY,1175)
    redist47_yPE_uid69_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 41, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yPE_uid69_block_rsrvd_fix_b, xout => redist47_yPE_uid69_block_rsrvd_fix_b_2_q, clk => clock, aclr => resetn );

    -- yT2_uid314_invPolyEval(BITSELECT,313)@5
    yT2_uid314_invPolyEval_b <= redist47_yPE_uid69_block_rsrvd_fix_b_2_q(40 downto 13);

    -- nx_mergedSignalTM_uid538_pT2_uid315_invPolyEval(BITJOIN,537)@5
    nx_mergedSignalTM_uid538_pT2_uid315_invPolyEval_q <= GND_q & yT2_uid314_invPolyEval_b;

    -- topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select(BITSELECT,1126)@5
    topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid538_pT2_uid315_invPolyEval_q(28 downto 12));
    topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid538_pT2_uid315_invPolyEval_q(11 downto 0));

    -- rightBottomX_mergedSignalTM_uid576_pT2_uid315_invPolyEval(BITJOIN,575)@5
    rightBottomX_mergedSignalTM_uid576_pT2_uid315_invPolyEval_q <= topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_c & z4_uid81_block_rsrvd_fix_q;

    -- sm1_uid581_pT2_uid315_invPolyEval(MULT,580)@5 + 2
    sm1_uid581_pT2_uid315_invPolyEval_a0 <= '0' & rightBottomX_mergedSignalTM_uid576_pT2_uid315_invPolyEval_q;
    sm1_uid581_pT2_uid315_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_b);
    sm1_uid581_pT2_uid315_invPolyEval_reset <= not (resetn);
    sm1_uid581_pT2_uid315_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm1_uid581_pT2_uid315_invPolyEval_a0,
        datab => sm1_uid581_pT2_uid315_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm1_uid581_pT2_uid315_invPolyEval_reset,
        clock => clock,
        result => sm1_uid581_pT2_uid315_invPolyEval_s1
    );
    sm1_uid581_pT2_uid315_invPolyEval_q <= sm1_uid581_pT2_uid315_invPolyEval_s1(33 downto 0);

    -- aboveLeftY_mergedSignalTM_uid572_pT2_uid315_invPolyEval(BITJOIN,571)@5
    aboveLeftY_mergedSignalTM_uid572_pT2_uid315_invPolyEval_q <= topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_c & zs_uid225_lzFracY_uid63_block_rsrvd_fix_q;

    -- sm0_uid580_pT2_uid315_invPolyEval(MULT,579)@5 + 2
    sm0_uid580_pT2_uid315_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_b);
    sm0_uid580_pT2_uid315_invPolyEval_b0 <= '0' & aboveLeftY_mergedSignalTM_uid572_pT2_uid315_invPolyEval_q;
    sm0_uid580_pT2_uid315_invPolyEval_reset <= not (resetn);
    sm0_uid580_pT2_uid315_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 18,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid580_pT2_uid315_invPolyEval_a0,
        datab => sm0_uid580_pT2_uid315_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid580_pT2_uid315_invPolyEval_reset,
        clock => clock,
        result => sm0_uid580_pT2_uid315_invPolyEval_s1
    );
    sm0_uid580_pT2_uid315_invPolyEval_q <= sm0_uid580_pT2_uid315_invPolyEval_s1(33 downto 0);

    -- highBBits_uid583_pT2_uid315_invPolyEval(BITSELECT,582)@7
    highBBits_uid583_pT2_uid315_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid580_pT2_uid315_invPolyEval_q(33 downto 17));

    -- sm0_uid579_pT2_uid315_invPolyEval(MULT,578)@5 + 2
    sm0_uid579_pT2_uid315_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid548_pT2_uid315_invPolyEval_merged_bit_select_b);
    sm0_uid579_pT2_uid315_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid549_pT2_uid315_invPolyEval_merged_bit_select_b);
    sm0_uid579_pT2_uid315_invPolyEval_reset <= not (resetn);
    sm0_uid579_pT2_uid315_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid579_pT2_uid315_invPolyEval_a0,
        datab => sm0_uid579_pT2_uid315_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid579_pT2_uid315_invPolyEval_reset,
        clock => clock,
        result => sm0_uid579_pT2_uid315_invPolyEval_s1
    );
    sm0_uid579_pT2_uid315_invPolyEval_q <= sm0_uid579_pT2_uid315_invPolyEval_s1;

    -- lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval(ADD,583)@7
    lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => sm0_uid579_pT2_uid315_invPolyEval_q(33)) & sm0_uid579_pT2_uid315_invPolyEval_q));
    lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 17 => highBBits_uid583_pT2_uid315_invPolyEval_b(16)) & highBBits_uid583_pT2_uid315_invPolyEval_b));
    lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_b));
    lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_q <= lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_o(34 downto 0);

    -- lowRangeB_uid582_pT2_uid315_invPolyEval(BITSELECT,581)@7
    lowRangeB_uid582_pT2_uid315_invPolyEval_in <= sm0_uid580_pT2_uid315_invPolyEval_q(16 downto 0);
    lowRangeB_uid582_pT2_uid315_invPolyEval_b <= lowRangeB_uid582_pT2_uid315_invPolyEval_in(16 downto 0);

    -- lev1_a0_uid585_pT2_uid315_invPolyEval(BITJOIN,584)@7
    lev1_a0_uid585_pT2_uid315_invPolyEval_q <= lev1_a0sumAHighB_uid584_pT2_uid315_invPolyEval_q & lowRangeB_uid582_pT2_uid315_invPolyEval_b;

    -- lev2_a0_uid586_pT2_uid315_invPolyEval(ADD,585)@7
    lev2_a0_uid586_pT2_uid315_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => lev1_a0_uid585_pT2_uid315_invPolyEval_q(51)) & lev1_a0_uid585_pT2_uid315_invPolyEval_q));
    lev2_a0_uid586_pT2_uid315_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 34 => sm1_uid581_pT2_uid315_invPolyEval_q(33)) & sm1_uid581_pT2_uid315_invPolyEval_q));
    lev2_a0_uid586_pT2_uid315_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid586_pT2_uid315_invPolyEval_a) + SIGNED(lev2_a0_uid586_pT2_uid315_invPolyEval_b));
    lev2_a0_uid586_pT2_uid315_invPolyEval_q <= lev2_a0_uid586_pT2_uid315_invPolyEval_o(52 downto 0);

    -- osig_uid587_pT2_uid315_invPolyEval(BITSELECT,586)@7
    osig_uid587_pT2_uid315_invPolyEval_in <= STD_LOGIC_VECTOR(lev2_a0_uid586_pT2_uid315_invPolyEval_q(49 downto 0));
    osig_uid587_pT2_uid315_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid587_pT2_uid315_invPolyEval_in(49 downto 20));

    -- redist51_yAddr_uid68_block_rsrvd_fix_b_4(DELAY,1179)
    redist51_yAddr_uid68_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 11, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist50_yAddr_uid68_block_rsrvd_fix_b_2_q, xout => redist51_yAddr_uid68_block_rsrvd_fix_b_4_q, clk => clock, aclr => resetn );

    -- memoryC2_uid284_invTables_lutmem(DUALMEM,1097)@5 + 2
    -- in j@20000000
    memoryC2_uid284_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid284_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid284_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 2,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA36ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid284_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid284_invTables_lutmem_aa,
        q_a => memoryC2_uid284_invTables_lutmem_ir
    );
    memoryC2_uid284_invTables_lutmem_r <= memoryC2_uid284_invTables_lutmem_ir(1 downto 0);

    -- memoryC2_uid283_invTables_lutmem(DUALMEM,1096)@5 + 2
    -- in j@20000000
    memoryC2_uid283_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid283_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid283_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA35ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid283_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid283_invTables_lutmem_aa,
        q_a => memoryC2_uid283_invTables_lutmem_ir
    );
    memoryC2_uid283_invTables_lutmem_r <= memoryC2_uid283_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid282_invTables_lutmem(DUALMEM,1095)@5 + 2
    -- in j@20000000
    memoryC2_uid282_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid282_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid282_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA34ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid282_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid282_invTables_lutmem_aa,
        q_a => memoryC2_uid282_invTables_lutmem_ir
    );
    memoryC2_uid282_invTables_lutmem_r <= memoryC2_uid282_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid281_invTables_lutmem(DUALMEM,1094)@5 + 2
    -- in j@20000000
    memoryC2_uid281_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid281_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid281_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA33ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid281_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid281_invTables_lutmem_aa,
        q_a => memoryC2_uid281_invTables_lutmem_ir
    );
    memoryC2_uid281_invTables_lutmem_r <= memoryC2_uid281_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid280_invTables_lutmem(DUALMEM,1093)@5 + 2
    -- in j@20000000
    memoryC2_uid280_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid280_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid280_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA32ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid280_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid280_invTables_lutmem_aa,
        q_a => memoryC2_uid280_invTables_lutmem_ir
    );
    memoryC2_uid280_invTables_lutmem_r <= memoryC2_uid280_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid279_invTables_lutmem(DUALMEM,1092)@5 + 2
    -- in j@20000000
    memoryC2_uid279_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid279_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid279_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA31ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid279_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid279_invTables_lutmem_aa,
        q_a => memoryC2_uid279_invTables_lutmem_ir
    );
    memoryC2_uid279_invTables_lutmem_r <= memoryC2_uid279_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid278_invTables_lutmem(DUALMEM,1091)@5 + 2
    -- in j@20000000
    memoryC2_uid278_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid278_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid278_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA30ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid278_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid278_invTables_lutmem_aa,
        q_a => memoryC2_uid278_invTables_lutmem_ir
    );
    memoryC2_uid278_invTables_lutmem_r <= memoryC2_uid278_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid277_invTables_lutmem(DUALMEM,1090)@5 + 2
    -- in j@20000000
    memoryC2_uid277_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid277_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid277_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA29ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid277_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid277_invTables_lutmem_aa,
        q_a => memoryC2_uid277_invTables_lutmem_ir
    );
    memoryC2_uid277_invTables_lutmem_r <= memoryC2_uid277_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid276_invTables_lutmem(DUALMEM,1089)@5 + 2
    -- in j@20000000
    memoryC2_uid276_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid276_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid276_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA28ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid276_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid276_invTables_lutmem_aa,
        q_a => memoryC2_uid276_invTables_lutmem_ir
    );
    memoryC2_uid276_invTables_lutmem_r <= memoryC2_uid276_invTables_lutmem_ir(3 downto 0);

    -- memoryC2_uid275_invTables_lutmem(DUALMEM,1088)@5 + 2
    -- in j@20000000
    memoryC2_uid275_invTables_lutmem_aa <= redist51_yAddr_uid68_block_rsrvd_fix_b_4_q;
    memoryC2_uid275_invTables_lutmem_reset0 <= not (resetn);
    memoryC2_uid275_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA27ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid275_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC2_uid275_invTables_lutmem_aa,
        q_a => memoryC2_uid275_invTables_lutmem_ir
    );
    memoryC2_uid275_invTables_lutmem_r <= memoryC2_uid275_invTables_lutmem_ir(3 downto 0);

    -- os_uid285_invTables(BITJOIN,284)@7
    os_uid285_invTables_q <= memoryC2_uid284_invTables_lutmem_r & memoryC2_uid283_invTables_lutmem_r & memoryC2_uid282_invTables_lutmem_r & memoryC2_uid281_invTables_lutmem_r & memoryC2_uid280_invTables_lutmem_r & memoryC2_uid279_invTables_lutmem_r & memoryC2_uid278_invTables_lutmem_r & memoryC2_uid277_invTables_lutmem_r & memoryC2_uid276_invTables_lutmem_r & memoryC2_uid275_invTables_lutmem_r;

    -- cIncludingRoundingBit_uid317_invPolyEval(BITJOIN,316)@7
    cIncludingRoundingBit_uid317_invPolyEval_q <= os_uid285_invTables_q & rndBit_uid309_invPolyEval_q;

    -- ts2_uid319_invPolyEval(ADD,318)@7
    ts2_uid319_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 40 => cIncludingRoundingBit_uid317_invPolyEval_q(39)) & cIncludingRoundingBit_uid317_invPolyEval_q));
    ts2_uid319_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 30 => osig_uid587_pT2_uid315_invPolyEval_b(29)) & osig_uid587_pT2_uid315_invPolyEval_b));
    ts2_uid319_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(ts2_uid319_invPolyEval_a) + SIGNED(ts2_uid319_invPolyEval_b));
    ts2_uid319_invPolyEval_q <= ts2_uid319_invPolyEval_o(40 downto 0);

    -- s2_uid320_invPolyEval(BITSELECT,319)@7
    s2_uid320_invPolyEval_b <= STD_LOGIC_VECTOR(ts2_uid319_invPolyEval_q(40 downto 1));

    -- aboveLeftY_uid651_pT3_uid322_invPolyEval(BITSELECT,650)@7
    aboveLeftY_uid651_pT3_uid322_invPolyEval_in <= s2_uid320_invPolyEval_b(31 downto 0);
    aboveLeftY_uid651_pT3_uid322_invPolyEval_b <= aboveLeftY_uid651_pT3_uid322_invPolyEval_in(31 downto 27);

    -- n1_uid663_pT3_uid322_invPolyEval(BITSELECT,662)@7
    n1_uid663_pT3_uid322_invPolyEval_b <= aboveLeftY_uid651_pT3_uid322_invPolyEval_b(4 downto 1);

    -- redist10_n1_uid663_pT3_uid322_invPolyEval_b_1(DELAY,1138)
    redist10_n1_uid663_pT3_uid322_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => n1_uid663_pT3_uid322_invPolyEval_b, xout => redist10_n1_uid663_pT3_uid322_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- redist48_yPE_uid69_block_rsrvd_fix_b_4(DELAY,1176)
    redist48_yPE_uid69_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 41, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist47_yPE_uid69_block_rsrvd_fix_b_2_q, xout => redist48_yPE_uid69_block_rsrvd_fix_b_4_q, clk => clock, aclr => resetn );

    -- yT3_uid321_invPolyEval(BITSELECT,320)@7
    yT3_uid321_invPolyEval_b <= redist48_yPE_uid69_block_rsrvd_fix_b_4_q(40 downto 3);

    -- nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval(BITJOIN,590)@7
    nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q <= GND_q & yT3_uid321_invPolyEval_b;

    -- aboveLeftX_uid650_pT3_uid322_invPolyEval(BITSELECT,649)@7
    aboveLeftX_uid650_pT3_uid322_invPolyEval_in <= nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(4 downto 0);
    aboveLeftX_uid650_pT3_uid322_invPolyEval_b <= aboveLeftX_uid650_pT3_uid322_invPolyEval_in(4 downto 0);

    -- n0_uid664_pT3_uid322_invPolyEval(BITSELECT,663)@7
    n0_uid664_pT3_uid322_invPolyEval_b <= aboveLeftX_uid650_pT3_uid322_invPolyEval_b(4 downto 1);

    -- redist9_n0_uid664_pT3_uid322_invPolyEval_b_1(DELAY,1137)
    redist9_n0_uid664_pT3_uid322_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => n0_uid664_pT3_uid322_invPolyEval_b, xout => redist9_n0_uid664_pT3_uid322_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- sm0_uid688_pT3_uid322_invPolyEval(MULT,687)@8 + 2
    sm0_uid688_pT3_uid322_invPolyEval_a0 <= redist9_n0_uid664_pT3_uid322_invPolyEval_b_1_q;
    sm0_uid688_pT3_uid322_invPolyEval_b0 <= redist10_n1_uid663_pT3_uid322_invPolyEval_b_1_q;
    sm0_uid688_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid688_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 4,
        lpm_widthb => 4,
        lpm_widthp => 8,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=NO, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid688_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid688_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid688_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid688_pT3_uid322_invPolyEval_s1
    );
    sm0_uid688_pT3_uid322_invPolyEval_q <= sm0_uid688_pT3_uid322_invPolyEval_s1;

    -- rightBottomY_uid649_pT3_uid322_invPolyEval(BITSELECT,648)@7
    rightBottomY_uid649_pT3_uid322_invPolyEval_in <= s2_uid320_invPolyEval_b(22 downto 0);
    rightBottomY_uid649_pT3_uid322_invPolyEval_b <= rightBottomY_uid649_pT3_uid322_invPolyEval_in(22 downto 18);

    -- n1_uid661_pT3_uid322_invPolyEval(BITSELECT,660)@7
    n1_uid661_pT3_uid322_invPolyEval_b <= rightBottomY_uid649_pT3_uid322_invPolyEval_b(4 downto 1);

    -- rightBottomX_uid648_pT3_uid322_invPolyEval(BITSELECT,647)@7
    rightBottomX_uid648_pT3_uid322_invPolyEval_in <= nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(13 downto 0);
    rightBottomX_uid648_pT3_uid322_invPolyEval_b <= rightBottomX_uid648_pT3_uid322_invPolyEval_in(13 downto 9);

    -- n0_uid662_pT3_uid322_invPolyEval(BITSELECT,661)@7
    n0_uid662_pT3_uid322_invPolyEval_b <= rightBottomX_uid648_pT3_uid322_invPolyEval_b(4 downto 1);

    -- sm0_uid687_pT3_uid322_invPolyEval(MULT,686)@7 + 2
    sm0_uid687_pT3_uid322_invPolyEval_a0 <= n0_uid662_pT3_uid322_invPolyEval_b;
    sm0_uid687_pT3_uid322_invPolyEval_b0 <= n1_uid661_pT3_uid322_invPolyEval_b;
    sm0_uid687_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid687_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 4,
        lpm_widthb => 4,
        lpm_widthp => 8,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=NO, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid687_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid687_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid687_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid687_pT3_uid322_invPolyEval_s1
    );
    sm0_uid687_pT3_uid322_invPolyEval_q <= sm0_uid687_pT3_uid322_invPolyEval_s1;

    -- aboveLeftY_uid647_pT3_uid322_invPolyEval(BITSELECT,646)@7
    aboveLeftY_uid647_pT3_uid322_invPolyEval_in <= s2_uid320_invPolyEval_b(14 downto 0);
    aboveLeftY_uid647_pT3_uid322_invPolyEval_b <= aboveLeftY_uid647_pT3_uid322_invPolyEval_in(14 downto 10);

    -- n1_uid659_pT3_uid322_invPolyEval(BITSELECT,658)@7
    n1_uid659_pT3_uid322_invPolyEval_b <= aboveLeftY_uid647_pT3_uid322_invPolyEval_b(4 downto 1);

    -- aboveLeftX_uid646_pT3_uid322_invPolyEval(BITSELECT,645)@7
    aboveLeftX_uid646_pT3_uid322_invPolyEval_in <= nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(21 downto 0);
    aboveLeftX_uid646_pT3_uid322_invPolyEval_b <= aboveLeftX_uid646_pT3_uid322_invPolyEval_in(21 downto 17);

    -- n0_uid660_pT3_uid322_invPolyEval(BITSELECT,659)@7
    n0_uid660_pT3_uid322_invPolyEval_b <= aboveLeftX_uid646_pT3_uid322_invPolyEval_b(4 downto 1);

    -- sm0_uid686_pT3_uid322_invPolyEval(MULT,685)@7 + 2
    sm0_uid686_pT3_uid322_invPolyEval_a0 <= n0_uid660_pT3_uid322_invPolyEval_b;
    sm0_uid686_pT3_uid322_invPolyEval_b0 <= n1_uid659_pT3_uid322_invPolyEval_b;
    sm0_uid686_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid686_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 4,
        lpm_widthb => 4,
        lpm_widthp => 8,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=NO, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid686_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid686_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid686_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid686_pT3_uid322_invPolyEval_s1
    );
    sm0_uid686_pT3_uid322_invPolyEval_q <= sm0_uid686_pT3_uid322_invPolyEval_s1;

    -- lev1_a3_uid699_pT3_uid322_invPolyEval(ADD,698)@9
    lev1_a3_uid699_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR("0" & sm0_uid686_pT3_uid322_invPolyEval_q);
    lev1_a3_uid699_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR("0" & sm0_uid687_pT3_uid322_invPolyEval_q);
    lev1_a3_uid699_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a3_uid699_pT3_uid322_invPolyEval_a) + UNSIGNED(lev1_a3_uid699_pT3_uid322_invPolyEval_b));
    lev1_a3_uid699_pT3_uid322_invPolyEval_q <= lev1_a3_uid699_pT3_uid322_invPolyEval_o(8 downto 0);

    -- rightBottomY_uid645_pT3_uid322_invPolyEval(BITSELECT,644)@7
    rightBottomY_uid645_pT3_uid322_invPolyEval_in <= s2_uid320_invPolyEval_b(5 downto 0);
    rightBottomY_uid645_pT3_uid322_invPolyEval_b <= rightBottomY_uid645_pT3_uid322_invPolyEval_in(5 downto 1);

    -- n1_uid657_pT3_uid322_invPolyEval(BITSELECT,656)@7
    n1_uid657_pT3_uid322_invPolyEval_b <= rightBottomY_uid645_pT3_uid322_invPolyEval_b(4 downto 1);

    -- rightBottomX_uid644_pT3_uid322_invPolyEval(BITSELECT,643)@7
    rightBottomX_uid644_pT3_uid322_invPolyEval_in <= nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(30 downto 0);
    rightBottomX_uid644_pT3_uid322_invPolyEval_b <= rightBottomX_uid644_pT3_uid322_invPolyEval_in(30 downto 26);

    -- n0_uid658_pT3_uid322_invPolyEval(BITSELECT,657)@7
    n0_uid658_pT3_uid322_invPolyEval_b <= rightBottomX_uid644_pT3_uid322_invPolyEval_b(4 downto 1);

    -- sm0_uid685_pT3_uid322_invPolyEval(MULT,684)@7 + 2
    sm0_uid685_pT3_uid322_invPolyEval_a0 <= n0_uid658_pT3_uid322_invPolyEval_b;
    sm0_uid685_pT3_uid322_invPolyEval_b0 <= n1_uid657_pT3_uid322_invPolyEval_b;
    sm0_uid685_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid685_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 4,
        lpm_widthb => 4,
        lpm_widthp => 8,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=NO, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid685_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid685_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid685_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid685_pT3_uid322_invPolyEval_s1
    );
    sm0_uid685_pT3_uid322_invPolyEval_q <= sm0_uid685_pT3_uid322_invPolyEval_s1;

    -- rightBottomY_uid640_pT3_uid322_invPolyEval(BITSELECT,639)@7
    rightBottomY_uid640_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(s2_uid320_invPolyEval_b(39 downto 32));

    -- rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval(BITSELECT,636)@7
    rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval_in <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(4 downto 0));
    rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval_in(4 downto 0));

    -- rightBottomX_mergedSignalTM_uid638_pT3_uid322_invPolyEval(BITJOIN,637)@7
    rightBottomX_mergedSignalTM_uid638_pT3_uid322_invPolyEval_q <= rightBottomX_bottomRange_uid637_pT3_uid322_invPolyEval_b & rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval_q;

    -- sm0_uid684_pT3_uid322_invPolyEval(MULT,683)@7 + 2
    sm0_uid684_pT3_uid322_invPolyEval_a0 <= '0' & rightBottomX_mergedSignalTM_uid638_pT3_uid322_invPolyEval_q;
    sm0_uid684_pT3_uid322_invPolyEval_b0 <= STD_LOGIC_VECTOR(rightBottomY_uid640_pT3_uid322_invPolyEval_b);
    sm0_uid684_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid684_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 8,
        lpm_widthp => 17,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid684_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid684_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid684_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid684_pT3_uid322_invPolyEval_s1
    );
    sm0_uid684_pT3_uid322_invPolyEval_q <= sm0_uid684_pT3_uid322_invPolyEval_s1(15 downto 0);

    -- lev1_a2_uid698_pT3_uid322_invPolyEval(ADD,697)@9
    lev1_a2_uid698_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => sm0_uid684_pT3_uid322_invPolyEval_q(15)) & sm0_uid684_pT3_uid322_invPolyEval_q));
    lev1_a2_uid698_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & sm0_uid685_pT3_uid322_invPolyEval_q));
    lev1_a2_uid698_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a2_uid698_pT3_uid322_invPolyEval_a) + SIGNED(lev1_a2_uid698_pT3_uid322_invPolyEval_b));
    lev1_a2_uid698_pT3_uid322_invPolyEval_q <= lev1_a2_uid698_pT3_uid322_invPolyEval_o(16 downto 0);

    -- lev2_a1_uid701_pT3_uid322_invPolyEval(ADD,700)@9
    lev2_a1_uid701_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => lev1_a2_uid698_pT3_uid322_invPolyEval_q(16)) & lev1_a2_uid698_pT3_uid322_invPolyEval_q));
    lev2_a1_uid701_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & lev1_a3_uid699_pT3_uid322_invPolyEval_q));
    lev2_a1_uid701_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a1_uid701_pT3_uid322_invPolyEval_a) + SIGNED(lev2_a1_uid701_pT3_uid322_invPolyEval_b));
    lev2_a1_uid701_pT3_uid322_invPolyEval_q <= lev2_a1_uid701_pT3_uid322_invPolyEval_o(17 downto 0);

    -- aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval(BITSELECT,630)@7
    aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval_in <= STD_LOGIC_VECTOR(s2_uid320_invPolyEval_b(5 downto 0));
    aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval_in(5 downto 0));

    -- aboveLeftY_mergedSignalTM_uid632_pT3_uid322_invPolyEval(BITJOIN,631)@7
    aboveLeftY_mergedSignalTM_uid632_pT3_uid322_invPolyEval_q <= aboveLeftY_bottomRange_uid631_pT3_uid322_invPolyEval_b & zs_uid231_lzFracY_uid63_block_rsrvd_fix_q;

    -- aboveLeftX_uid629_pT3_uid322_invPolyEval(BITSELECT,628)@7
    aboveLeftX_uid629_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(38 downto 31));

    -- sm0_uid682_pT3_uid322_invPolyEval(MULT,681)@7 + 2
    sm0_uid682_pT3_uid322_invPolyEval_a0 <= STD_LOGIC_VECTOR(aboveLeftX_uid629_pT3_uid322_invPolyEval_b);
    sm0_uid682_pT3_uid322_invPolyEval_b0 <= '0' & aboveLeftY_mergedSignalTM_uid632_pT3_uid322_invPolyEval_q;
    sm0_uid682_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid682_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 8,
        lpm_widthb => 9,
        lpm_widthp => 17,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid682_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid682_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid682_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid682_pT3_uid322_invPolyEval_s1
    );
    sm0_uid682_pT3_uid322_invPolyEval_q <= sm0_uid682_pT3_uid322_invPolyEval_s1(15 downto 0);

    -- topRangeY_uid602_pT3_uid322_invPolyEval(BITSELECT,601)@7
    topRangeY_uid602_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(s2_uid320_invPolyEval_b(39 downto 23));

    -- rightBottomX_uid621_pT3_uid322_invPolyEval(BITSELECT,620)@7
    rightBottomX_uid621_pT3_uid322_invPolyEval_in <= nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(21 downto 0);
    rightBottomX_uid621_pT3_uid322_invPolyEval_b <= rightBottomX_uid621_pT3_uid322_invPolyEval_in(21 downto 5);

    -- sm1_uid681_pT3_uid322_invPolyEval(MULT,680)@7 + 2
    sm1_uid681_pT3_uid322_invPolyEval_a0 <= '0' & rightBottomX_uid621_pT3_uid322_invPolyEval_b;
    sm1_uid681_pT3_uid322_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid602_pT3_uid322_invPolyEval_b);
    sm1_uid681_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm1_uid681_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm1_uid681_pT3_uid322_invPolyEval_a0,
        datab => sm1_uid681_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm1_uid681_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm1_uid681_pT3_uid322_invPolyEval_s1
    );
    sm1_uid681_pT3_uid322_invPolyEval_q <= sm1_uid681_pT3_uid322_invPolyEval_s1(33 downto 0);

    -- highABits_uid695_pT3_uid322_invPolyEval(BITSELECT,694)@9
    highABits_uid695_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(sm1_uid681_pT3_uid322_invPolyEval_q(33 downto 1));

    -- lev1_a1high_uid696_pT3_uid322_invPolyEval(ADD,695)@9
    lev1_a1high_uid696_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => highABits_uid695_pT3_uid322_invPolyEval_b(32)) & highABits_uid695_pT3_uid322_invPolyEval_b));
    lev1_a1high_uid696_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 16 => sm0_uid682_pT3_uid322_invPolyEval_q(15)) & sm0_uid682_pT3_uid322_invPolyEval_q));
    lev1_a1high_uid696_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a1high_uid696_pT3_uid322_invPolyEval_a) + SIGNED(lev1_a1high_uid696_pT3_uid322_invPolyEval_b));
    lev1_a1high_uid696_pT3_uid322_invPolyEval_q <= lev1_a1high_uid696_pT3_uid322_invPolyEval_o(33 downto 0);

    -- lowRangeA_uid694_pT3_uid322_invPolyEval(BITSELECT,693)@9
    lowRangeA_uid694_pT3_uid322_invPolyEval_in <= sm1_uid681_pT3_uid322_invPolyEval_q(0 downto 0);
    lowRangeA_uid694_pT3_uid322_invPolyEval_b <= lowRangeA_uid694_pT3_uid322_invPolyEval_in(0 downto 0);

    -- lev1_a1_uid697_pT3_uid322_invPolyEval(BITJOIN,696)@9
    lev1_a1_uid697_pT3_uid322_invPolyEval_q <= lev1_a1high_uid696_pT3_uid322_invPolyEval_q & lowRangeA_uid694_pT3_uid322_invPolyEval_b;

    -- aboveLeftY_uid620_pT3_uid322_invPolyEval(BITSELECT,619)@7
    aboveLeftY_uid620_pT3_uid322_invPolyEval_in <= s2_uid320_invPolyEval_b(22 downto 0);
    aboveLeftY_uid620_pT3_uid322_invPolyEval_b <= aboveLeftY_uid620_pT3_uid322_invPolyEval_in(22 downto 6);

    -- topRangeX_uid601_pT3_uid322_invPolyEval(BITSELECT,600)@7
    topRangeX_uid601_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(38 downto 22));

    -- sm0_uid680_pT3_uid322_invPolyEval(MULT,679)@7 + 2
    sm0_uid680_pT3_uid322_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid601_pT3_uid322_invPolyEval_b);
    sm0_uid680_pT3_uid322_invPolyEval_b0 <= '0' & aboveLeftY_uid620_pT3_uid322_invPolyEval_b;
    sm0_uid680_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid680_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 18,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid680_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid680_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid680_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid680_pT3_uid322_invPolyEval_s1
    );
    sm0_uid680_pT3_uid322_invPolyEval_q <= sm0_uid680_pT3_uid322_invPolyEval_s1(33 downto 0);

    -- highBBits_uid691_pT3_uid322_invPolyEval(BITSELECT,690)@9
    highBBits_uid691_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid680_pT3_uid322_invPolyEval_q(33 downto 1));

    -- sm0_uid679_pT3_uid322_invPolyEval(MULT,678)@7 + 2
    sm0_uid679_pT3_uid322_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid601_pT3_uid322_invPolyEval_b);
    sm0_uid679_pT3_uid322_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid602_pT3_uid322_invPolyEval_b);
    sm0_uid679_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid679_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid679_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid679_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid679_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid679_pT3_uid322_invPolyEval_s1
    );
    sm0_uid679_pT3_uid322_invPolyEval_q <= sm0_uid679_pT3_uid322_invPolyEval_s1;

    -- aboveLeftY_uid635_pT3_uid322_invPolyEval(BITSELECT,634)@7
    aboveLeftY_uid635_pT3_uid322_invPolyEval_in <= s2_uid320_invPolyEval_b(22 downto 0);
    aboveLeftY_uid635_pT3_uid322_invPolyEval_b <= aboveLeftY_uid635_pT3_uid322_invPolyEval_in(22 downto 15);

    -- aboveLeftX_uid634_pT3_uid322_invPolyEval(BITSELECT,633)@7
    aboveLeftX_uid634_pT3_uid322_invPolyEval_in <= nx_mergedSignalTM_uid591_pT3_uid322_invPolyEval_q(21 downto 0);
    aboveLeftX_uid634_pT3_uid322_invPolyEval_b <= aboveLeftX_uid634_pT3_uid322_invPolyEval_in(21 downto 14);

    -- sm0_uid683_pT3_uid322_invPolyEval(MULT,682)@7 + 2
    sm0_uid683_pT3_uid322_invPolyEval_a0 <= aboveLeftX_uid634_pT3_uid322_invPolyEval_b;
    sm0_uid683_pT3_uid322_invPolyEval_b0 <= aboveLeftY_uid635_pT3_uid322_invPolyEval_b;
    sm0_uid683_pT3_uid322_invPolyEval_reset <= not (resetn);
    sm0_uid683_pT3_uid322_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 8,
        lpm_widthb => 8,
        lpm_widthp => 16,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid683_pT3_uid322_invPolyEval_a0,
        datab => sm0_uid683_pT3_uid322_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid683_pT3_uid322_invPolyEval_reset,
        clock => clock,
        result => sm0_uid683_pT3_uid322_invPolyEval_s1
    );
    sm0_uid683_pT3_uid322_invPolyEval_q <= sm0_uid683_pT3_uid322_invPolyEval_s1;

    -- sumAb_uid689_pT3_uid322_invPolyEval(BITJOIN,688)@9
    sumAb_uid689_pT3_uid322_invPolyEval_q <= sm0_uid679_pT3_uid322_invPolyEval_q & sm0_uid683_pT3_uid322_invPolyEval_q;

    -- lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval(ADD,691)@9
    lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => sumAb_uid689_pT3_uid322_invPolyEval_q(49)) & sumAb_uid689_pT3_uid322_invPolyEval_q));
    lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 33 => highBBits_uid691_pT3_uid322_invPolyEval_b(32)) & highBBits_uid691_pT3_uid322_invPolyEval_b));
    lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_b));
    lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_q <= lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_o(50 downto 0);

    -- lowRangeB_uid690_pT3_uid322_invPolyEval(BITSELECT,689)@9
    lowRangeB_uid690_pT3_uid322_invPolyEval_in <= sm0_uid680_pT3_uid322_invPolyEval_q(0 downto 0);
    lowRangeB_uid690_pT3_uid322_invPolyEval_b <= lowRangeB_uid690_pT3_uid322_invPolyEval_in(0 downto 0);

    -- lev1_a0_uid693_pT3_uid322_invPolyEval(BITJOIN,692)@9
    lev1_a0_uid693_pT3_uid322_invPolyEval_q <= lev1_a0sumAHighB_uid692_pT3_uid322_invPolyEval_q & lowRangeB_uid690_pT3_uid322_invPolyEval_b;

    -- lev2_a0_uid700_pT3_uid322_invPolyEval(ADD,699)@9
    lev2_a0_uid700_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => lev1_a0_uid693_pT3_uid322_invPolyEval_q(51)) & lev1_a0_uid693_pT3_uid322_invPolyEval_q));
    lev2_a0_uid700_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 35 => lev1_a1_uid697_pT3_uid322_invPolyEval_q(34)) & lev1_a1_uid697_pT3_uid322_invPolyEval_q));
    lev2_a0_uid700_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid700_pT3_uid322_invPolyEval_a) + SIGNED(lev2_a0_uid700_pT3_uid322_invPolyEval_b));
    lev2_a0_uid700_pT3_uid322_invPolyEval_q <= lev2_a0_uid700_pT3_uid322_invPolyEval_o(52 downto 0);

    -- highABits_uid703_pT3_uid322_invPolyEval(BITSELECT,702)@9
    highABits_uid703_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(lev2_a0_uid700_pT3_uid322_invPolyEval_q(52 downto 1));

    -- lev3_a0high_uid704_pT3_uid322_invPolyEval(ADD,703)@9
    lev3_a0high_uid704_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => highABits_uid703_pT3_uid322_invPolyEval_b(51)) & highABits_uid703_pT3_uid322_invPolyEval_b));
    lev3_a0high_uid704_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 18 => lev2_a1_uid701_pT3_uid322_invPolyEval_q(17)) & lev2_a1_uid701_pT3_uid322_invPolyEval_q));
    lev3_a0high_uid704_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev3_a0high_uid704_pT3_uid322_invPolyEval_a) + SIGNED(lev3_a0high_uid704_pT3_uid322_invPolyEval_b));
    lev3_a0high_uid704_pT3_uid322_invPolyEval_q <= lev3_a0high_uid704_pT3_uid322_invPolyEval_o(52 downto 0);

    -- lowRangeA_uid702_pT3_uid322_invPolyEval(BITSELECT,701)@9
    lowRangeA_uid702_pT3_uid322_invPolyEval_in <= lev2_a0_uid700_pT3_uid322_invPolyEval_q(0 downto 0);
    lowRangeA_uid702_pT3_uid322_invPolyEval_b <= lowRangeA_uid702_pT3_uid322_invPolyEval_in(0 downto 0);

    -- lev3_a0_uid705_pT3_uid322_invPolyEval(BITJOIN,704)@9
    lev3_a0_uid705_pT3_uid322_invPolyEval_q <= lev3_a0high_uid704_pT3_uid322_invPolyEval_q & lowRangeA_uid702_pT3_uid322_invPolyEval_b;

    -- highABits_uid707_pT3_uid322_invPolyEval(BITSELECT,706)@9
    highABits_uid707_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(lev3_a0_uid705_pT3_uid322_invPolyEval_q(53 downto 1));

    -- redist7_highABits_uid707_pT3_uid322_invPolyEval_b_1(DELAY,1135)
    redist7_highABits_uid707_pT3_uid322_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 53, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => highABits_uid707_pT3_uid322_invPolyEval_b, xout => redist7_highABits_uid707_pT3_uid322_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- lev4_a0high_uid708_pT3_uid322_invPolyEval(ADD,707)@10
    lev4_a0high_uid708_pT3_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 53 => redist7_highABits_uid707_pT3_uid322_invPolyEval_b_1_q(52)) & redist7_highABits_uid707_pT3_uid322_invPolyEval_b_1_q));
    lev4_a0high_uid708_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000000000000000000000000000000000000" & sm0_uid688_pT3_uid322_invPolyEval_q));
    lev4_a0high_uid708_pT3_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev4_a0high_uid708_pT3_uid322_invPolyEval_a) + SIGNED(lev4_a0high_uid708_pT3_uid322_invPolyEval_b));
    lev4_a0high_uid708_pT3_uid322_invPolyEval_q <= lev4_a0high_uid708_pT3_uid322_invPolyEval_o(53 downto 0);

    -- lowRangeA_uid706_pT3_uid322_invPolyEval(BITSELECT,705)@9
    lowRangeA_uid706_pT3_uid322_invPolyEval_in <= lev3_a0_uid705_pT3_uid322_invPolyEval_q(0 downto 0);
    lowRangeA_uid706_pT3_uid322_invPolyEval_b <= lowRangeA_uid706_pT3_uid322_invPolyEval_in(0 downto 0);

    -- redist8_lowRangeA_uid706_pT3_uid322_invPolyEval_b_1(DELAY,1136)
    redist8_lowRangeA_uid706_pT3_uid322_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => lowRangeA_uid706_pT3_uid322_invPolyEval_b, xout => redist8_lowRangeA_uid706_pT3_uid322_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- lev4_a0_uid709_pT3_uid322_invPolyEval(BITJOIN,708)@10
    lev4_a0_uid709_pT3_uid322_invPolyEval_q <= lev4_a0high_uid708_pT3_uid322_invPolyEval_q & redist8_lowRangeA_uid706_pT3_uid322_invPolyEval_b_1_q;

    -- osig_uid710_pT3_uid322_invPolyEval(BITSELECT,709)@10
    osig_uid710_pT3_uid322_invPolyEval_in <= STD_LOGIC_VECTOR(lev4_a0_uid709_pT3_uid322_invPolyEval_q(49 downto 0));
    osig_uid710_pT3_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid710_pT3_uid322_invPolyEval_in(49 downto 9));

    -- memoryC1_uid272_invTables_q_const(CONSTANT,823)
    memoryC1_uid272_invTables_q_const_q <= "1";

    -- redist52_yAddr_uid68_block_rsrvd_fix_b_7(DELAY,1180)
    redist52_yAddr_uid68_block_rsrvd_fix_b_7 : dspba_delay
    GENERIC MAP ( width => 11, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist51_yAddr_uid68_block_rsrvd_fix_b_4_q, xout => redist52_yAddr_uid68_block_rsrvd_fix_b_7_q, clk => clock, aclr => resetn );

    -- memoryC1_uid271_invTables_lutmem(DUALMEM,1087)@8 + 2
    -- in j@20000000
    memoryC1_uid271_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid271_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid271_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA26ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid271_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid271_invTables_lutmem_aa,
        q_a => memoryC1_uid271_invTables_lutmem_ir
    );
    memoryC1_uid271_invTables_lutmem_r <= memoryC1_uid271_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid270_invTables_lutmem(DUALMEM,1086)@8 + 2
    -- in j@20000000
    memoryC1_uid270_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid270_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid270_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA25ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid270_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid270_invTables_lutmem_aa,
        q_a => memoryC1_uid270_invTables_lutmem_ir
    );
    memoryC1_uid270_invTables_lutmem_r <= memoryC1_uid270_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid269_invTables_lutmem(DUALMEM,1085)@8 + 2
    -- in j@20000000
    memoryC1_uid269_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid269_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid269_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA24ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid269_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid269_invTables_lutmem_aa,
        q_a => memoryC1_uid269_invTables_lutmem_ir
    );
    memoryC1_uid269_invTables_lutmem_r <= memoryC1_uid269_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid268_invTables_lutmem(DUALMEM,1084)@8 + 2
    -- in j@20000000
    memoryC1_uid268_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid268_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid268_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA23ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid268_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid268_invTables_lutmem_aa,
        q_a => memoryC1_uid268_invTables_lutmem_ir
    );
    memoryC1_uid268_invTables_lutmem_r <= memoryC1_uid268_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid267_invTables_lutmem(DUALMEM,1083)@8 + 2
    -- in j@20000000
    memoryC1_uid267_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid267_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid267_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA22ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid267_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid267_invTables_lutmem_aa,
        q_a => memoryC1_uid267_invTables_lutmem_ir
    );
    memoryC1_uid267_invTables_lutmem_r <= memoryC1_uid267_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid266_invTables_lutmem(DUALMEM,1082)@8 + 2
    -- in j@20000000
    memoryC1_uid266_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid266_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid266_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA21ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid266_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid266_invTables_lutmem_aa,
        q_a => memoryC1_uid266_invTables_lutmem_ir
    );
    memoryC1_uid266_invTables_lutmem_r <= memoryC1_uid266_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid265_invTables_lutmem(DUALMEM,1081)@8 + 2
    -- in j@20000000
    memoryC1_uid265_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid265_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid265_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA20ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid265_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid265_invTables_lutmem_aa,
        q_a => memoryC1_uid265_invTables_lutmem_ir
    );
    memoryC1_uid265_invTables_lutmem_r <= memoryC1_uid265_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid264_invTables_lutmem(DUALMEM,1080)@8 + 2
    -- in j@20000000
    memoryC1_uid264_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid264_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid264_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA19ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid264_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid264_invTables_lutmem_aa,
        q_a => memoryC1_uid264_invTables_lutmem_ir
    );
    memoryC1_uid264_invTables_lutmem_r <= memoryC1_uid264_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid263_invTables_lutmem(DUALMEM,1079)@8 + 2
    -- in j@20000000
    memoryC1_uid263_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid263_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid263_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA18ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid263_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid263_invTables_lutmem_aa,
        q_a => memoryC1_uid263_invTables_lutmem_ir
    );
    memoryC1_uid263_invTables_lutmem_r <= memoryC1_uid263_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid262_invTables_lutmem(DUALMEM,1078)@8 + 2
    -- in j@20000000
    memoryC1_uid262_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid262_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid262_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA17ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid262_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid262_invTables_lutmem_aa,
        q_a => memoryC1_uid262_invTables_lutmem_ir
    );
    memoryC1_uid262_invTables_lutmem_r <= memoryC1_uid262_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid261_invTables_lutmem(DUALMEM,1077)@8 + 2
    -- in j@20000000
    memoryC1_uid261_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid261_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid261_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA16ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid261_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid261_invTables_lutmem_aa,
        q_a => memoryC1_uid261_invTables_lutmem_ir
    );
    memoryC1_uid261_invTables_lutmem_r <= memoryC1_uid261_invTables_lutmem_ir(3 downto 0);

    -- memoryC1_uid260_invTables_lutmem(DUALMEM,1076)@8 + 2
    -- in j@20000000
    memoryC1_uid260_invTables_lutmem_aa <= redist52_yAddr_uid68_block_rsrvd_fix_b_7_q;
    memoryC1_uid260_invTables_lutmem_reset0 <= not (resetn);
    memoryC1_uid260_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA15ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid260_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC1_uid260_invTables_lutmem_aa,
        q_a => memoryC1_uid260_invTables_lutmem_ir
    );
    memoryC1_uid260_invTables_lutmem_r <= memoryC1_uid260_invTables_lutmem_ir(3 downto 0);

    -- os_uid273_invTables(BITJOIN,272)@10
    os_uid273_invTables_q <= memoryC1_uid272_invTables_q_const_q & memoryC1_uid271_invTables_lutmem_r & memoryC1_uid270_invTables_lutmem_r & memoryC1_uid269_invTables_lutmem_r & memoryC1_uid268_invTables_lutmem_r & memoryC1_uid267_invTables_lutmem_r & memoryC1_uid266_invTables_lutmem_r & memoryC1_uid265_invTables_lutmem_r & memoryC1_uid264_invTables_lutmem_r & memoryC1_uid263_invTables_lutmem_r & memoryC1_uid262_invTables_lutmem_r & memoryC1_uid261_invTables_lutmem_r & memoryC1_uid260_invTables_lutmem_r;

    -- cIncludingRoundingBit_uid324_invPolyEval(BITJOIN,323)@10
    cIncludingRoundingBit_uid324_invPolyEval_q <= os_uid273_invTables_q & rndBit_uid309_invPolyEval_q;

    -- ts3_uid326_invPolyEval(ADD,325)@10
    ts3_uid326_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => cIncludingRoundingBit_uid324_invPolyEval_q(50)) & cIncludingRoundingBit_uid324_invPolyEval_q));
    ts3_uid326_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 41 => osig_uid710_pT3_uid322_invPolyEval_b(40)) & osig_uid710_pT3_uid322_invPolyEval_b));
    ts3_uid326_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(ts3_uid326_invPolyEval_a) + SIGNED(ts3_uid326_invPolyEval_b));
    ts3_uid326_invPolyEval_q <= ts3_uid326_invPolyEval_o(51 downto 0);

    -- s3_uid327_invPolyEval(BITSELECT,326)@10
    s3_uid327_invPolyEval_b <= STD_LOGIC_VECTOR(ts3_uid326_invPolyEval_q(51 downto 1));

    -- topRangeY_uid725_pT4_uid329_invPolyEval(BITSELECT,724)@10
    topRangeY_uid725_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(s3_uid327_invPolyEval_b(50 downto 34));

    -- redist49_yPE_uid69_block_rsrvd_fix_b_7(DELAY,1177)
    redist49_yPE_uid69_block_rsrvd_fix_b_7 : dspba_delay
    GENERIC MAP ( width => 41, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist48_yPE_uid69_block_rsrvd_fix_b_4_q, xout => redist49_yPE_uid69_block_rsrvd_fix_b_7_q, clk => clock, aclr => resetn );

    -- nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval(BITJOIN,713)@10
    nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q <= GND_q & redist49_yPE_uid69_block_rsrvd_fix_b_7_q;

    -- rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval(BITSELECT,775)@10
    rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval_in <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q(7 downto 0));
    rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval_in(7 downto 0));

    -- rightBottomX_bottomExtension_uid775_pT4_uid329_invPolyEval(CONSTANT,774)
    rightBottomX_bottomExtension_uid775_pT4_uid329_invPolyEval_q <= "000000000";

    -- rightBottomX_mergedSignalTM_uid777_pT4_uid329_invPolyEval(BITJOIN,776)@10
    rightBottomX_mergedSignalTM_uid777_pT4_uid329_invPolyEval_q <= rightBottomX_bottomRange_uid776_pT4_uid329_invPolyEval_b & rightBottomX_bottomExtension_uid775_pT4_uid329_invPolyEval_q;

    -- sm0_uid805_pT4_uid329_invPolyEval(MULT,804)@10 + 2
    sm0_uid805_pT4_uid329_invPolyEval_a0 <= '0' & rightBottomX_mergedSignalTM_uid777_pT4_uid329_invPolyEval_q;
    sm0_uid805_pT4_uid329_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid725_pT4_uid329_invPolyEval_b);
    sm0_uid805_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm0_uid805_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid805_pT4_uid329_invPolyEval_a0,
        datab => sm0_uid805_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid805_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm0_uid805_pT4_uid329_invPolyEval_s1
    );
    sm0_uid805_pT4_uid329_invPolyEval_q <= sm0_uid805_pT4_uid329_invPolyEval_s1(33 downto 0);

    -- aboveLeftY_uid772_pT4_uid329_invPolyEval(BITSELECT,771)@10
    aboveLeftY_uid772_pT4_uid329_invPolyEval_in <= s3_uid327_invPolyEval_b(16 downto 0);
    aboveLeftY_uid772_pT4_uid329_invPolyEval_b <= aboveLeftY_uid772_pT4_uid329_invPolyEval_in(16 downto 0);

    -- topRangeX_uid724_pT4_uid329_invPolyEval(BITSELECT,723)@10
    topRangeX_uid724_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q(41 downto 25));

    -- sm0_uid803_pT4_uid329_invPolyEval(MULT,802)@10 + 2
    sm0_uid803_pT4_uid329_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid724_pT4_uid329_invPolyEval_b);
    sm0_uid803_pT4_uid329_invPolyEval_b0 <= '0' & aboveLeftY_uid772_pT4_uid329_invPolyEval_b;
    sm0_uid803_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm0_uid803_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 18,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid803_pT4_uid329_invPolyEval_a0,
        datab => sm0_uid803_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid803_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm0_uid803_pT4_uid329_invPolyEval_s1
    );
    sm0_uid803_pT4_uid329_invPolyEval_q <= sm0_uid803_pT4_uid329_invPolyEval_s1(33 downto 0);

    -- highBBits_uid816_pT4_uid329_invPolyEval(BITSELECT,815)@12
    highBBits_uid816_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid803_pT4_uid329_invPolyEval_q(33 downto 1));

    -- rightBottomX_uid744_pT4_uid329_invPolyEval(BITSELECT,743)@10
    rightBottomX_uid744_pT4_uid329_invPolyEval_in <= nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q(24 downto 0);
    rightBottomX_uid744_pT4_uid329_invPolyEval_b <= rightBottomX_uid744_pT4_uid329_invPolyEval_in(24 downto 8);

    -- sm1_uid802_pT4_uid329_invPolyEval(MULT,801)@10 + 2
    sm1_uid802_pT4_uid329_invPolyEval_a0 <= '0' & rightBottomX_uid744_pT4_uid329_invPolyEval_b;
    sm1_uid802_pT4_uid329_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid725_pT4_uid329_invPolyEval_b);
    sm1_uid802_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm1_uid802_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm1_uid802_pT4_uid329_invPolyEval_a0,
        datab => sm1_uid802_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm1_uid802_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm1_uid802_pT4_uid329_invPolyEval_s1
    );
    sm1_uid802_pT4_uid329_invPolyEval_q <= sm1_uid802_pT4_uid329_invPolyEval_s1(33 downto 0);

    -- rightBottomY_uid796_pT4_uid329_invPolyEval(BITSELECT,795)@10
    rightBottomY_uid796_pT4_uid329_invPolyEval_in <= s3_uid327_invPolyEval_b(33 downto 0);
    rightBottomY_uid796_pT4_uid329_invPolyEval_b <= rightBottomY_uid796_pT4_uid329_invPolyEval_in(33 downto 26);

    -- rightBottomX_uid795_pT4_uid329_invPolyEval(BITSELECT,794)@10
    rightBottomX_uid795_pT4_uid329_invPolyEval_in <= nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q(7 downto 0);
    rightBottomX_uid795_pT4_uid329_invPolyEval_b <= rightBottomX_uid795_pT4_uid329_invPolyEval_in(7 downto 0);

    -- sm1_uid807_pT4_uid329_invPolyEval(MULT,806)@10 + 2
    sm1_uid807_pT4_uid329_invPolyEval_a0 <= rightBottomX_uid795_pT4_uid329_invPolyEval_b;
    sm1_uid807_pT4_uid329_invPolyEval_b0 <= rightBottomY_uid796_pT4_uid329_invPolyEval_b;
    sm1_uid807_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm1_uid807_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 8,
        lpm_widthb => 8,
        lpm_widthp => 16,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm1_uid807_pT4_uid329_invPolyEval_a0,
        datab => sm1_uid807_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm1_uid807_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm1_uid807_pT4_uid329_invPolyEval_s1
    );
    sm1_uid807_pT4_uid329_invPolyEval_q <= sm1_uid807_pT4_uid329_invPolyEval_s1;

    -- sumAb_uid810_pT4_uid329_invPolyEval(BITJOIN,809)@12
    sumAb_uid810_pT4_uid329_invPolyEval_q <= sm1_uid802_pT4_uid329_invPolyEval_q & sm1_uid807_pT4_uid329_invPolyEval_q;

    -- lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval(ADD,816)@12
    lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => sumAb_uid810_pT4_uid329_invPolyEval_q(49)) & sumAb_uid810_pT4_uid329_invPolyEval_q));
    lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 33 => highBBits_uid816_pT4_uid329_invPolyEval_b(32)) & highBBits_uid816_pT4_uid329_invPolyEval_b));
    lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_a) + SIGNED(lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_b));
    lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_q <= lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_o(50 downto 0);

    -- lowRangeB_uid815_pT4_uid329_invPolyEval(BITSELECT,814)@12
    lowRangeB_uid815_pT4_uid329_invPolyEval_in <= sm0_uid803_pT4_uid329_invPolyEval_q(0 downto 0);
    lowRangeB_uid815_pT4_uid329_invPolyEval_b <= lowRangeB_uid815_pT4_uid329_invPolyEval_in(0 downto 0);

    -- lev1_a1_uid818_pT4_uid329_invPolyEval(BITJOIN,817)@12
    lev1_a1_uid818_pT4_uid329_invPolyEval_q <= lev1_a1sumAHighB_uid817_pT4_uid329_invPolyEval_q & lowRangeB_uid815_pT4_uid329_invPolyEval_b;

    -- aboveLeftY_uid743_pT4_uid329_invPolyEval(BITSELECT,742)@10
    aboveLeftY_uid743_pT4_uid329_invPolyEval_in <= s3_uid327_invPolyEval_b(33 downto 0);
    aboveLeftY_uid743_pT4_uid329_invPolyEval_b <= aboveLeftY_uid743_pT4_uid329_invPolyEval_in(33 downto 17);

    -- sm0_uid801_pT4_uid329_invPolyEval(MULT,800)@10 + 2
    sm0_uid801_pT4_uid329_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid724_pT4_uid329_invPolyEval_b);
    sm0_uid801_pT4_uid329_invPolyEval_b0 <= '0' & aboveLeftY_uid743_pT4_uid329_invPolyEval_b;
    sm0_uid801_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm0_uid801_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 18,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid801_pT4_uid329_invPolyEval_a0,
        datab => sm0_uid801_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid801_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm0_uid801_pT4_uid329_invPolyEval_s1
    );
    sm0_uid801_pT4_uid329_invPolyEval_q <= sm0_uid801_pT4_uid329_invPolyEval_s1(33 downto 0);

    -- aboveLeftY_uid794_pT4_uid329_invPolyEval(BITSELECT,793)@10
    aboveLeftY_uid794_pT4_uid329_invPolyEval_in <= s3_uid327_invPolyEval_b(16 downto 0);
    aboveLeftY_uid794_pT4_uid329_invPolyEval_b <= aboveLeftY_uid794_pT4_uid329_invPolyEval_in(16 downto 9);

    -- aboveLeftX_uid793_pT4_uid329_invPolyEval(BITSELECT,792)@10
    aboveLeftX_uid793_pT4_uid329_invPolyEval_in <= nx_mergedSignalTM_uid714_pT4_uid329_invPolyEval_q(24 downto 0);
    aboveLeftX_uid793_pT4_uid329_invPolyEval_b <= aboveLeftX_uid793_pT4_uid329_invPolyEval_in(24 downto 17);

    -- sm0_uid806_pT4_uid329_invPolyEval(MULT,805)@10 + 2
    sm0_uid806_pT4_uid329_invPolyEval_a0 <= aboveLeftX_uid793_pT4_uid329_invPolyEval_b;
    sm0_uid806_pT4_uid329_invPolyEval_b0 <= aboveLeftY_uid794_pT4_uid329_invPolyEval_b;
    sm0_uid806_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm0_uid806_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 8,
        lpm_widthb => 8,
        lpm_widthp => 16,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid806_pT4_uid329_invPolyEval_a0,
        datab => sm0_uid806_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid806_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm0_uid806_pT4_uid329_invPolyEval_s1
    );
    sm0_uid806_pT4_uid329_invPolyEval_q <= sm0_uid806_pT4_uid329_invPolyEval_s1;

    -- sumAb_uid809_pT4_uid329_invPolyEval(BITJOIN,808)@12
    sumAb_uid809_pT4_uid329_invPolyEval_q <= sm0_uid801_pT4_uid329_invPolyEval_q & sm0_uid806_pT4_uid329_invPolyEval_q;

    -- sm0_uid800_pT4_uid329_invPolyEval(MULT,799)@10 + 2
    sm0_uid800_pT4_uid329_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_uid724_pT4_uid329_invPolyEval_b);
    sm0_uid800_pT4_uid329_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid725_pT4_uid329_invPolyEval_b);
    sm0_uid800_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm0_uid800_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid800_pT4_uid329_invPolyEval_a0,
        datab => sm0_uid800_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid800_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm0_uid800_pT4_uid329_invPolyEval_s1
    );
    sm0_uid800_pT4_uid329_invPolyEval_q <= sm0_uid800_pT4_uid329_invPolyEval_s1;

    -- sm0_uid804_pT4_uid329_invPolyEval(MULT,803)@10 + 2
    sm0_uid804_pT4_uid329_invPolyEval_a0 <= rightBottomX_uid744_pT4_uid329_invPolyEval_b;
    sm0_uid804_pT4_uid329_invPolyEval_b0 <= aboveLeftY_uid743_pT4_uid329_invPolyEval_b;
    sm0_uid804_pT4_uid329_invPolyEval_reset <= not (resetn);
    sm0_uid804_pT4_uid329_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid804_pT4_uid329_invPolyEval_a0,
        datab => sm0_uid804_pT4_uid329_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid804_pT4_uid329_invPolyEval_reset,
        clock => clock,
        result => sm0_uid804_pT4_uid329_invPolyEval_s1
    );
    sm0_uid804_pT4_uid329_invPolyEval_q <= sm0_uid804_pT4_uid329_invPolyEval_s1;

    -- sumAb_uid808_pT4_uid329_invPolyEval(BITJOIN,807)@12
    sumAb_uid808_pT4_uid329_invPolyEval_q <= sm0_uid800_pT4_uid329_invPolyEval_q & sm0_uid804_pT4_uid329_invPolyEval_q;

    -- highABits_uid812_pT4_uid329_invPolyEval(BITSELECT,811)@12
    highABits_uid812_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(sumAb_uid808_pT4_uid329_invPolyEval_q(67 downto 1));

    -- lev1_a0high_uid813_pT4_uid329_invPolyEval(ADD,812)@12
    lev1_a0high_uid813_pT4_uid329_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((67 downto 67 => highABits_uid812_pT4_uid329_invPolyEval_b(66)) & highABits_uid812_pT4_uid329_invPolyEval_b));
    lev1_a0high_uid813_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((67 downto 50 => sumAb_uid809_pT4_uid329_invPolyEval_q(49)) & sumAb_uid809_pT4_uid329_invPolyEval_q));
    lev1_a0high_uid813_pT4_uid329_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0high_uid813_pT4_uid329_invPolyEval_a) + SIGNED(lev1_a0high_uid813_pT4_uid329_invPolyEval_b));
    lev1_a0high_uid813_pT4_uid329_invPolyEval_q <= lev1_a0high_uid813_pT4_uid329_invPolyEval_o(67 downto 0);

    -- lowRangeA_uid811_pT4_uid329_invPolyEval(BITSELECT,810)@12
    lowRangeA_uid811_pT4_uid329_invPolyEval_in <= sumAb_uid808_pT4_uid329_invPolyEval_q(0 downto 0);
    lowRangeA_uid811_pT4_uid329_invPolyEval_b <= lowRangeA_uid811_pT4_uid329_invPolyEval_in(0 downto 0);

    -- lev1_a0_uid814_pT4_uid329_invPolyEval(BITJOIN,813)@12
    lev1_a0_uid814_pT4_uid329_invPolyEval_q <= lev1_a0high_uid813_pT4_uid329_invPolyEval_q & lowRangeA_uid811_pT4_uid329_invPolyEval_b;

    -- lev2_a0_uid819_pT4_uid329_invPolyEval(ADD,818)@12
    lev2_a0_uid819_pT4_uid329_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((69 downto 69 => lev1_a0_uid814_pT4_uid329_invPolyEval_q(68)) & lev1_a0_uid814_pT4_uid329_invPolyEval_q));
    lev2_a0_uid819_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((69 downto 52 => lev1_a1_uid818_pT4_uid329_invPolyEval_q(51)) & lev1_a1_uid818_pT4_uid329_invPolyEval_q));
    lev2_a0_uid819_pT4_uid329_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid819_pT4_uid329_invPolyEval_a) + SIGNED(lev2_a0_uid819_pT4_uid329_invPolyEval_b));
    lev2_a0_uid819_pT4_uid329_invPolyEval_q <= lev2_a0_uid819_pT4_uid329_invPolyEval_o(69 downto 0);

    -- lev3_a0_uid820_pT4_uid329_invPolyEval(ADD,819)@12
    lev3_a0_uid820_pT4_uid329_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((70 downto 70 => lev2_a0_uid819_pT4_uid329_invPolyEval_q(69)) & lev2_a0_uid819_pT4_uid329_invPolyEval_q));
    lev3_a0_uid820_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((70 downto 34 => sm0_uid805_pT4_uid329_invPolyEval_q(33)) & sm0_uid805_pT4_uid329_invPolyEval_q));
    lev3_a0_uid820_pT4_uid329_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev3_a0_uid820_pT4_uid329_invPolyEval_a) + SIGNED(lev3_a0_uid820_pT4_uid329_invPolyEval_b));
    lev3_a0_uid820_pT4_uid329_invPolyEval_q <= lev3_a0_uid820_pT4_uid329_invPolyEval_o(70 downto 0);

    -- osig_uid821_pT4_uid329_invPolyEval(BITSELECT,820)@12
    osig_uid821_pT4_uid329_invPolyEval_in <= STD_LOGIC_VECTOR(lev3_a0_uid820_pT4_uid329_invPolyEval_q(66 downto 0));
    osig_uid821_pT4_uid329_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid821_pT4_uid329_invPolyEval_in(66 downto 14));

    -- redist6_osig_uid821_pT4_uid329_invPolyEval_b_1(DELAY,1134)
    redist6_osig_uid821_pT4_uid329_invPolyEval_b_1 : dspba_delay
    GENERIC MAP ( width => 53, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => osig_uid821_pT4_uid329_invPolyEval_b, xout => redist6_osig_uid821_pT4_uid329_invPolyEval_b_1_q, clk => clock, aclr => resetn );

    -- redist53_yAddr_uid68_block_rsrvd_fix_b_10(DELAY,1181)
    redist53_yAddr_uid68_block_rsrvd_fix_b_10 : dspba_delay
    GENERIC MAP ( width => 11, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist52_yAddr_uid68_block_rsrvd_fix_b_7_q, xout => redist53_yAddr_uid68_block_rsrvd_fix_b_10_q, clk => clock, aclr => resetn );

    -- memoryC0_uid256_invTables_lutmem(DUALMEM,1075)@11 + 2
    -- in j@20000000
    memoryC0_uid256_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid256_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid256_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA14ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid256_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid256_invTables_lutmem_aa,
        q_a => memoryC0_uid256_invTables_lutmem_ir
    );
    memoryC0_uid256_invTables_lutmem_r <= memoryC0_uid256_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid255_invTables_lutmem(DUALMEM,1074)@11 + 2
    -- in j@20000000
    memoryC0_uid255_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid255_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid255_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA13ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid255_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid255_invTables_lutmem_aa,
        q_a => memoryC0_uid255_invTables_lutmem_ir
    );
    memoryC0_uid255_invTables_lutmem_r <= memoryC0_uid255_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid254_invTables_lutmem(DUALMEM,1073)@11 + 2
    -- in j@20000000
    memoryC0_uid254_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid254_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid254_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA12ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid254_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid254_invTables_lutmem_aa,
        q_a => memoryC0_uid254_invTables_lutmem_ir
    );
    memoryC0_uid254_invTables_lutmem_r <= memoryC0_uid254_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid253_invTables_lutmem(DUALMEM,1072)@11 + 2
    -- in j@20000000
    memoryC0_uid253_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid253_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid253_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA11ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid253_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid253_invTables_lutmem_aa,
        q_a => memoryC0_uid253_invTables_lutmem_ir
    );
    memoryC0_uid253_invTables_lutmem_r <= memoryC0_uid253_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid252_invTables_lutmem(DUALMEM,1071)@11 + 2
    -- in j@20000000
    memoryC0_uid252_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid252_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid252_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA10ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid252_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid252_invTables_lutmem_aa,
        q_a => memoryC0_uid252_invTables_lutmem_ir
    );
    memoryC0_uid252_invTables_lutmem_r <= memoryC0_uid252_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid251_invTables_lutmem(DUALMEM,1070)@11 + 2
    -- in j@20000000
    memoryC0_uid251_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid251_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid251_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA9ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid251_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid251_invTables_lutmem_aa,
        q_a => memoryC0_uid251_invTables_lutmem_ir
    );
    memoryC0_uid251_invTables_lutmem_r <= memoryC0_uid251_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid250_invTables_lutmem(DUALMEM,1069)@11 + 2
    -- in j@20000000
    memoryC0_uid250_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid250_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid250_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA8ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid250_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid250_invTables_lutmem_aa,
        q_a => memoryC0_uid250_invTables_lutmem_ir
    );
    memoryC0_uid250_invTables_lutmem_r <= memoryC0_uid250_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid249_invTables_lutmem(DUALMEM,1068)@11 + 2
    -- in j@20000000
    memoryC0_uid249_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid249_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid249_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA7ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid249_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid249_invTables_lutmem_aa,
        q_a => memoryC0_uid249_invTables_lutmem_ir
    );
    memoryC0_uid249_invTables_lutmem_r <= memoryC0_uid249_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid248_invTables_lutmem(DUALMEM,1067)@11 + 2
    -- in j@20000000
    memoryC0_uid248_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid248_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid248_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA6ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid248_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid248_invTables_lutmem_aa,
        q_a => memoryC0_uid248_invTables_lutmem_ir
    );
    memoryC0_uid248_invTables_lutmem_r <= memoryC0_uid248_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid247_invTables_lutmem(DUALMEM,1066)@11 + 2
    -- in j@20000000
    memoryC0_uid247_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid247_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid247_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA5ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid247_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid247_invTables_lutmem_aa,
        q_a => memoryC0_uid247_invTables_lutmem_ir
    );
    memoryC0_uid247_invTables_lutmem_r <= memoryC0_uid247_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid246_invTables_lutmem(DUALMEM,1065)@11 + 2
    -- in j@20000000
    memoryC0_uid246_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid246_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid246_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA4ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid246_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid246_invTables_lutmem_aa,
        q_a => memoryC0_uid246_invTables_lutmem_ir
    );
    memoryC0_uid246_invTables_lutmem_r <= memoryC0_uid246_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid245_invTables_lutmem(DUALMEM,1064)@11 + 2
    -- in j@20000000
    memoryC0_uid245_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid245_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid245_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA3ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid245_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid245_invTables_lutmem_aa,
        q_a => memoryC0_uid245_invTables_lutmem_ir
    );
    memoryC0_uid245_invTables_lutmem_r <= memoryC0_uid245_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid244_invTables_lutmem(DUALMEM,1063)@11 + 2
    -- in j@20000000
    memoryC0_uid244_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid244_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid244_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA2ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid244_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid244_invTables_lutmem_aa,
        q_a => memoryC0_uid244_invTables_lutmem_ir
    );
    memoryC0_uid244_invTables_lutmem_r <= memoryC0_uid244_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid243_invTables_lutmem(DUALMEM,1062)@11 + 2
    -- in j@20000000
    memoryC0_uid243_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid243_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid243_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA1ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid243_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid243_invTables_lutmem_aa,
        q_a => memoryC0_uid243_invTables_lutmem_ir
    );
    memoryC0_uid243_invTables_lutmem_r <= memoryC0_uid243_invTables_lutmem_ir(3 downto 0);

    -- memoryC0_uid242_invTables_lutmem(DUALMEM,1061)@11 + 2
    -- in j@20000000
    memoryC0_uid242_invTables_lutmem_aa <= redist53_yAddr_uid68_block_rsrvd_fix_b_10_q;
    memoryC0_uid242_invTables_lutmem_reset0 <= not (resetn);
    memoryC0_uid242_invTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 4,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "floatComponent_i_sfc_logic_c0_for_cond_fA0ZinvTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid242_invTables_lutmem_reset0,
        clock0 => clock,
        address_a => memoryC0_uid242_invTables_lutmem_aa,
        q_a => memoryC0_uid242_invTables_lutmem_ir
    );
    memoryC0_uid242_invTables_lutmem_r <= memoryC0_uid242_invTables_lutmem_ir(3 downto 0);

    -- os_uid258_invTables(BITJOIN,257)@13
    os_uid258_invTables_q <= GND_q & memoryC0_uid256_invTables_lutmem_r & memoryC0_uid255_invTables_lutmem_r & memoryC0_uid254_invTables_lutmem_r & memoryC0_uid253_invTables_lutmem_r & memoryC0_uid252_invTables_lutmem_r & memoryC0_uid251_invTables_lutmem_r & memoryC0_uid250_invTables_lutmem_r & memoryC0_uid249_invTables_lutmem_r & memoryC0_uid248_invTables_lutmem_r & memoryC0_uid247_invTables_lutmem_r & memoryC0_uid246_invTables_lutmem_r & memoryC0_uid245_invTables_lutmem_r & memoryC0_uid244_invTables_lutmem_r & memoryC0_uid243_invTables_lutmem_r & memoryC0_uid242_invTables_lutmem_r;

    -- rndBit_uid330_invPolyEval(CONSTANT,329)
    rndBit_uid330_invPolyEval_q <= "001";

    -- cIncludingRoundingBit_uid331_invPolyEval(BITJOIN,330)@13
    cIncludingRoundingBit_uid331_invPolyEval_q <= os_uid258_invTables_q & rndBit_uid330_invPolyEval_q;

    -- ts4_uid333_invPolyEval(ADD,332)@13
    ts4_uid333_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 64 => cIncludingRoundingBit_uid331_invPolyEval_q(63)) & cIncludingRoundingBit_uid331_invPolyEval_q));
    ts4_uid333_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 53 => redist6_osig_uid821_pT4_uid329_invPolyEval_b_1_q(52)) & redist6_osig_uid821_pT4_uid329_invPolyEval_b_1_q));
    ts4_uid333_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(ts4_uid333_invPolyEval_a) + SIGNED(ts4_uid333_invPolyEval_b));
    ts4_uid333_invPolyEval_q <= ts4_uid333_invPolyEval_o(64 downto 0);

    -- s4_uid334_invPolyEval(BITSELECT,333)@13
    s4_uid334_invPolyEval_b <= STD_LOGIC_VECTOR(ts4_uid333_invPolyEval_q(64 downto 1));

    -- invY_uid71_block_rsrvd_fix(BITSELECT,70)@13
    invY_uid71_block_rsrvd_fix_in <= s4_uid334_invPolyEval_b(60 downto 0);
    invY_uid71_block_rsrvd_fix_b <= invY_uid71_block_rsrvd_fix_in(60 downto 5);

    -- rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,455)@13
    rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix_in <= invY_uid71_block_rsrvd_fix_b(1 downto 0);
    rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix_b <= rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix_in(1 downto 0);

    -- rightBottomX_mergedSignalTM_uid457_divValPreNorm_uid76_block_rsrvd_fix(BITJOIN,456)@13
    rightBottomX_mergedSignalTM_uid457_divValPreNorm_uid76_block_rsrvd_fix_q <= rightBottomX_bottomRange_uid456_divValPreNorm_uid76_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix(MULT,467)@13 + 2
    sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_a0 <= rightBottomX_mergedSignalTM_uid457_divValPreNorm_uid76_block_rsrvd_fix_q;
    sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_b0 <= rightBottomY_uid459_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 9,
        lpm_widthp => 18,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- topRangeY_uid382_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,381)@13
    topRangeY_uid382_divValPreNorm_uid76_block_rsrvd_fix_b <= leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q(52 downto 35);

    -- rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,433)@13
    rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix_in <= invY_uid71_block_rsrvd_fix_b(19 downto 0);
    rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix_b <= rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix_in(19 downto 2);

    -- sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix(MULT,464)@13 + 2
    sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_a0 <= rightBottomX_uid434_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_b0 <= topRangeY_uid382_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix(ADD,473)@15
    lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & sm0_uid465_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000" & sm0_uid468_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_a) + UNSIGNED(lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_b));
    lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_q <= lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_o(36 downto 0);

    -- aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,399)@13
    aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_in <= leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q(34 downto 0);
    aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_b <= aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_in(34 downto 17);

    -- rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,400)@13
    rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_in <= invY_uid71_block_rsrvd_fix_b(37 downto 0);
    rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_b <= rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_in(37 downto 20);

    -- sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix(MULT,463)@13 + 2
    sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_a0 <= rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_b0 <= aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix(MULT,461)@13 + 2
    sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_a0 <= rightBottomX_uid401_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_b0 <= topRangeY_uid382_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_q <= sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,453)@13
    rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix_in <= leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q(34 downto 0);
    rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix_b <= rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix_in(34 downto 26);

    -- rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,452)@13
    rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix_in <= invY_uid71_block_rsrvd_fix_b(19 downto 0);
    rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix_b <= rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix_in(19 downto 11);

    -- sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix(MULT,466)@13 + 2
    sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_a0 <= rightBottomX_uid453_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_b0 <= rightBottomY_uid454_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 9,
        lpm_widthp => 18,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- sumAb_uid471_divValPreNorm_uid76_block_rsrvd_fix(BITJOIN,470)@15
    sumAb_uid471_divValPreNorm_uid76_block_rsrvd_fix_q <= sm1_uid462_divValPreNorm_uid76_block_rsrvd_fix_q & sm0_uid467_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix(ADD,472)@15
    lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & sumAb_uid471_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000" & sm0_uid464_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_a) + UNSIGNED(lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_b));
    lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_q <= lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_o(54 downto 0);

    -- topRangeX_uid381_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,380)@13
    topRangeX_uid381_divValPreNorm_uid76_block_rsrvd_fix_b <= invY_uid71_block_rsrvd_fix_b(55 downto 38);

    -- sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix(MULT,460)@13 + 2
    sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_a0 <= topRangeX_uid381_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_b0 <= aboveLeftY_uid400_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,451)@13
    aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix_in <= leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q(16 downto 0);
    aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix_b <= aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix_in(16 downto 8);

    -- aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,450)@13
    aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix_in <= invY_uid71_block_rsrvd_fix_b(37 downto 0);
    aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix_b <= aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix_in(37 downto 29);

    -- sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix(MULT,465)@13 + 2
    sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_a0 <= aboveLeftX_uid451_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_b0 <= aboveLeftY_uid452_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 9,
        lpm_widthp => 18,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- sumAb_uid470_divValPreNorm_uid76_block_rsrvd_fix(BITJOIN,469)@15
    sumAb_uid470_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid461_divValPreNorm_uid76_block_rsrvd_fix_q & sm0_uid466_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix(MULT,459)@13 + 2
    sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_a0 <= topRangeX_uid381_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_b0 <= topRangeY_uid382_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,428)@13
    aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix_in <= leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q(16 downto 0);
    aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix_b <= aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix_in(16 downto 0);

    -- aboveLeftY_mergedSignalTM_uid430_divValPreNorm_uid76_block_rsrvd_fix(BITJOIN,429)@13
    aboveLeftY_mergedSignalTM_uid430_divValPreNorm_uid76_block_rsrvd_fix_q <= aboveLeftY_bottomRange_uid429_divValPreNorm_uid76_block_rsrvd_fix_b & GND_q;

    -- sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix(MULT,462)@13 + 2
    sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_a0 <= topRangeX_uid381_divValPreNorm_uid76_block_rsrvd_fix_b;
    sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_b0 <= aboveLeftY_mergedSignalTM_uid430_divValPreNorm_uid76_block_rsrvd_fix_q;
    sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_reset <= not (resetn);
    sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_a0,
        datab => sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_b0,
        clken => VCC_q(0),
        aclr => sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_reset,
        clock => clock,
        result => sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_s1
    );
    sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_s1;

    -- sumAb_uid469_divValPreNorm_uid76_block_rsrvd_fix(BITJOIN,468)@15
    sumAb_uid469_divValPreNorm_uid76_block_rsrvd_fix_q <= sm0_uid460_divValPreNorm_uid76_block_rsrvd_fix_q & sm0_uid463_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix(ADD,471)@15
    lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & sumAb_uid469_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000" & sumAb_uid470_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_a) + UNSIGNED(lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_b));
    lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_q <= lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_o(72 downto 0);

    -- lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix(ADD,474)@15
    lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & lev1_a0_uid472_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000" & lev1_a1_uid473_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_a) + UNSIGNED(lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_b));
    lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_q <= lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_o(73 downto 0);

    -- lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix(ADD,475)@15
    lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & lev2_a0_uid475_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000000000" & lev1_a2_uid474_divValPreNorm_uid76_block_rsrvd_fix_q);
    lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_a) + UNSIGNED(lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_b));
    lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_q <= lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_o(74 downto 0);

    -- osig_uid477_divValPreNorm_uid76_block_rsrvd_fix(BITSELECT,476)@15
    osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_in <= lev3_a0_uid476_divValPreNorm_uid76_block_rsrvd_fix_q(71 downto 0);
    osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b <= osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_in(71 downto 14);

    -- redist14_osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b_1(DELAY,1142)
    redist14_osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 58, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b, xout => redist14_osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- fracPostNormIsNotZero_uid78_block_rsrvd_fix(LOGICAL,77)@1
    fracPostNormIsNotZero_uid78_block_rsrvd_fix_q <= "1" WHEN addrFull_uid66_block_rsrvd_fix_b /= "0000000000000000000000000000000000000000000000000000" ELSE "0";

    -- fracPostNormIsZero_uid79_block_rsrvd_fix(LOGICAL,78)@1
    fracPostNormIsZero_uid79_block_rsrvd_fix_q <= not (fracPostNormIsNotZero_uid78_block_rsrvd_fix_q);

    -- updatedY_uid17_block_rsrvd_fix(BITJOIN,16)@0
    updatedY_uid17_block_rsrvd_fix_q <= GND_q & paddingY_uid16_block_rsrvd_fix_q;

    -- fracYZero_uid16_block_rsrvd_fix(LOGICAL,17)@0 + 1
    fracYZero_uid16_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & fracY_uid14_block_rsrvd_fix_b);
    fracYZero_uid16_block_rsrvd_fix_qi <= "1" WHEN fracYZero_uid16_block_rsrvd_fix_a = updatedY_uid17_block_rsrvd_fix_q ELSE "0";
    fracYZero_uid16_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracYZero_uid16_block_rsrvd_fix_qi, xout => fracYZero_uid16_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- divValPreNormSelect_uid80_block_rsrvd_fix(LOGICAL,79)@1 + 1
    divValPreNormSelect_uid80_block_rsrvd_fix_qi <= fracYZero_uid16_block_rsrvd_fix_q or fracPostNormIsZero_uid79_block_rsrvd_fix_q;
    divValPreNormSelect_uid80_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => divValPreNormSelect_uid80_block_rsrvd_fix_qi, xout => divValPreNormSelect_uid80_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist45_divValPreNormSelect_uid80_block_rsrvd_fix_q_15(DELAY,1173)
    redist45_divValPreNormSelect_uid80_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => divValPreNormSelect_uid80_block_rsrvd_fix_q, xout => redist45_divValPreNormSelect_uid80_block_rsrvd_fix_q_15_q, clk => clock, aclr => resetn );

    -- divValPreNormYPow2Exc_uid84_block_rsrvd_fix(MUX,83)@16
    divValPreNormYPow2Exc_uid84_block_rsrvd_fix_s <= redist45_divValPreNormSelect_uid80_block_rsrvd_fix_q_15_q;
    divValPreNormYPow2Exc_uid84_block_rsrvd_fix_combproc: PROCESS (divValPreNormYPow2Exc_uid84_block_rsrvd_fix_s, redist14_osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b_1_q, oFracXZ4_uid82_block_rsrvd_fix_q)
    BEGIN
        CASE (divValPreNormYPow2Exc_uid84_block_rsrvd_fix_s) IS
            WHEN "0" => divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q <= redist14_osig_uid477_divValPreNorm_uid76_block_rsrvd_fix_b_1_q;
            WHEN "1" => divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q <= oFracXZ4_uid82_block_rsrvd_fix_q;
            WHEN OTHERS => divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- norm_uid85_block_rsrvd_fix(BITSELECT,84)@16
    norm_uid85_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q(57 downto 57));

    -- cstBiasM1_uid7_block_rsrvd_fix(CONSTANT,6)
    cstBiasM1_uid7_block_rsrvd_fix_q <= "01111111110";

    -- redist56_excR_y_uid50_block_rsrvd_fix_q_15(DELAY,1184)
    redist56_excR_y_uid50_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 15, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excR_y_uid50_block_rsrvd_fix_q, xout => redist56_excR_y_uid50_block_rsrvd_fix_q_15_q, clk => clock, aclr => resetn );

    -- yNotSubnormal_uid53_block_rsrvd_fix(LOGICAL,52)@15
    yNotSubnormal_uid53_block_rsrvd_fix_q <= redist60_excZ_y_uid45_block_rsrvd_fix_q_15_q or redist56_excR_y_uid50_block_rsrvd_fix_q_15_q or redist58_excI_y_uid46_block_rsrvd_fix_q_15_q or redist57_excN_y_uid47_block_rsrvd_fix_q_15_q;

    -- excYSubnorm_uid54_block_rsrvd_fix(LOGICAL,53)@15
    excYSubnorm_uid54_block_rsrvd_fix_q <= not (yNotSubnormal_uid53_block_rsrvd_fix_q);

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_notEnable(LOGICAL,1235)
    redist69_expY_uid13_block_rsrvd_fix_b_15_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_nor(LOGICAL,1236)
    redist69_expY_uid13_block_rsrvd_fix_b_15_nor_q <= not (redist69_expY_uid13_block_rsrvd_fix_b_15_notEnable_q or redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena_q);

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_mem_last(CONSTANT,1232)
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_last_q <= "01100";

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_cmp(LOGICAL,1233)
    redist69_expY_uid13_block_rsrvd_fix_b_15_cmp_b <= STD_LOGIC_VECTOR("0" & redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_q);
    redist69_expY_uid13_block_rsrvd_fix_b_15_cmp_q <= "1" WHEN redist69_expY_uid13_block_rsrvd_fix_b_15_mem_last_q = redist69_expY_uid13_block_rsrvd_fix_b_15_cmp_b ELSE "0";

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_cmpReg(REG,1234)
    redist69_expY_uid13_block_rsrvd_fix_b_15_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist69_expY_uid13_block_rsrvd_fix_b_15_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist69_expY_uid13_block_rsrvd_fix_b_15_cmpReg_q <= STD_LOGIC_VECTOR(redist69_expY_uid13_block_rsrvd_fix_b_15_cmp_q);
        END IF;
    END PROCESS;

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena(REG,1237)
    redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist69_expY_uid13_block_rsrvd_fix_b_15_nor_q = "1") THEN
                redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena_q <= STD_LOGIC_VECTOR(redist69_expY_uid13_block_rsrvd_fix_b_15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_enaAnd(LOGICAL,1238)
    redist69_expY_uid13_block_rsrvd_fix_b_15_enaAnd_q <= redist69_expY_uid13_block_rsrvd_fix_b_15_sticky_ena_q and VCC_q;

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt(COUNTER,1230)
    -- low=0, high=13, step=1, init=0
    redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_eq <= '1';
            ELSE
                redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_eq <= '0';
            END IF;
            IF (redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_eq = '1') THEN
                redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i <= redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i + 3;
            ELSE
                redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i <= redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_i, 4)));

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_wraddr(REG,1231)
    redist69_expY_uid13_block_rsrvd_fix_b_15_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist69_expY_uid13_block_rsrvd_fix_b_15_wraddr_q <= "1101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist69_expY_uid13_block_rsrvd_fix_b_15_wraddr_q <= STD_LOGIC_VECTOR(redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist69_expY_uid13_block_rsrvd_fix_b_15_mem(DUALMEM,1229)
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_ia <= STD_LOGIC_VECTOR(expY_uid13_block_rsrvd_fix_b);
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_aa <= redist69_expY_uid13_block_rsrvd_fix_b_15_wraddr_q;
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_ab <= redist69_expY_uid13_block_rsrvd_fix_b_15_rdcnt_q;
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_reset0 <= not (resetn);
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 11,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 11,
        widthad_b => 4,
        numwords_b => 14,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken1 => redist69_expY_uid13_block_rsrvd_fix_b_15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist69_expY_uid13_block_rsrvd_fix_b_15_mem_reset0,
        clock1 => clock,
        address_a => redist69_expY_uid13_block_rsrvd_fix_b_15_mem_aa,
        data_a => redist69_expY_uid13_block_rsrvd_fix_b_15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist69_expY_uid13_block_rsrvd_fix_b_15_mem_ab,
        q_b => redist69_expY_uid13_block_rsrvd_fix_b_15_mem_iq
    );
    redist69_expY_uid13_block_rsrvd_fix_b_15_mem_q <= redist69_expY_uid13_block_rsrvd_fix_b_15_mem_iq(10 downto 0);

    -- expYSubnorm_uid59_block_rsrvd_fix(ADD,58)@15
    expYSubnorm_uid59_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist69_expY_uid13_block_rsrvd_fix_b_15_mem_q);
    expYSubnorm_uid59_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000" & excYSubnorm_uid54_block_rsrvd_fix_q);
    expYSubnorm_uid59_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expYSubnorm_uid59_block_rsrvd_fix_a) + UNSIGNED(expYSubnorm_uid59_block_rsrvd_fix_b));
    expYSubnorm_uid59_block_rsrvd_fix_q <= expYSubnorm_uid59_block_rsrvd_fix_o(11 downto 0);

    -- redist62_excR_x_uid33_block_rsrvd_fix_q_3(DELAY,1190)
    redist62_excR_x_uid33_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excR_x_uid33_block_rsrvd_fix_q, xout => redist62_excR_x_uid33_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- xNotSubnormal_uid55_block_rsrvd_fix(LOGICAL,54)@15
    xNotSubnormal_uid55_block_rsrvd_fix_q <= redist66_excZ_x_uid28_block_rsrvd_fix_q_3_q or redist62_excR_x_uid33_block_rsrvd_fix_q_3_q or redist64_excI_x_uid29_block_rsrvd_fix_q_3_q or redist63_excN_x_uid30_block_rsrvd_fix_q_3_q;

    -- excXSubnorm_uid56_block_rsrvd_fix(LOGICAL,55)@15
    excXSubnorm_uid56_block_rsrvd_fix_q <= not (xNotSubnormal_uid55_block_rsrvd_fix_q);

    -- redist70_expX_uid10_block_rsrvd_fix_b_3(DELAY,1198)
    redist70_expX_uid10_block_rsrvd_fix_b_3 : dspba_delay
    GENERIC MAP ( width => 11, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expX_uid10_block_rsrvd_fix_b, xout => redist70_expX_uid10_block_rsrvd_fix_b_3_q, clk => clock, aclr => resetn );

    -- expXSubnorm_uid58_block_rsrvd_fix(ADD,57)@15
    expXSubnorm_uid58_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist70_expX_uid10_block_rsrvd_fix_b_3_q);
    expXSubnorm_uid58_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000" & excXSubnorm_uid56_block_rsrvd_fix_q);
    expXSubnorm_uid58_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expXSubnorm_uid58_block_rsrvd_fix_a) + UNSIGNED(expXSubnorm_uid58_block_rsrvd_fix_b));
    expXSubnorm_uid58_block_rsrvd_fix_q <= expXSubnorm_uid58_block_rsrvd_fix_o(11 downto 0);

    -- expXmY_uid60_block_rsrvd_fix(SUB,59)@15
    expXmY_uid60_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expXSubnorm_uid58_block_rsrvd_fix_q);
    expXmY_uid60_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expYSubnorm_uid59_block_rsrvd_fix_q);
    expXmY_uid60_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expXmY_uid60_block_rsrvd_fix_a) - UNSIGNED(expXmY_uid60_block_rsrvd_fix_b));
    expXmY_uid60_block_rsrvd_fix_q <= expXmY_uid60_block_rsrvd_fix_o(12 downto 0);

    -- expR_uid61_block_rsrvd_fix(ADD,60)@15 + 1
    expR_uid61_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => expXmY_uid60_block_rsrvd_fix_q(12)) & expXmY_uid60_block_rsrvd_fix_q));
    expR_uid61_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & cstBiasM1_uid7_block_rsrvd_fix_q));
    expR_uid61_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expR_uid61_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expR_uid61_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expR_uid61_block_rsrvd_fix_a) + SIGNED(expR_uid61_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expR_uid61_block_rsrvd_fix_q <= expR_uid61_block_rsrvd_fix_o(13 downto 0);

    -- expRPostNormHandling0_uid87_block_rsrvd_fix(ADD,86)@16
    expRPostNormHandling0_uid87_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => expR_uid61_block_rsrvd_fix_q(13)) & expR_uid61_block_rsrvd_fix_q));
    expRPostNormHandling0_uid87_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000000" & norm_uid85_block_rsrvd_fix_b));
    expRPostNormHandling0_uid87_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expRPostNormHandling0_uid87_block_rsrvd_fix_a) + SIGNED(expRPostNormHandling0_uid87_block_rsrvd_fix_b));
    expRPostNormHandling0_uid87_block_rsrvd_fix_q <= expRPostNormHandling0_uid87_block_rsrvd_fix_o(14 downto 0);

    -- expRPostNormHandling_uid88_block_rsrvd_fix(ADD,87)@16
    expRPostNormHandling_uid88_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => expRPostNormHandling0_uid87_block_rsrvd_fix_q(14)) & expRPostNormHandling0_uid87_block_rsrvd_fix_q));
    expRPostNormHandling_uid88_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 7 => addSubnormAdditions_uid86_block_rsrvd_fix_q(6)) & addSubnormAdditions_uid86_block_rsrvd_fix_q));
    expRPostNormHandling_uid88_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expRPostNormHandling_uid88_block_rsrvd_fix_a) + SIGNED(expRPostNormHandling_uid88_block_rsrvd_fix_b));
    expRPostNormHandling_uid88_block_rsrvd_fix_q <= expRPostNormHandling_uid88_block_rsrvd_fix_o(15 downto 0);

    -- forwardExponentResult_uid108_block_rsrvd_fix(LOGICAL,107)@16
    forwardExponentResult_uid108_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => invExpRPostNormHandlingSign_uid107_block_rsrvd_fix_q(0)) & invExpRPostNormHandlingSign_uid107_block_rsrvd_fix_q));
    forwardExponentResult_uid108_block_rsrvd_fix_q <= expRPostNormHandling_uid88_block_rsrvd_fix_q and forwardExponentResult_uid108_block_rsrvd_fix_b;

    -- fwdExponentResult_uid109_block_rsrvd_fix(BITSELECT,108)@16
    fwdExponentResult_uid109_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(forwardExponentResult_uid108_block_rsrvd_fix_q(12 downto 0));
    fwdExponentResult_uid109_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fwdExponentResult_uid109_block_rsrvd_fix_in(12 downto 0));

    -- redist41_fwdExponentResult_uid109_block_rsrvd_fix_b_1(DELAY,1169)
    redist41_fwdExponentResult_uid109_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fwdExponentResult_uid109_block_rsrvd_fix_b, xout => redist41_fwdExponentResult_uid109_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,940)
    rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage2Idx1Rng1_uid967_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,966)@16
    rightShiftStage2Idx1Rng1_uid967_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 1);

    -- rightShiftStage2Idx1_uid969_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,968)@16
    rightShiftStage2Idx1_uid969_alignedResultFraction_uid100_block_rsrvd_fix_q <= GND_q & rightShiftStage2Idx1Rng1_uid967_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx7Pad14_uid963_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,962)
    rightShiftStage1Idx7Pad14_uid963_alignedResultFraction_uid100_block_rsrvd_fix_q <= "00000000000000";

    -- rightShiftStage1Idx7Rng14_uid962_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,961)@16
    rightShiftStage1Idx7Rng14_uid962_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 14);

    -- rightShiftStage1Idx7_uid964_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,963)@16
    rightShiftStage1Idx7_uid964_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx7Pad14_uid963_alignedResultFraction_uid100_block_rsrvd_fix_q & rightShiftStage1Idx7Rng14_uid962_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx6Pad12_uid960_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,959)
    rightShiftStage1Idx6Pad12_uid960_alignedResultFraction_uid100_block_rsrvd_fix_q <= "000000000000";

    -- rightShiftStage1Idx6Rng12_uid959_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,958)@16
    rightShiftStage1Idx6Rng12_uid959_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 12);

    -- rightShiftStage1Idx6_uid961_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,960)@16
    rightShiftStage1Idx6_uid961_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx6Pad12_uid960_alignedResultFraction_uid100_block_rsrvd_fix_q & rightShiftStage1Idx6Rng12_uid959_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx5Pad10_uid957_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,956)
    rightShiftStage1Idx5Pad10_uid957_alignedResultFraction_uid100_block_rsrvd_fix_q <= "0000000000";

    -- rightShiftStage1Idx5Rng10_uid956_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,955)@16
    rightShiftStage1Idx5Rng10_uid956_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 10);

    -- rightShiftStage1Idx5_uid958_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,957)@16
    rightShiftStage1Idx5_uid958_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx5Pad10_uid957_alignedResultFraction_uid100_block_rsrvd_fix_q & rightShiftStage1Idx5Rng10_uid956_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx4Rng8_uid953_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,952)@16
    rightShiftStage1Idx4Rng8_uid953_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 8);

    -- rightShiftStage1Idx4_uid955_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,954)@16
    rightShiftStage1Idx4_uid955_alignedResultFraction_uid100_block_rsrvd_fix_q <= zs_uid219_lzFracY_uid63_block_rsrvd_fix_q & rightShiftStage1Idx4Rng8_uid953_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx3Rng6_uid950_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,949)@16
    rightShiftStage1Idx3Rng6_uid950_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 6);

    -- rightShiftStage1Idx3_uid952_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,951)@16
    rightShiftStage1Idx3_uid952_alignedResultFraction_uid100_block_rsrvd_fix_q <= leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix_q & rightShiftStage1Idx3Rng6_uid950_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx2Rng4_uid947_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,946)@16
    rightShiftStage1Idx2Rng4_uid947_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 4);

    -- rightShiftStage1Idx2_uid949_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,948)@16
    rightShiftStage1Idx2_uid949_alignedResultFraction_uid100_block_rsrvd_fix_q <= zs_uid225_lzFracY_uid63_block_rsrvd_fix_q & rightShiftStage1Idx2Rng4_uid947_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage1Idx1Rng2_uid944_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,943)@16
    rightShiftStage1Idx1Rng2_uid944_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q(109 downto 2);

    -- rightShiftStage1Idx1_uid946_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,945)@16
    rightShiftStage1Idx1_uid946_alignedResultFraction_uid100_block_rsrvd_fix_q <= zs_uid231_lzFracY_uid63_block_rsrvd_fix_q & rightShiftStage1Idx1Rng2_uid944_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage0Idx6Pad96_uid939_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,938)
    rightShiftStage0Idx6Pad96_uid939_alignedResultFraction_uid100_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx6Rng96_uid938_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,937)@16
    rightShiftStage0Idx6Rng96_uid938_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightPaddedIn_uid101_block_rsrvd_fix_q(109 downto 96);

    -- rightShiftStage0Idx6_uid940_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,939)@16
    rightShiftStage0Idx6_uid940_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx6Pad96_uid939_alignedResultFraction_uid100_block_rsrvd_fix_q & rightShiftStage0Idx6Rng96_uid938_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage0Idx5Pad80_uid936_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,935)
    rightShiftStage0Idx5Pad80_uid936_alignedResultFraction_uid100_block_rsrvd_fix_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx5Rng80_uid935_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,934)@16
    rightShiftStage0Idx5Rng80_uid935_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightPaddedIn_uid101_block_rsrvd_fix_q(109 downto 80);

    -- rightShiftStage0Idx5_uid937_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,936)@16
    rightShiftStage0Idx5_uid937_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx5Pad80_uid936_alignedResultFraction_uid100_block_rsrvd_fix_q & rightShiftStage0Idx5Rng80_uid935_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage0Idx4Pad64_uid933_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,932)
    rightShiftStage0Idx4Pad64_uid933_alignedResultFraction_uid100_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx4Rng64_uid932_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,931)@16
    rightShiftStage0Idx4Rng64_uid932_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightPaddedIn_uid101_block_rsrvd_fix_q(109 downto 64);

    -- rightShiftStage0Idx4_uid934_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,933)@16
    rightShiftStage0Idx4_uid934_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx4Pad64_uid933_alignedResultFraction_uid100_block_rsrvd_fix_q & rightShiftStage0Idx4Rng64_uid932_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage0Idx3Rng48_uid929_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,928)@16
    rightShiftStage0Idx3Rng48_uid929_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightPaddedIn_uid101_block_rsrvd_fix_q(109 downto 48);

    -- rightShiftStage0Idx3_uid931_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,930)@16
    rightShiftStage0Idx3_uid931_alignedResultFraction_uid100_block_rsrvd_fix_q <= leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix_q & rightShiftStage0Idx3Rng48_uid929_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage0Idx2Rng32_uid926_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,925)@16
    rightShiftStage0Idx2Rng32_uid926_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightPaddedIn_uid101_block_rsrvd_fix_q(109 downto 32);

    -- rightShiftStage0Idx2_uid928_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,927)@16
    rightShiftStage0Idx2_uid928_alignedResultFraction_uid100_block_rsrvd_fix_q <= zs_uid205_lzFracY_uid63_block_rsrvd_fix_q & rightShiftStage0Idx2Rng32_uid926_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- rightShiftStage0Idx1Rng16_uid923_alignedResultFraction_uid100_block_rsrvd_fix(BITSELECT,922)@16
    rightShiftStage0Idx1Rng16_uid923_alignedResultFraction_uid100_block_rsrvd_fix_b <= rightPaddedIn_uid101_block_rsrvd_fix_q(109 downto 16);

    -- rightShiftStage0Idx1_uid925_alignedResultFraction_uid100_block_rsrvd_fix(BITJOIN,924)@16
    rightShiftStage0Idx1_uid925_alignedResultFraction_uid100_block_rsrvd_fix_q <= zs_uid213_lzFracY_uid63_block_rsrvd_fix_q & rightShiftStage0Idx1Rng16_uid923_alignedResultFraction_uid100_block_rsrvd_fix_b;

    -- divValPreNormForShift_uid92_block_rsrvd_fix(BITSELECT,91)@16
    divValPreNormForShift_uid92_block_rsrvd_fix_b <= divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q(57 downto 2);

    -- padConst_uid100_block_rsrvd_fix(CONSTANT,99)
    padConst_uid100_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000000000";

    -- rightPaddedIn_uid101_block_rsrvd_fix(BITJOIN,100)@16
    rightPaddedIn_uid101_block_rsrvd_fix_q <= divValPreNormForShift_uid92_block_rsrvd_fix_b & padConst_uid100_block_rsrvd_fix_q;

    -- rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix(MUX,942)@16
    rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_s <= rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_s, rightPaddedIn_uid101_block_rsrvd_fix_q, rightShiftStage0Idx1_uid925_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx2_uid928_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx3_uid931_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx4_uid934_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx5_uid937_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx6_uid940_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_s) IS
            WHEN "000" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightPaddedIn_uid101_block_rsrvd_fix_q;
            WHEN "001" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid925_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "010" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid928_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "011" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid931_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "100" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx4_uid934_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "101" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx5_uid937_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "110" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx6_uid940_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "111" => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix(MUX,965)@16
    rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_s <= rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_s, rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx1_uid946_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx2_uid949_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx3_uid952_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx4_uid955_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx5_uid958_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx6_uid961_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage1Idx7_uid964_alignedResultFraction_uid100_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_s) IS
            WHEN "000" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0_uid943_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "001" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid946_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "010" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid949_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "011" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid952_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "100" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx4_uid955_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "101" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx5_uid958_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "110" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx6_uid961_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "111" => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1Idx7_uid964_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- mExpRPostNormHandling_uid94_block_rsrvd_fix(SUB,93)@16
    mExpRPostNormHandling_uid94_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000000" & norm_uid85_block_rsrvd_fix_b));
    mExpRPostNormHandling_uid94_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => expRPostNormHandling_uid88_block_rsrvd_fix_q(15)) & expRPostNormHandling_uid88_block_rsrvd_fix_q));
    mExpRPostNormHandling_uid94_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(mExpRPostNormHandling_uid94_block_rsrvd_fix_a) - SIGNED(mExpRPostNormHandling_uid94_block_rsrvd_fix_b));
    mExpRPostNormHandling_uid94_block_rsrvd_fix_q <= mExpRPostNormHandling_uid94_block_rsrvd_fix_o(16 downto 0);

    -- invNorm_uid95_block_rsrvd_fix(LOGICAL,94)@16
    invNorm_uid95_block_rsrvd_fix_q <= not (norm_uid85_block_rsrvd_fix_b);

    -- zInvNorm_uid96_block_rsrvd_fix(BITJOIN,95)@16
    zInvNorm_uid96_block_rsrvd_fix_q <= GND_q & invNorm_uid95_block_rsrvd_fix_q;

    -- muxNotSubnormalRightShiftValue_to17_uid97(BITSELECT,96)@16
    muxNotSubnormalRightShiftValue_to17_uid97_in <= STD_LOGIC_VECTOR("000000000000000" & zInvNorm_uid96_block_rsrvd_fix_q);
    muxNotSubnormalRightShiftValue_to17_uid97_b <= muxNotSubnormalRightShiftValue_to17_uid97_in(16 downto 0);

    -- subnormalRes_uid93_block_rsrvd_fix(COMPARE,92)@16
    subnormalRes_uid93_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000000" & GND_q));
    subnormalRes_uid93_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => expRPostNormHandling_uid88_block_rsrvd_fix_q(15)) & expRPostNormHandling_uid88_block_rsrvd_fix_q));
    subnormalRes_uid93_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(subnormalRes_uid93_block_rsrvd_fix_a) - SIGNED(subnormalRes_uid93_block_rsrvd_fix_b));
    subnormalRes_uid93_block_rsrvd_fix_n(0) <= not (subnormalRes_uid93_block_rsrvd_fix_o(17));

    -- rightShiftFractionValue_uid99_block_rsrvd_fix(MUX,98)@16
    rightShiftFractionValue_uid99_block_rsrvd_fix_s <= subnormalRes_uid93_block_rsrvd_fix_n;
    rightShiftFractionValue_uid99_block_rsrvd_fix_combproc: PROCESS (rightShiftFractionValue_uid99_block_rsrvd_fix_s, muxNotSubnormalRightShiftValue_to17_uid97_b, mExpRPostNormHandling_uid94_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftFractionValue_uid99_block_rsrvd_fix_s) IS
            WHEN "0" => rightShiftFractionValue_uid99_block_rsrvd_fix_q <= muxNotSubnormalRightShiftValue_to17_uid97_b;
            WHEN "1" => rightShiftFractionValue_uid99_block_rsrvd_fix_q <= mExpRPostNormHandling_uid94_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftFractionValue_uid99_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select(BITSELECT,1109)@16
    rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_in <= rightShiftFractionValue_uid99_block_rsrvd_fix_q(6 downto 0);
    rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_b <= rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_in(6 downto 4);
    rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_c <= rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_in(3 downto 1);
    rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_d <= rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_in(0 downto 0);

    -- rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix(MUX,970)@16 + 1
    rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_s <= rightShiftStageSel6Dto4_uid942_alignedResultFraction_uid100_block_rsrvd_fix_merged_bit_select_d;
    rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_s) IS
                WHEN "0" => rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage1_uid966_alignedResultFraction_uid100_block_rsrvd_fix_q;
                WHEN "1" => rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid969_alignedResultFraction_uid100_block_rsrvd_fix_q;
                WHEN OTHERS => rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- wIntCst_uid921_alignedResultFraction_uid100_block_rsrvd_fix(CONSTANT,920)
    wIntCst_uid921_alignedResultFraction_uid100_block_rsrvd_fix_q <= "1101110";

    -- shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix(COMPARE,921)@16 + 1
    shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & rightShiftFractionValue_uid99_block_rsrvd_fix_q);
    shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000000000000" & wIntCst_uid921_alignedResultFraction_uid100_block_rsrvd_fix_q);
    shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_a) - UNSIGNED(shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_n(0) <= not (shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_o(18));

    -- r_uid973_alignedResultFraction_uid100_block_rsrvd_fix(MUX,972)@17
    r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_s <= shiftedOut_uid922_alignedResultFraction_uid100_block_rsrvd_fix_n;
    r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_combproc: PROCESS (r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_s, rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q, rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix_q)
    BEGIN
        CASE (r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_s) IS
            WHEN "0" => r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage2_uid971_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN "1" => r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_q <= rightShiftStage0Idx7_uid941_alignedResultFraction_uid100_block_rsrvd_fix_q;
            WHEN OTHERS => r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- alignedResultFracForRnd_uid103_block_rsrvd_fix(BITSELECT,102)@17
    alignedResultFracForRnd_uid103_block_rsrvd_fix_in <= r_uid973_alignedResultFraction_uid100_block_rsrvd_fix_q(108 downto 0);
    alignedResultFracForRnd_uid103_block_rsrvd_fix_b <= alignedResultFracForRnd_uid103_block_rsrvd_fix_in(108 downto 55);

    -- divValPreNormHigh_uid89_block_rsrvd_fix(BITSELECT,88)@16
    divValPreNormHigh_uid89_block_rsrvd_fix_in <= divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q(56 downto 0);
    divValPreNormHigh_uid89_block_rsrvd_fix_b <= divValPreNormHigh_uid89_block_rsrvd_fix_in(56 downto 3);

    -- divValPreNormLow_uid90_block_rsrvd_fix(BITSELECT,89)@16
    divValPreNormLow_uid90_block_rsrvd_fix_in <= divValPreNormYPow2Exc_uid84_block_rsrvd_fix_q(55 downto 0);
    divValPreNormLow_uid90_block_rsrvd_fix_b <= divValPreNormLow_uid90_block_rsrvd_fix_in(55 downto 2);

    -- normFracRnd_uid91_block_rsrvd_fix(MUX,90)@16 + 1
    normFracRnd_uid91_block_rsrvd_fix_s <= norm_uid85_block_rsrvd_fix_b;
    normFracRnd_uid91_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            normFracRnd_uid91_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (normFracRnd_uid91_block_rsrvd_fix_s) IS
                WHEN "0" => normFracRnd_uid91_block_rsrvd_fix_q <= divValPreNormLow_uid90_block_rsrvd_fix_b;
                WHEN "1" => normFracRnd_uid91_block_rsrvd_fix_q <= divValPreNormHigh_uid89_block_rsrvd_fix_b;
                WHEN OTHERS => normFracRnd_uid91_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist42_subnormalRes_uid93_block_rsrvd_fix_n_1(DELAY,1170)
    redist42_subnormalRes_uid93_block_rsrvd_fix_n_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => subnormalRes_uid93_block_rsrvd_fix_n, xout => redist42_subnormalRes_uid93_block_rsrvd_fix_n_1_q, clk => clock, aclr => resetn );

    -- fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix(MUX,103)@17
    fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_s <= redist42_subnormalRes_uid93_block_rsrvd_fix_n_1_q;
    fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_combproc: PROCESS (fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_s, normFracRnd_uid91_block_rsrvd_fix_q, alignedResultFracForRnd_uid103_block_rsrvd_fix_b)
    BEGIN
        CASE (fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_s) IS
            WHEN "0" => fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_q <= normFracRnd_uid91_block_rsrvd_fix_q;
            WHEN "1" => fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_q <= alignedResultFracForRnd_uid103_block_rsrvd_fix_b;
            WHEN OTHERS => fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expFracRnd_uid110_block_rsrvd_fix(BITJOIN,109)@17
    expFracRnd_uid110_block_rsrvd_fix_q <= redist41_fwdExponentResult_uid109_block_rsrvd_fix_b_1_q & fwdAlignedResultFracForRnd_uid104_block_rsrvd_fix_q;

    -- expFracPostRnd_uid113_block_rsrvd_fix(ADD,112)@17
    expFracPostRnd_uid113_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((68 downto 67 => expFracRnd_uid110_block_rsrvd_fix_q(66)) & expFracRnd_uid110_block_rsrvd_fix_q));
    expFracPostRnd_uid113_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000000000000000000000000000000000000000000000000000000000" & VCC_q));
    expFracPostRnd_uid113_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracPostRnd_uid113_block_rsrvd_fix_a) + SIGNED(expFracPostRnd_uid113_block_rsrvd_fix_b));
    expFracPostRnd_uid113_block_rsrvd_fix_q <= expFracPostRnd_uid113_block_rsrvd_fix_o(67 downto 0);

    -- fracPostRndF_uid114_block_rsrvd_fix(BITSELECT,113)@17
    fracPostRndF_uid114_block_rsrvd_fix_in <= expFracPostRnd_uid113_block_rsrvd_fix_q(53 downto 0);
    fracPostRndF_uid114_block_rsrvd_fix_b <= fracPostRndF_uid114_block_rsrvd_fix_in(53 downto 1);

    -- redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4(DELAY,1168)
    redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 53, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracPostRndF_uid114_block_rsrvd_fix_b, xout => redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4_q, clk => clock, aclr => resetn );

    -- fracPostRndFT_uid159_block_rsrvd_fix(BITSELECT,158)@21
    fracPostRndFT_uid159_block_rsrvd_fix_b <= redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4_q(52 downto 1);

    -- redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1(DELAY,1160)
    redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 52, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => fracPostRndFT_uid159_block_rsrvd_fix_b, xout => redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- fracRPreExcExt_uid160_block_rsrvd_fix(ADD,159)@22
    fracRPreExcExt_uid160_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1_q);
    fracRPreExcExt_uid160_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000000000000000000000" & extraUlp_uid158_block_rsrvd_fix_q);
    fracRPreExcExt_uid160_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracRPreExcExt_uid160_block_rsrvd_fix_a) + UNSIGNED(fracRPreExcExt_uid160_block_rsrvd_fix_b));
    fracRPreExcExt_uid160_block_rsrvd_fix_q <= fracRPreExcExt_uid160_block_rsrvd_fix_o(52 downto 0);

    -- ovfIncRnd_uid164_block_rsrvd_fix(BITSELECT,163)@22
    ovfIncRnd_uid164_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fracRPreExcExt_uid160_block_rsrvd_fix_q(52 downto 52));

    -- expFracPostRndInc_uid165_block_rsrvd_fix(ADD,164)@22
    expFracPostRndInc_uid165_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist39_expPostRndF_uid115_block_rsrvd_fix_b_5_q);
    expFracPostRndInc_uid165_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000" & ovfIncRnd_uid164_block_rsrvd_fix_b);
    expFracPostRndInc_uid165_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracPostRndInc_uid165_block_rsrvd_fix_a) + UNSIGNED(expFracPostRndInc_uid165_block_rsrvd_fix_b));
    expFracPostRndInc_uid165_block_rsrvd_fix_q <= expFracPostRndInc_uid165_block_rsrvd_fix_o(11 downto 0);

    -- expFracPostRndR_uid166_block_rsrvd_fix(BITSELECT,165)@22
    expFracPostRndR_uid166_block_rsrvd_fix_in <= expFracPostRndInc_uid165_block_rsrvd_fix_q(10 downto 0);
    expFracPostRndR_uid166_block_rsrvd_fix_b <= expFracPostRndR_uid166_block_rsrvd_fix_in(10 downto 0);

    -- expPostRndF_uid115_block_rsrvd_fix(BITSELECT,114)@17
    expPostRndF_uid115_block_rsrvd_fix_in <= expFracPostRnd_uid113_block_rsrvd_fix_q(64 downto 0);
    expPostRndF_uid115_block_rsrvd_fix_b <= expPostRndF_uid115_block_rsrvd_fix_in(64 downto 54);

    -- redist38_expPostRndF_uid115_block_rsrvd_fix_b_1(DELAY,1166)
    redist38_expPostRndF_uid115_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expPostRndF_uid115_block_rsrvd_fix_b, xout => redist38_expPostRndF_uid115_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- redist39_expPostRndF_uid115_block_rsrvd_fix_b_5(DELAY,1167)
    redist39_expPostRndF_uid115_block_rsrvd_fix_b_5 : dspba_delay
    GENERIC MAP ( width => 11, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist38_expPostRndF_uid115_block_rsrvd_fix_b_1_q, xout => redist39_expPostRndF_uid115_block_rsrvd_fix_b_5_q, clk => clock, aclr => resetn );

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_notEnable(LOGICAL,1205)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_nor(LOGICAL,1206)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_nor_q <= not (redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_notEnable_q or redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena_q);

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_last(CONSTANT,1202)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_last_q <= "01100";

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp(LOGICAL,1203)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp_b <= STD_LOGIC_VECTOR("0" & redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_q);
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp_q <= "1" WHEN redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_last_q = redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp_b ELSE "0";

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmpReg(REG,1204)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmpReg_q <= STD_LOGIC_VECTOR(redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmp_q);
        END IF;
    END PROCESS;

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena(REG,1207)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_nor_q = "1") THEN
                redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_enaAnd(LOGICAL,1208)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_enaAnd_q <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_sticky_ena_q and VCC_q;

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt(COUNTER,1200)
    -- low=0, high=13, step=1, init=0
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_eq <= '1';
            ELSE
                redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_eq <= '0';
            END IF;
            IF (redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_eq = '1') THEN
                redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i + 3;
            ELSE
                redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_i, 4)));

    -- qDivProd_uid127_block_rsrvd_fix_bs8(BITSELECT,1029)@3
    qDivProd_uid127_block_rsrvd_fix_bs8_b <= redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2_q(52 downto 36);

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_wraddr(REG,1201)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_wraddr_q <= "1101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_wraddr_q <= STD_LOGIC_VECTOR(redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem(DUALMEM,1199)
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_ia <= STD_LOGIC_VECTOR(qDivProd_uid127_block_rsrvd_fix_bs8_b);
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_aa <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_wraddr_q;
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_ab <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_rdcnt_q;
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_reset0 <= not (resetn);
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 17,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 17,
        widthad_b => 4,
        numwords_b => 14,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken1 => redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_reset0,
        clock1 => clock,
        address_a => redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_aa,
        data_a => redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_ab,
        q_b => redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_iq
    );
    redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_q <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_iq(16 downto 0);

    -- leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,1016)@18
    leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(46 downto 0);
    leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(46 downto 0);

    -- leftShiftStage1Idx7_uid1018_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,1017)@18
    leftShiftStage1Idx7_uid1018_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx7Rng7_uid1017_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid455_divValPreNorm_uid76_block_rsrvd_fix_q;

    -- leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,1013)@18
    leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(47 downto 0);
    leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(47 downto 0);

    -- leftShiftStage1Idx6_uid1015_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,1014)@18
    leftShiftStage1Idx6_uid1015_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx6Rng6_uid1014_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & leftShiftStage1Idx6Pad6_uid863_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,1010)@18
    leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(48 downto 0);
    leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(48 downto 0);

    -- leftShiftStage1Idx5_uid1012_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,1011)@18
    leftShiftStage1Idx5_uid1012_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx5Rng5_uid1011_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & z4_uid81_block_rsrvd_fix_q;

    -- leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,1007)@18
    leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(49 downto 0);
    leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(49 downto 0);

    -- leftShiftStage1Idx4_uid1009_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,1008)@18
    leftShiftStage1Idx4_uid1009_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx4Rng4_uid1008_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & zs_uid225_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,1004)@18
    leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(50 downto 0);
    leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(50 downto 0);

    -- leftShiftStage1Idx3_uid1006_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,1005)@18
    leftShiftStage1Idx3_uid1006_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid1005_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & rightBottomX_bottomExtension_uid636_pT3_uid322_invPolyEval_q;

    -- leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,1001)@18
    leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(51 downto 0);
    leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(51 downto 0);

    -- leftShiftStage1Idx2_uid1003_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,1002)@18
    leftShiftStage1Idx2_uid1003_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid1002_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & zs_uid231_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,998)@18
    leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(52 downto 0);
    leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(52 downto 0);

    -- leftShiftStage1Idx1_uid1000_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,999)@18
    leftShiftStage1Idx1_uid1000_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid999_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,992)@18
    leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q(5 downto 0);
    leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(5 downto 0);

    -- leftShiftStage0Idx6_uid994_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,993)@18
    leftShiftStage0Idx6_uid994_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx6Rng48_uid993_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & leftShiftStage0Idx6Pad48_uid842_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,989)@18
    leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q(13 downto 0);
    leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(13 downto 0);

    -- leftShiftStage0Idx5_uid991_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,990)@18
    leftShiftStage0Idx5_uid991_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx5Rng40_uid990_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & leftShiftStage0Idx5Pad40_uid839_normY_uid64_block_rsrvd_fix_q;

    -- invSubnormalRes_uid116_block_rsrvd_fix(LOGICAL,115)@17
    invSubnormalRes_uid116_block_rsrvd_fix_q <= not (redist42_subnormalRes_uid93_block_rsrvd_fix_n_1_q);

    -- ofracPostRndF_uid117_block_rsrvd_fix(BITJOIN,116)@17
    ofracPostRndF_uid117_block_rsrvd_fix_q <= invSubnormalRes_uid116_block_rsrvd_fix_q & fracPostRndF_uid114_block_rsrvd_fix_b;

    -- vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix(BITSELECT,482)@17
    vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_in <= ofracPostRndF_uid117_block_rsrvd_fix_q(21 downto 0);
    vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b <= vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_in(21 downto 0);

    -- redist12_vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b_1(DELAY,1140)
    redist12_vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b, xout => redist12_vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx4_uid988_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,987)@18
    leftShiftStage0Idx4_uid988_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= redist12_vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b_1_q & zs_uid205_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,983)@18
    leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q(29 downto 0);
    leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(29 downto 0);

    -- leftShiftStage0Idx3_uid985_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,984)@18
    leftShiftStage0Idx3_uid985_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng24_uid984_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & leftShiftStage0Idx3Pad24_uid833_normY_uid64_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,980)@18
    leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q(37 downto 0);
    leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(37 downto 0);

    -- leftShiftStage0Idx2_uid982_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,981)@18
    leftShiftStage0Idx2_uid982_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng16_uid981_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & zs_uid213_lzFracY_uid63_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITSELECT,977)@18
    leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix_in <= redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q(45 downto 0);
    leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix_in(45 downto 0);

    -- leftShiftStage0Idx1_uid979_ofracPostRndFNorm_uid119_block_rsrvd_fix(BITJOIN,978)@18
    leftShiftStage0Idx1_uid979_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng8_uid978_ofracPostRndFNorm_uid119_block_rsrvd_fix_b & zs_uid219_lzFracY_uid63_block_rsrvd_fix_q;

    -- redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1(DELAY,1165)
    redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 54, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => ofracPostRndF_uid117_block_rsrvd_fix_q, xout => redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix(MUX,996)@18
    leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_s <= leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_s, redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q, leftShiftStage0Idx1_uid979_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage0Idx2_uid982_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage0Idx3_uid985_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage0Idx4_uid988_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage0Idx5_uid991_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage0Idx6_uid994_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, padConst_uid100_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_s) IS
            WHEN "000" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= redist37_ofracPostRndF_uid117_block_rsrvd_fix_q_1_q;
            WHEN "001" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid979_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "010" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid982_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "011" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid985_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "100" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx4_uid988_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "101" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx5_uid991_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "110" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0Idx6_uid994_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "111" => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= padConst_uid100_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid480_lzFracWfP1_uid118_block_rsrvd_fix(BITSELECT,479)@17
    rVStage_uid480_lzFracWfP1_uid118_block_rsrvd_fix_b <= ofracPostRndF_uid117_block_rsrvd_fix_q(53 downto 22);

    -- vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix(LOGICAL,480)@17
    vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1" WHEN rVStage_uid480_lzFracWfP1_uid118_block_rsrvd_fix_b = zs_uid205_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist13_vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q_1(DELAY,1141)
    redist13_vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q, xout => redist13_vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- mO_uid482_lzFracWfP1_uid118_block_rsrvd_fix(CONSTANT,481)
    mO_uid482_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1111111111";

    -- cStage_uid484_lzFracWfP1_uid118_block_rsrvd_fix(BITJOIN,483)@17
    cStage_uid484_lzFracWfP1_uid118_block_rsrvd_fix_q <= vStage_uid483_lzFracWfP1_uid118_block_rsrvd_fix_b & mO_uid482_lzFracWfP1_uid118_block_rsrvd_fix_q;

    -- vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix(MUX,485)@17
    vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_s <= vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q;
    vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_combproc: PROCESS (vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_s, rVStage_uid480_lzFracWfP1_uid118_block_rsrvd_fix_b, cStage_uid484_lzFracWfP1_uid118_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid480_lzFracWfP1_uid118_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_q <= cStage_uid484_lzFracWfP1_uid118_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select(BITSELECT,1121)@17
    rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid486_lzFracWfP1_uid118_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix(LOGICAL,488)@17
    vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1" WHEN rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b = zs_uid213_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- redist11_vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q_1(DELAY,1139)
    redist11_vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q, xout => redist11_vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q_1_q, clk => clock, aclr => resetn );

    -- vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix(MUX,491)@17 + 1
    vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_s <= vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q;
    vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid488_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select(BITSELECT,1122)@18
    rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid492_lzFracWfP1_uid118_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid495_lzFracWfP1_uid118_block_rsrvd_fix(LOGICAL,494)@18
    vCount_uid495_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1" WHEN rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b = zs_uid219_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix(MUX,497)@18
    vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_s <= vCount_uid495_lzFracWfP1_uid118_block_rsrvd_fix_q;
    vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_combproc: PROCESS (vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_s, rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b, rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid494_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select(BITSELECT,1123)@18
    rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid498_lzFracWfP1_uid118_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid501_lzFracWfP1_uid118_block_rsrvd_fix(LOGICAL,500)@18
    vCount_uid501_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1" WHEN rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b = zs_uid225_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix(MUX,503)@18
    vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_s <= vCount_uid501_lzFracWfP1_uid118_block_rsrvd_fix_q;
    vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_combproc: PROCESS (vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_s, rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b, rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid500_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select(BITSELECT,1124)@18
    rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid504_lzFracWfP1_uid118_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid507_lzFracWfP1_uid118_block_rsrvd_fix(LOGICAL,506)@18
    vCount_uid507_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1" WHEN rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b = zs_uid231_lzFracY_uid63_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix(MUX,509)@18
    vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_s <= vCount_uid507_lzFracWfP1_uid118_block_rsrvd_fix_q;
    vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_combproc: PROCESS (vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_s, rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b, rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_q <= rVStage_uid506_lzFracWfP1_uid118_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid512_lzFracWfP1_uid118_block_rsrvd_fix(BITSELECT,511)@18
    rVStage_uid512_lzFracWfP1_uid118_block_rsrvd_fix_b <= vStagei_uid510_lzFracWfP1_uid118_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid513_lzFracWfP1_uid118_block_rsrvd_fix(LOGICAL,512)@18
    vCount_uid513_lzFracWfP1_uid118_block_rsrvd_fix_q <= "1" WHEN rVStage_uid512_lzFracWfP1_uid118_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid514_lzFracWfP1_uid118_block_rsrvd_fix(BITJOIN,513)@18
    r_uid514_lzFracWfP1_uid118_block_rsrvd_fix_q <= redist13_vCount_uid481_lzFracWfP1_uid118_block_rsrvd_fix_q_1_q & redist11_vCount_uid489_lzFracWfP1_uid118_block_rsrvd_fix_q_1_q & vCount_uid495_lzFracWfP1_uid118_block_rsrvd_fix_q & vCount_uid501_lzFracWfP1_uid118_block_rsrvd_fix_q & vCount_uid507_lzFracWfP1_uid118_block_rsrvd_fix_q & vCount_uid513_lzFracWfP1_uid118_block_rsrvd_fix_q;

    -- leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select(BITSELECT,1125)@18
    leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select_b <= r_uid514_lzFracWfP1_uid118_block_rsrvd_fix_q(5 downto 3);
    leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select_c <= r_uid514_lzFracWfP1_uid118_block_rsrvd_fix_q(2 downto 0);

    -- leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix(MUX,1019)@18
    leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_s <= leftShiftStageSel5Dto3_uid996_ofracPostRndFNorm_uid119_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_s, leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx1_uid1000_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx2_uid1003_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx3_uid1006_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx4_uid1009_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx5_uid1012_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx6_uid1015_ofracPostRndFNorm_uid119_block_rsrvd_fix_q, leftShiftStage1Idx7_uid1018_ofracPostRndFNorm_uid119_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_s) IS
            WHEN "000" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage0_uid997_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "001" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid1000_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "010" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid1003_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "011" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid1006_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "100" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx4_uid1009_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "101" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx5_uid1012_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "110" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx6_uid1015_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN "111" => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= leftShiftStage1Idx7_uid1018_ofracPostRndFNorm_uid119_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,1127)@18
    qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_b <= leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(17 downto 0);
    qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_c <= leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(53 downto 36);
    qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_d <= leftShiftStage1_uid1020_ofracPostRndFNorm_uid119_block_rsrvd_fix_q(35 downto 18);

    -- qDivProd_uid127_block_rsrvd_fix_im24(MULT,1045)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im24_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_b;
    qDivProd_uid127_block_rsrvd_fix_im24_b0 <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im24_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im24_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im24_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im24_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im24_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im24_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im24_q <= qDivProd_uid127_block_rsrvd_fix_im24_s1;

    -- redist0_qDivProd_uid127_block_rsrvd_fix_im24_q_1(DELAY,1128)
    redist0_qDivProd_uid127_block_rsrvd_fix_im24_q_1 : dspba_delay
    GENERIC MAP ( width => 35, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => qDivProd_uid127_block_rsrvd_fix_im24_q, xout => redist0_qDivProd_uid127_block_rsrvd_fix_im24_q_1_q, clk => clock, aclr => resetn );

    -- qDivProd_uid127_block_rsrvd_fix_align_34(BITSHIFT,1055)@21
    qDivProd_uid127_block_rsrvd_fix_align_34_qint <= redist0_qDivProd_uid127_block_rsrvd_fix_im24_q_1_q & "000000000000000000000000000000000000";
    qDivProd_uid127_block_rsrvd_fix_align_34_q <= qDivProd_uid127_block_rsrvd_fix_align_34_qint(70 downto 0);

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_notEnable(LOGICAL,1225)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_nor(LOGICAL,1226)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_nor_q <= not (redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_notEnable_q or redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena_q);

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_last(CONSTANT,1222)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_last_q <= "01100";

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp(LOGICAL,1223)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp_b <= STD_LOGIC_VECTOR("0" & redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_q);
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp_q <= "1" WHEN redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_last_q = redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp_b ELSE "0";

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmpReg(REG,1224)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmpReg_q <= STD_LOGIC_VECTOR(redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena(REG,1227)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_nor_q = "1") THEN
                redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_enaAnd(LOGICAL,1228)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_enaAnd_q <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_sticky_ena_q and VCC_q;

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt(COUNTER,1220)
    -- low=0, high=13, step=1, init=0
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_eq <= '1';
            ELSE
                redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_eq <= '0';
            END IF;
            IF (redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_eq = '1') THEN
                redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i + 3;
            ELSE
                redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_i, 4)));

    -- qDivProd_uid127_block_rsrvd_fix_bs2(BITSELECT,1023)@3
    qDivProd_uid127_block_rsrvd_fix_bs2_in <= redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2_q(17 downto 0);
    qDivProd_uid127_block_rsrvd_fix_bs2_b <= qDivProd_uid127_block_rsrvd_fix_bs2_in(17 downto 0);

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_wraddr(REG,1221)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_wraddr_q <= "1101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_wraddr_q <= STD_LOGIC_VECTOR(redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem(DUALMEM,1219)
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_ia <= STD_LOGIC_VECTOR(qDivProd_uid127_block_rsrvd_fix_bs2_b);
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_aa <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_wraddr_q;
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_ab <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_rdcnt_q;
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_reset0 <= not (resetn);
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 18,
        widthad_b => 4,
        numwords_b => 14,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken1 => redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_reset0,
        clock1 => clock,
        address_a => redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_aa,
        data_a => redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_ab,
        q_b => redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_iq
    );
    redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_q <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_iq(17 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_im21(MULT,1042)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im21_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_c;
    qDivProd_uid127_block_rsrvd_fix_im21_b0 <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im21_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im21_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im21_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im21_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im21_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im21_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im21_q <= qDivProd_uid127_block_rsrvd_fix_im21_s1;

    -- qDivProd_uid127_block_rsrvd_fix_align_32(BITSHIFT,1053)@20
    qDivProd_uid127_block_rsrvd_fix_align_32_qint <= qDivProd_uid127_block_rsrvd_fix_im21_q & "000000000000000000000000000000000000";
    qDivProd_uid127_block_rsrvd_fix_align_32_q <= qDivProd_uid127_block_rsrvd_fix_align_32_qint(71 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_im6(MULT,1027)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im6_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_d;
    qDivProd_uid127_block_rsrvd_fix_im6_b0 <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im6_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im6_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im6_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im6_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im6_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im6_q <= qDivProd_uid127_block_rsrvd_fix_im6_s1;

    -- qDivProd_uid127_block_rsrvd_fix_im12(MULT,1033)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im12_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_d;
    qDivProd_uid127_block_rsrvd_fix_im12_b0 <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im12_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im12_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im12_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im12_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im12_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im12_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im12_q <= qDivProd_uid127_block_rsrvd_fix_im12_s1;

    -- qDivProd_uid127_block_rsrvd_fix_align_30(BITSHIFT,1051)@20
    qDivProd_uid127_block_rsrvd_fix_align_30_qint <= qDivProd_uid127_block_rsrvd_fix_im12_q & "000000000000000000";
    qDivProd_uid127_block_rsrvd_fix_align_30_q <= qDivProd_uid127_block_rsrvd_fix_align_30_qint(53 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_join_31(BITJOIN,1052)@20
    qDivProd_uid127_block_rsrvd_fix_join_31_q <= qDivProd_uid127_block_rsrvd_fix_im6_q & qDivProd_uid127_block_rsrvd_fix_align_30_q;

    -- qDivProd_uid127_block_rsrvd_fix_result_add_0_1(ADD,1058)@20
    qDivProd_uid127_block_rsrvd_fix_result_add_0_1_a <= STD_LOGIC_VECTOR("0" & qDivProd_uid127_block_rsrvd_fix_join_31_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_0_1_b <= STD_LOGIC_VECTOR("000000000000000000" & qDivProd_uid127_block_rsrvd_fix_align_32_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_0_1_o <= STD_LOGIC_VECTOR(UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_0_1_a) + UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_0_1_b));
    qDivProd_uid127_block_rsrvd_fix_result_add_0_1_q <= qDivProd_uid127_block_rsrvd_fix_result_add_0_1_o(89 downto 0);

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_notEnable(LOGICAL,1215)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_nor(LOGICAL,1216)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_nor_q <= not (redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_notEnable_q or redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena_q);

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_last(CONSTANT,1212)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_last_q <= "01100";

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp(LOGICAL,1213)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp_b <= STD_LOGIC_VECTOR("0" & redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_q);
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp_q <= "1" WHEN redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_last_q = redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp_b ELSE "0";

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmpReg(REG,1214)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmpReg_q <= STD_LOGIC_VECTOR(redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena(REG,1217)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_nor_q = "1") THEN
                redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_enaAnd(LOGICAL,1218)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_enaAnd_q <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_sticky_ena_q and VCC_q;

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt(COUNTER,1210)
    -- low=0, high=13, step=1, init=0
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_eq <= '1';
            ELSE
                redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_eq <= '0';
            END IF;
            IF (redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_eq = '1') THEN
                redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i + 3;
            ELSE
                redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_i, 4)));

    -- qDivProd_uid127_block_rsrvd_fix_bs5(BITSELECT,1026)@3
    qDivProd_uid127_block_rsrvd_fix_bs5_in <= redist5_leftShiftStage1_uid870_normY_uid64_block_rsrvd_fix_q_2_q(35 downto 0);
    qDivProd_uid127_block_rsrvd_fix_bs5_b <= qDivProd_uid127_block_rsrvd_fix_bs5_in(35 downto 18);

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_wraddr(REG,1211)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_wraddr_q <= "1101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_wraddr_q <= STD_LOGIC_VECTOR(redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem(DUALMEM,1209)
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_ia <= STD_LOGIC_VECTOR(qDivProd_uid127_block_rsrvd_fix_bs5_b);
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_aa <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_wraddr_q;
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_ab <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_rdcnt_q;
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_reset0 <= not (resetn);
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 18,
        widthad_b => 4,
        numwords_b => 14,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken1 => redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_reset0,
        clock1 => clock,
        address_a => redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_aa,
        data_a => redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_ab,
        q_b => redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_iq
    );
    redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_q <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_iq(17 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_im3(MULT,1024)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im3_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_c;
    qDivProd_uid127_block_rsrvd_fix_im3_b0 <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im3_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im3_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im3_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im3_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im3_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im3_q <= qDivProd_uid127_block_rsrvd_fix_im3_s1;

    -- qDivProd_uid127_block_rsrvd_fix_im9(MULT,1030)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im9_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_b;
    qDivProd_uid127_block_rsrvd_fix_im9_b0 <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im9_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im9_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im9_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im9_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im9_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im9_q <= qDivProd_uid127_block_rsrvd_fix_im9_s1;

    -- qDivProd_uid127_block_rsrvd_fix_align_28(BITSHIFT,1049)@20
    qDivProd_uid127_block_rsrvd_fix_align_28_qint <= qDivProd_uid127_block_rsrvd_fix_im9_q & "000000000000000000";
    qDivProd_uid127_block_rsrvd_fix_align_28_q <= qDivProd_uid127_block_rsrvd_fix_align_28_qint(53 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_join_29(BITJOIN,1050)@20
    qDivProd_uid127_block_rsrvd_fix_join_29_q <= qDivProd_uid127_block_rsrvd_fix_im3_q & qDivProd_uid127_block_rsrvd_fix_align_28_q;

    -- qDivProd_uid127_block_rsrvd_fix_im15(MULT,1036)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im15_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_c;
    qDivProd_uid127_block_rsrvd_fix_im15_b0 <= redist1_qDivProd_uid127_block_rsrvd_fix_bs8_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im15_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im15_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 17,
        lpm_widthp => 35,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im15_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im15_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im15_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im15_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im15_q <= qDivProd_uid127_block_rsrvd_fix_im15_s1;

    -- qDivProd_uid127_block_rsrvd_fix_im18(MULT,1039)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im18_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_d;
    qDivProd_uid127_block_rsrvd_fix_im18_b0 <= redist2_qDivProd_uid127_block_rsrvd_fix_bs5_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im18_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im18_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im18_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im18_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im18_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im18_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im18_q <= qDivProd_uid127_block_rsrvd_fix_im18_s1;

    -- qDivProd_uid127_block_rsrvd_fix_im0(MULT,1021)@18 + 2
    qDivProd_uid127_block_rsrvd_fix_im0_a0 <= qDivProd_uid127_block_rsrvd_fix_bs1_merged_bit_select_b;
    qDivProd_uid127_block_rsrvd_fix_im0_b0 <= redist3_qDivProd_uid127_block_rsrvd_fix_bs2_b_15_mem_q;
    qDivProd_uid127_block_rsrvd_fix_im0_reset <= not (resetn);
    qDivProd_uid127_block_rsrvd_fix_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 18,
        lpm_widthp => 36,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => qDivProd_uid127_block_rsrvd_fix_im0_a0,
        datab => qDivProd_uid127_block_rsrvd_fix_im0_b0,
        clken => VCC_q(0),
        aclr => qDivProd_uid127_block_rsrvd_fix_im0_reset,
        clock => clock,
        result => qDivProd_uid127_block_rsrvd_fix_im0_s1
    );
    qDivProd_uid127_block_rsrvd_fix_im0_q <= qDivProd_uid127_block_rsrvd_fix_im0_s1;

    -- qDivProd_uid127_block_rsrvd_fix_join_27(BITJOIN,1048)@20
    qDivProd_uid127_block_rsrvd_fix_join_27_q <= qDivProd_uid127_block_rsrvd_fix_im15_q & qDivProd_uid127_block_rsrvd_fix_im18_q & qDivProd_uid127_block_rsrvd_fix_im0_q;

    -- qDivProd_uid127_block_rsrvd_fix_result_add_0_0(ADD,1057)@20
    qDivProd_uid127_block_rsrvd_fix_result_add_0_0_a <= STD_LOGIC_VECTOR("0" & qDivProd_uid127_block_rsrvd_fix_join_27_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_0_0_b <= STD_LOGIC_VECTOR("000000000000000000" & qDivProd_uid127_block_rsrvd_fix_join_29_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_0_0_a) + UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_0_0_b));
    qDivProd_uid127_block_rsrvd_fix_result_add_0_0_q <= qDivProd_uid127_block_rsrvd_fix_result_add_0_0_o(107 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_result_add_1_0(ADD,1059)@20 + 1
    qDivProd_uid127_block_rsrvd_fix_result_add_1_0_a <= STD_LOGIC_VECTOR("0" & qDivProd_uid127_block_rsrvd_fix_result_add_0_0_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_1_0_b <= STD_LOGIC_VECTOR("0000000000000000000" & qDivProd_uid127_block_rsrvd_fix_result_add_0_1_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            qDivProd_uid127_block_rsrvd_fix_result_add_1_0_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            qDivProd_uid127_block_rsrvd_fix_result_add_1_0_o <= STD_LOGIC_VECTOR(UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_1_0_a) + UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_1_0_b));
        END IF;
    END PROCESS;
    qDivProd_uid127_block_rsrvd_fix_result_add_1_0_q <= qDivProd_uid127_block_rsrvd_fix_result_add_1_0_o(108 downto 0);

    -- qDivProd_uid127_block_rsrvd_fix_result_add_2_0(ADD,1060)@21
    qDivProd_uid127_block_rsrvd_fix_result_add_2_0_a <= STD_LOGIC_VECTOR("0" & qDivProd_uid127_block_rsrvd_fix_result_add_1_0_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_2_0_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000000000" & qDivProd_uid127_block_rsrvd_fix_align_34_q);
    qDivProd_uid127_block_rsrvd_fix_result_add_2_0_o <= STD_LOGIC_VECTOR(UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_2_0_a) + UNSIGNED(qDivProd_uid127_block_rsrvd_fix_result_add_2_0_b));
    qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q <= qDivProd_uid127_block_rsrvd_fix_result_add_2_0_o(109 downto 0);

    -- qDivProdS_uid136_block_rsrvd_fix(BITSELECT,135)@21
    qDivProdS_uid136_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q(52 downto 0));
    qDivProdS_uid136_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(qDivProdS_uid136_block_rsrvd_fix_in(52 downto 52));

    -- qDivProdNorm_uid129_block_rsrvd_fix(BITSELECT,128)@21
    qDivProdNorm_uid129_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q(106 downto 0));
    qDivProdNorm_uid129_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(qDivProdNorm_uid129_block_rsrvd_fix_in(106 downto 106));

    -- possibleStickyBit_uid137_block_rsrvd_fix(LOGICAL,136)@21
    possibleStickyBit_uid137_block_rsrvd_fix_q <= qDivProdNorm_uid129_block_rsrvd_fix_b and qDivProdS_uid136_block_rsrvd_fix_b;

    -- lowStickyqDivR_uid134_block_rsrvd_fix(BITSELECT,133)@21
    lowStickyqDivR_uid134_block_rsrvd_fix_in <= qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q(51 downto 0);
    lowStickyqDivR_uid134_block_rsrvd_fix_b <= lowStickyqDivR_uid134_block_rsrvd_fix_in(51 downto 0);

    -- lowStickyqDiv_uid135_block_rsrvd_fix(LOGICAL,134)@21
    lowStickyqDiv_uid135_block_rsrvd_fix_q <= "1" WHEN lowStickyqDivR_uid134_block_rsrvd_fix_b /= "0000000000000000000000000000000000000000000000000000" ELSE "0";

    -- fullSticky_uid138_block_rsrvd_fix(LOGICAL,137)@21
    fullSticky_uid138_block_rsrvd_fix_q <= lowStickyqDiv_uid135_block_rsrvd_fix_q or possibleStickyBit_uid137_block_rsrvd_fix_q;

    -- invFullSticky_uid154_block_rsrvd_fix(LOGICAL,153)@21
    invFullSticky_uid154_block_rsrvd_fix_q <= not (fullSticky_uid138_block_rsrvd_fix_q);

    -- lsbFrac_uid155_block_rsrvd_fix(BITSELECT,154)@21
    lsbFrac_uid155_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4_q(1 downto 0));
    lsbFrac_uid155_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(lsbFrac_uid155_block_rsrvd_fix_in(1 downto 1));

    -- betweenFPwF_uid153_block_rsrvd_fix(BITSELECT,152)@21
    betweenFPwF_uid153_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(redist40_fracPostRndF_uid114_block_rsrvd_fix_b_4_q(0 downto 0));
    betweenFPwF_uid153_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(betweenFPwF_uid153_block_rsrvd_fix_in(0 downto 0));

    -- qDivProd_opB_uid144_block_rsrvd_fix(BITSELECT,143)@16
    qDivProd_opB_uid144_block_rsrvd_fix_in <= redist4_leftShiftStage1_uid917_normOFracX_uid75_block_rsrvd_fix_q_3_q(51 downto 0);
    qDivProd_opB_uid144_block_rsrvd_fix_b <= qDivProd_opB_uid144_block_rsrvd_fix_in(51 downto 0);

    -- redist33_qDivProd_opB_uid144_block_rsrvd_fix_b_5(DELAY,1161)
    redist33_qDivProd_opB_uid144_block_rsrvd_fix_b_5 : dspba_delay
    GENERIC MAP ( width => 52, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => qDivProd_opB_uid144_block_rsrvd_fix_b, xout => redist33_qDivProd_opB_uid144_block_rsrvd_fix_b_5_q, clk => clock, aclr => resetn );

    -- updatedY_uid146_block_rsrvd_fix(BITJOIN,145)@21
    updatedY_uid146_block_rsrvd_fix_q <= redist33_qDivProd_opB_uid144_block_rsrvd_fix_b_5_q & GND_q;

    -- qDivProdFracHigh_uid131_block_rsrvd_fix(BITSELECT,130)@21
    qDivProdFracHigh_uid131_block_rsrvd_fix_in <= qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q(105 downto 0);
    qDivProdFracHigh_uid131_block_rsrvd_fix_b <= qDivProdFracHigh_uid131_block_rsrvd_fix_in(105 downto 53);

    -- qDivProdFracLow_uid132_block_rsrvd_fix(BITSELECT,131)@21
    qDivProdFracLow_uid132_block_rsrvd_fix_in <= qDivProd_uid127_block_rsrvd_fix_result_add_2_0_q(104 downto 0);
    qDivProdFracLow_uid132_block_rsrvd_fix_b <= qDivProdFracLow_uid132_block_rsrvd_fix_in(104 downto 52);

    -- qDivProdFrac_uid133_block_rsrvd_fix(MUX,132)@21
    qDivProdFrac_uid133_block_rsrvd_fix_s <= qDivProdNorm_uid129_block_rsrvd_fix_b;
    qDivProdFrac_uid133_block_rsrvd_fix_combproc: PROCESS (qDivProdFrac_uid133_block_rsrvd_fix_s, qDivProdFracLow_uid132_block_rsrvd_fix_b, qDivProdFracHigh_uid131_block_rsrvd_fix_b)
    BEGIN
        CASE (qDivProdFrac_uid133_block_rsrvd_fix_s) IS
            WHEN "0" => qDivProdFrac_uid133_block_rsrvd_fix_q <= qDivProdFracLow_uid132_block_rsrvd_fix_b;
            WHEN "1" => qDivProdFrac_uid133_block_rsrvd_fix_q <= qDivProdFracHigh_uid131_block_rsrvd_fix_b;
            WHEN OTHERS => qDivProdFrac_uid133_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracProdEQFracX_uid148_block_rsrvd_fix(LOGICAL,149)@21
    fracProdEQFracX_uid148_block_rsrvd_fix_q <= "1" WHEN qDivProdFrac_uid133_block_rsrvd_fix_q = updatedY_uid146_block_rsrvd_fix_q ELSE "0";

    -- cstBias_uid8_block_rsrvd_fix(CONSTANT,7)
    cstBias_uid8_block_rsrvd_fix_q <= "01111111111";

    -- expYIncludingSubnormals_uid124_block_rsrvd_fix(SUB,123)@15 + 1
    expYIncludingSubnormals_uid124_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expYSubnorm_uid59_block_rsrvd_fix_q);
    expYIncludingSubnormals_uid124_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000" & redist21_r_uid240_lzFracY_uid63_block_rsrvd_fix_q_14_q);
    expYIncludingSubnormals_uid124_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expYIncludingSubnormals_uid124_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expYIncludingSubnormals_uid124_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expYIncludingSubnormals_uid124_block_rsrvd_fix_a) - UNSIGNED(expYIncludingSubnormals_uid124_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expYIncludingSubnormals_uid124_block_rsrvd_fix_q <= expYIncludingSubnormals_uid124_block_rsrvd_fix_o(12 downto 0);

    -- redist36_expYIncludingSubnormals_uid124_block_rsrvd_fix_q_3(DELAY,1164)
    redist36_expYIncludingSubnormals_uid124_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 13, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expYIncludingSubnormals_uid124_block_rsrvd_fix_q, xout => redist36_expYIncludingSubnormals_uid124_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix(SUB,124)@18
    expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => redist36_expYIncludingSubnormals_uid124_block_rsrvd_fix_q_3_q(12)) & redist36_expYIncludingSubnormals_uid124_block_rsrvd_fix_q_3_q));
    expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & cstBias_uid8_block_rsrvd_fix_q));
    expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_a) - SIGNED(expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_b));
    expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_q <= expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_o(13 downto 0);

    -- redist43_subnormalRes_uid93_block_rsrvd_fix_n_2(DELAY,1171)
    redist43_subnormalRes_uid93_block_rsrvd_fix_n_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_subnormalRes_uid93_block_rsrvd_fix_n_1_q, xout => redist43_subnormalRes_uid93_block_rsrvd_fix_n_2_q, clk => clock, aclr => resetn );

    -- resExpIncludingSubnormals0_uid120_block_rsrvd_fix(ADD,119)@18
    resExpIncludingSubnormals0_uid120_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist38_expPostRndF_uid115_block_rsrvd_fix_b_1_q);
    resExpIncludingSubnormals0_uid120_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000" & redist43_subnormalRes_uid93_block_rsrvd_fix_n_2_q);
    resExpIncludingSubnormals0_uid120_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(resExpIncludingSubnormals0_uid120_block_rsrvd_fix_a) + UNSIGNED(resExpIncludingSubnormals0_uid120_block_rsrvd_fix_b));
    resExpIncludingSubnormals0_uid120_block_rsrvd_fix_q <= resExpIncludingSubnormals0_uid120_block_rsrvd_fix_o(11 downto 0);

    -- resExpIncludingSubnormals_uid121_block_rsrvd_fix(SUB,120)@18
    resExpIncludingSubnormals_uid121_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & resExpIncludingSubnormals0_uid120_block_rsrvd_fix_q);
    resExpIncludingSubnormals_uid121_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000" & r_uid514_lzFracWfP1_uid118_block_rsrvd_fix_q);
    resExpIncludingSubnormals_uid121_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(resExpIncludingSubnormals_uid121_block_rsrvd_fix_a) - UNSIGNED(resExpIncludingSubnormals_uid121_block_rsrvd_fix_b));
    resExpIncludingSubnormals_uid121_block_rsrvd_fix_q <= resExpIncludingSubnormals_uid121_block_rsrvd_fix_o(12 downto 0);

    -- c_uid122_block_rsrvd_fix(SUB,121)@18
    c_uid122_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => resExpIncludingSubnormals_uid121_block_rsrvd_fix_q(12)) & resExpIncludingSubnormals_uid121_block_rsrvd_fix_q));
    c_uid122_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & cstBias_uid8_block_rsrvd_fix_q));
    c_uid122_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(c_uid122_block_rsrvd_fix_a) - SIGNED(c_uid122_block_rsrvd_fix_b));
    c_uid122_block_rsrvd_fix_q <= c_uid122_block_rsrvd_fix_o(13 downto 0);

    -- prodExpPreNorm_uid128_block_rsrvd_fix(ADD,127)@18 + 1
    prodExpPreNorm_uid128_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => c_uid122_block_rsrvd_fix_q(13)) & c_uid122_block_rsrvd_fix_q));
    prodExpPreNorm_uid128_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_q(13)) & expYIncludingSubnormalsMBias_uid125_block_rsrvd_fix_q));
    prodExpPreNorm_uid128_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            prodExpPreNorm_uid128_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            prodExpPreNorm_uid128_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(prodExpPreNorm_uid128_block_rsrvd_fix_a) + SIGNED(prodExpPreNorm_uid128_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    prodExpPreNorm_uid128_block_rsrvd_fix_q <= prodExpPreNorm_uid128_block_rsrvd_fix_o(14 downto 0);

    -- redist35_prodExpPreNorm_uid128_block_rsrvd_fix_q_3(DELAY,1163)
    redist35_prodExpPreNorm_uid128_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => prodExpPreNorm_uid128_block_rsrvd_fix_q, xout => redist35_prodExpPreNorm_uid128_block_rsrvd_fix_q_3_q, clk => clock, aclr => resetn );

    -- prodExpPostNorm_uid130_block_rsrvd_fix(ADD,129)@21
    prodExpPostNorm_uid130_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => redist35_prodExpPreNorm_uid128_block_rsrvd_fix_q_3_q(14)) & redist35_prodExpPreNorm_uid128_block_rsrvd_fix_q_3_q));
    prodExpPostNorm_uid130_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000000" & qDivProdNorm_uid129_block_rsrvd_fix_b));
    prodExpPostNorm_uid130_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(prodExpPostNorm_uid130_block_rsrvd_fix_a) + SIGNED(prodExpPostNorm_uid130_block_rsrvd_fix_b));
    prodExpPostNorm_uid130_block_rsrvd_fix_q <= prodExpPostNorm_uid130_block_rsrvd_fix_o(15 downto 0);

    -- expXIncludingSubnormals_uid140_block_rsrvd_fix(SUB,139)@15 + 1
    expXIncludingSubnormals_uid140_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expXSubnorm_uid58_block_rsrvd_fix_q);
    expXIncludingSubnormals_uid140_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000" & redist15_r_uid371_lzoFracX_uid74_block_rsrvd_fix_q_2_q);
    expXIncludingSubnormals_uid140_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            expXIncludingSubnormals_uid140_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            expXIncludingSubnormals_uid140_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expXIncludingSubnormals_uid140_block_rsrvd_fix_a) - UNSIGNED(expXIncludingSubnormals_uid140_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expXIncludingSubnormals_uid140_block_rsrvd_fix_q <= expXIncludingSubnormals_uid140_block_rsrvd_fix_o(12 downto 0);

    -- redist34_expXIncludingSubnormals_uid140_block_rsrvd_fix_q_6(DELAY,1162)
    redist34_expXIncludingSubnormals_uid140_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 13, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => expXIncludingSubnormals_uid140_block_rsrvd_fix_q, xout => redist34_expXIncludingSubnormals_uid140_block_rsrvd_fix_q_6_q, clk => clock, aclr => resetn );

    -- expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix(SUB,140)@21
    expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => redist34_expXIncludingSubnormals_uid140_block_rsrvd_fix_q_6_q(12)) & redist34_expXIncludingSubnormals_uid140_block_rsrvd_fix_q_6_q));
    expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & cstBias_uid8_block_rsrvd_fix_q));
    expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_a) - SIGNED(expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_b));
    expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_q <= expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_o(13 downto 0);

    -- expProdEqExpX_uid142_block_rsrvd_fix(LOGICAL,141)@21
    expProdEqExpX_uid142_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_q(13)) & expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_q));
    expProdEqExpX_uid142_block_rsrvd_fix_q <= "1" WHEN expProdEqExpX_uid142_block_rsrvd_fix_a = prodExpPostNorm_uid130_block_rsrvd_fix_q ELSE "0";

    -- redist44_subnormalRes_uid93_block_rsrvd_fix_n_5(DELAY,1172)
    redist44_subnormalRes_uid93_block_rsrvd_fix_n_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist43_subnormalRes_uid93_block_rsrvd_fix_n_2_q, xout => redist44_subnormalRes_uid93_block_rsrvd_fix_n_5_q, clk => clock, aclr => resetn );

    -- extraUlp1_uid156_block_rsrvd_fix(LOGICAL,155)@21 + 1
    extraUlp1_uid156_block_rsrvd_fix_qi <= redist44_subnormalRes_uid93_block_rsrvd_fix_n_5_q and expProdEqExpX_uid142_block_rsrvd_fix_q and fracProdEQFracX_uid148_block_rsrvd_fix_q and betweenFPwF_uid153_block_rsrvd_fix_b and lsbFrac_uid155_block_rsrvd_fix_b and invFullSticky_uid154_block_rsrvd_fix_q;
    extraUlp1_uid156_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => extraUlp1_uid156_block_rsrvd_fix_qi, xout => extraUlp1_uid156_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- fracProdLtFracX_uid145_block_rsrvd_fix(COMPARE,146)@21
    fracProdLtFracX_uid145_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & qDivProdFrac_uid133_block_rsrvd_fix_q);
    fracProdLtFracX_uid145_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & updatedY_uid146_block_rsrvd_fix_q);
    fracProdLtFracX_uid145_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracProdLtFracX_uid145_block_rsrvd_fix_a) - UNSIGNED(fracProdLtFracX_uid145_block_rsrvd_fix_b));
    fracProdLtFracX_uid145_block_rsrvd_fix_c(0) <= fracProdLtFracX_uid145_block_rsrvd_fix_o(54);

    -- expEqFracLT_uid151_block_rsrvd_fix(LOGICAL,150)@21
    expEqFracLT_uid151_block_rsrvd_fix_q <= expProdEqExpX_uid142_block_rsrvd_fix_q and fracProdLtFracX_uid145_block_rsrvd_fix_c;

    -- expProdLtExpX_uid143_block_rsrvd_fix(COMPARE,142)@21
    expProdLtExpX_uid143_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => prodExpPostNorm_uid130_block_rsrvd_fix_q(15)) & prodExpPostNorm_uid130_block_rsrvd_fix_q));
    expProdLtExpX_uid143_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_q(13)) & expXIncludingSubnormalsMBias_uid141_block_rsrvd_fix_q));
    expProdLtExpX_uid143_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expProdLtExpX_uid143_block_rsrvd_fix_a) - SIGNED(expProdLtExpX_uid143_block_rsrvd_fix_b));
    expProdLtExpX_uid143_block_rsrvd_fix_c(0) <= expProdLtExpX_uid143_block_rsrvd_fix_o(17);

    -- qDivProdLTX_uid152_block_rsrvd_fix(LOGICAL,151)@21
    qDivProdLTX_uid152_block_rsrvd_fix_q <= expProdLtExpX_uid143_block_rsrvd_fix_c or expEqFracLT_uid151_block_rsrvd_fix_q;

    -- extraUlp0_uid157_block_rsrvd_fix(LOGICAL,156)@21 + 1
    extraUlp0_uid157_block_rsrvd_fix_qi <= qDivProdLTX_uid152_block_rsrvd_fix_q and betweenFPwF_uid153_block_rsrvd_fix_b;
    extraUlp0_uid157_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => extraUlp0_uid157_block_rsrvd_fix_qi, xout => extraUlp0_uid157_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- extraUlp_uid158_block_rsrvd_fix(LOGICAL,157)@22
    extraUlp_uid158_block_rsrvd_fix_q <= extraUlp0_uid157_block_rsrvd_fix_q or extraUlp1_uid156_block_rsrvd_fix_q;

    -- expRPreExc_uid167_block_rsrvd_fix(MUX,166)@22
    expRPreExc_uid167_block_rsrvd_fix_s <= extraUlp_uid158_block_rsrvd_fix_q;
    expRPreExc_uid167_block_rsrvd_fix_combproc: PROCESS (expRPreExc_uid167_block_rsrvd_fix_s, redist39_expPostRndF_uid115_block_rsrvd_fix_b_5_q, expFracPostRndR_uid166_block_rsrvd_fix_b)
    BEGIN
        CASE (expRPreExc_uid167_block_rsrvd_fix_s) IS
            WHEN "0" => expRPreExc_uid167_block_rsrvd_fix_q <= redist39_expPostRndF_uid115_block_rsrvd_fix_b_5_q;
            WHEN "1" => expRPreExc_uid167_block_rsrvd_fix_q <= expFracPostRndR_uid166_block_rsrvd_fix_b;
            WHEN OTHERS => expRPreExc_uid167_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- yRegOrSubnormal_uid177_block_rsrvd_fix(LOGICAL,176)@15 + 1
    yRegOrSubnormal_uid177_block_rsrvd_fix_qi <= redist56_excR_y_uid50_block_rsrvd_fix_q_15_q or excYSubnorm_uid54_block_rsrvd_fix_q;
    yRegOrSubnormal_uid177_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yRegOrSubnormal_uid177_block_rsrvd_fix_qi, xout => yRegOrSubnormal_uid177_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2(DELAY,1158)
    redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => yRegOrSubnormal_uid177_block_rsrvd_fix_q, xout => redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- redist65_excI_x_uid29_block_rsrvd_fix_q_5(DELAY,1193)
    redist65_excI_x_uid29_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist64_excI_x_uid29_block_rsrvd_fix_q_3_q, xout => redist65_excI_x_uid29_block_rsrvd_fix_q_5_q, clk => clock, aclr => resetn );

    -- excXIYR_uid186_block_rsrvd_fix(LOGICAL,185)@17
    excXIYR_uid186_block_rsrvd_fix_q <= redist65_excI_x_uid29_block_rsrvd_fix_q_5_q and redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2_q;

    -- redist61_excZ_y_uid45_block_rsrvd_fix_q_17(DELAY,1189)
    redist61_excZ_y_uid45_block_rsrvd_fix_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist60_excZ_y_uid45_block_rsrvd_fix_q_15_q, xout => redist61_excZ_y_uid45_block_rsrvd_fix_q_17_q, clk => clock, aclr => resetn );

    -- excXIYZ_uid185_block_rsrvd_fix(LOGICAL,184)@17
    excXIYZ_uid185_block_rsrvd_fix_q <= redist65_excI_x_uid29_block_rsrvd_fix_q_5_q and redist61_excZ_y_uid45_block_rsrvd_fix_q_17_q;

    -- expRExt_uid169_block_rsrvd_fix(BITSELECT,168)@17
    expRExt_uid169_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracPostRnd_uid113_block_rsrvd_fix_q(67 downto 54));

    -- expOvf_uid175_block_rsrvd_fix(COMPARE,174)@17
    expOvf_uid175_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => expRExt_uid169_block_rsrvd_fix_b(13)) & expRExt_uid169_block_rsrvd_fix_b));
    expOvf_uid175_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000" & cstAllOWE_uid19_block_rsrvd_fix_q));
    expOvf_uid175_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid175_block_rsrvd_fix_a) - SIGNED(expOvf_uid175_block_rsrvd_fix_b));
    expOvf_uid175_block_rsrvd_fix_n(0) <= not (expOvf_uid175_block_rsrvd_fix_o(15));

    -- xRegOrSubnormal_uid176_block_rsrvd_fix(LOGICAL,175)@15 + 1
    xRegOrSubnormal_uid176_block_rsrvd_fix_qi <= redist62_excR_x_uid33_block_rsrvd_fix_q_3_q or excXSubnorm_uid56_block_rsrvd_fix_q;
    xRegOrSubnormal_uid176_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xRegOrSubnormal_uid176_block_rsrvd_fix_qi, xout => xRegOrSubnormal_uid176_block_rsrvd_fix_q, clk => clock, aclr => resetn );

    -- redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2(DELAY,1159)
    redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => xRegOrSubnormal_uid176_block_rsrvd_fix_q, xout => redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2_q, clk => clock, aclr => resetn );

    -- excXRYROvf_uid184_block_rsrvd_fix(LOGICAL,183)@17
    excXRYROvf_uid184_block_rsrvd_fix_q <= redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2_q and redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2_q and expOvf_uid175_block_rsrvd_fix_n;

    -- excXRYZ_uid183_block_rsrvd_fix(LOGICAL,182)@17
    excXRYZ_uid183_block_rsrvd_fix_q <= redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2_q and redist61_excZ_y_uid45_block_rsrvd_fix_q_17_q;

    -- excRInf_uid187_block_rsrvd_fix(LOGICAL,186)@17
    excRInf_uid187_block_rsrvd_fix_q <= excXRYZ_uid183_block_rsrvd_fix_q or excXRYROvf_uid184_block_rsrvd_fix_q or excXIYZ_uid185_block_rsrvd_fix_q or excXIYR_uid186_block_rsrvd_fix_q;

    -- redist59_excI_y_uid46_block_rsrvd_fix_q_17(DELAY,1187)
    redist59_excI_y_uid46_block_rsrvd_fix_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist58_excI_y_uid46_block_rsrvd_fix_q_15_q, xout => redist59_excI_y_uid46_block_rsrvd_fix_q_17_q, clk => clock, aclr => resetn );

    -- redist67_excZ_x_uid28_block_rsrvd_fix_q_5(DELAY,1195)
    redist67_excZ_x_uid28_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist66_excZ_x_uid28_block_rsrvd_fix_q_3_q, xout => redist67_excZ_x_uid28_block_rsrvd_fix_q_5_q, clk => clock, aclr => resetn );

    -- xRegOrZero_uid180_block_rsrvd_fix(LOGICAL,179)@17
    xRegOrZero_uid180_block_rsrvd_fix_q <= redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2_q or redist67_excZ_x_uid28_block_rsrvd_fix_q_5_q;

    -- regOrZeroOverInf_uid181_block_rsrvd_fix(LOGICAL,180)@17
    regOrZeroOverInf_uid181_block_rsrvd_fix_q <= xRegOrZero_uid180_block_rsrvd_fix_q and redist59_excI_y_uid46_block_rsrvd_fix_q_17_q;

    -- expUdf_uid170_block_rsrvd_fix(COMPARE,169)@17
    expUdf_uid170_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000000" & GND_q));
    expUdf_uid170_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => expRExt_uid169_block_rsrvd_fix_b(13)) & expRExt_uid169_block_rsrvd_fix_b));
    expUdf_uid170_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid170_block_rsrvd_fix_a) - SIGNED(expUdf_uid170_block_rsrvd_fix_b));
    expUdf_uid170_block_rsrvd_fix_n(0) <= not (expUdf_uid170_block_rsrvd_fix_o(15));

    -- rUnderflow_uid172_block_rsrvd_fix(LOGICAL,171)@17
    rUnderflow_uid172_block_rsrvd_fix_q <= expUdf_uid170_block_rsrvd_fix_n and invSubnormalRes_uid116_block_rsrvd_fix_q;

    -- regOverRegWithUf_uid179_block_rsrvd_fix(LOGICAL,178)@17
    regOverRegWithUf_uid179_block_rsrvd_fix_q <= rUnderflow_uid172_block_rsrvd_fix_q and redist31_xRegOrSubnormal_uid176_block_rsrvd_fix_q_2_q and redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2_q;

    -- zeroOverReg_uid178_block_rsrvd_fix(LOGICAL,177)@17
    zeroOverReg_uid178_block_rsrvd_fix_q <= redist67_excZ_x_uid28_block_rsrvd_fix_q_5_q and redist30_yRegOrSubnormal_uid177_block_rsrvd_fix_q_2_q;

    -- excRZero_uid182_block_rsrvd_fix(LOGICAL,181)@17
    excRZero_uid182_block_rsrvd_fix_q <= zeroOverReg_uid178_block_rsrvd_fix_q or regOverRegWithUf_uid179_block_rsrvd_fix_q or regOrZeroOverInf_uid181_block_rsrvd_fix_q;

    -- concExc_uid191_block_rsrvd_fix(BITJOIN,190)@17
    concExc_uid191_block_rsrvd_fix_q <= redist29_excRNaN_uid190_block_rsrvd_fix_q_2_q & excRInf_uid187_block_rsrvd_fix_q & excRZero_uid182_block_rsrvd_fix_q;

    -- excREnc_uid192_block_rsrvd_fix(LOOKUP,191)@17 + 1
    excREnc_uid192_block_rsrvd_fix_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            excREnc_uid192_block_rsrvd_fix_q <= "01";
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (concExc_uid191_block_rsrvd_fix_q) IS
                WHEN "000" => excREnc_uid192_block_rsrvd_fix_q <= "01";
                WHEN "001" => excREnc_uid192_block_rsrvd_fix_q <= "00";
                WHEN "010" => excREnc_uid192_block_rsrvd_fix_q <= "10";
                WHEN "011" => excREnc_uid192_block_rsrvd_fix_q <= "00";
                WHEN "100" => excREnc_uid192_block_rsrvd_fix_q <= "11";
                WHEN "101" => excREnc_uid192_block_rsrvd_fix_q <= "00";
                WHEN "110" => excREnc_uid192_block_rsrvd_fix_q <= "00";
                WHEN "111" => excREnc_uid192_block_rsrvd_fix_q <= "00";
                WHEN OTHERS => -- unreachable
                               excREnc_uid192_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist28_excREnc_uid192_block_rsrvd_fix_q_5(DELAY,1156)
    redist28_excREnc_uid192_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 2, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => excREnc_uid192_block_rsrvd_fix_q, xout => redist28_excREnc_uid192_block_rsrvd_fix_q_5_q, clk => clock, aclr => resetn );

    -- expRPostExc_uid200_block_rsrvd_fix(MUX,199)@22
    expRPostExc_uid200_block_rsrvd_fix_s <= redist28_excREnc_uid192_block_rsrvd_fix_q_5_q;
    expRPostExc_uid200_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid200_block_rsrvd_fix_s, cstAllZWE_uid21_block_rsrvd_fix_q, expRPreExc_uid167_block_rsrvd_fix_q, cstAllOWE_uid19_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid200_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid200_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid200_block_rsrvd_fix_q <= expRPreExc_uid167_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid200_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid200_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid200_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid193_block_rsrvd_fix(CONSTANT,192)
    oneFracRPostExc2_uid193_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000001";

    -- fracPostRndFPostUlp_uid161_block_rsrvd_fix(BITSELECT,160)@22
    fracPostRndFPostUlp_uid161_block_rsrvd_fix_in <= fracRPreExcExt_uid160_block_rsrvd_fix_q(51 downto 0);
    fracPostRndFPostUlp_uid161_block_rsrvd_fix_b <= fracPostRndFPostUlp_uid161_block_rsrvd_fix_in(51 downto 0);

    -- fracRPreExc_uid162_block_rsrvd_fix(MUX,161)@22
    fracRPreExc_uid162_block_rsrvd_fix_s <= extraUlp_uid158_block_rsrvd_fix_q;
    fracRPreExc_uid162_block_rsrvd_fix_combproc: PROCESS (fracRPreExc_uid162_block_rsrvd_fix_s, redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1_q, fracPostRndFPostUlp_uid161_block_rsrvd_fix_b)
    BEGIN
        CASE (fracRPreExc_uid162_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPreExc_uid162_block_rsrvd_fix_q <= redist32_fracPostRndFT_uid159_block_rsrvd_fix_b_1_q;
            WHEN "1" => fracRPreExc_uid162_block_rsrvd_fix_q <= fracPostRndFPostUlp_uid161_block_rsrvd_fix_b;
            WHEN OTHERS => fracRPreExc_uid162_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostExc_uid196_block_rsrvd_fix(MUX,195)@22
    fracRPostExc_uid196_block_rsrvd_fix_s <= redist28_excREnc_uid192_block_rsrvd_fix_q_5_q;
    fracRPostExc_uid196_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid196_block_rsrvd_fix_s, paddingY_uid16_block_rsrvd_fix_q, fracRPreExc_uid162_block_rsrvd_fix_q, oneFracRPostExc2_uid193_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid196_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid196_block_rsrvd_fix_q <= paddingY_uid16_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid196_block_rsrvd_fix_q <= fracRPreExc_uid162_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid196_block_rsrvd_fix_q <= paddingY_uid16_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid196_block_rsrvd_fix_q <= oneFracRPostExc2_uid193_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid196_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- divR_uid203_block_rsrvd_fix(BITJOIN,202)@22
    divR_uid203_block_rsrvd_fix_q <= redist27_sRPostExc_uid202_block_rsrvd_fix_q_5_q & expRPostExc_uid200_block_rsrvd_fix_q & fracRPostExc_uid196_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@22
    out_primWireOut <= divR_uid203_block_rsrvd_fix_q;

END normal;
