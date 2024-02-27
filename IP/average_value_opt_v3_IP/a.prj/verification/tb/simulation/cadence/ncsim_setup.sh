
# (C) 2001-2022 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 18.1 625 win32 2022.05.26.10:23:36

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 18.1 625 win32 2022.05.26.10:23:36
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/intelfpga_lite/18.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/average_value_inst_avs_a_cmd_width_adapter/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/average_value_inst_avs_a_agent_rsp_fifo/
mkdir -p ./libraries/average_value_inst_avs_a_agent/
mkdir -p ./libraries/mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent/
mkdir -p ./libraries/average_value_inst_avs_a_translator/
mkdir -p ./libraries/mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator/
mkdir -p ./libraries/average_value_internal_inst/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_1/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/split_component_start_inst/
mkdir -p ./libraries/mm_master_dpi_bfm_average_value_avs_a_inst/
mkdir -p ./libraries/main_dpi_controller_inst/
mkdir -p ./libraries/component_dpi_controller_average_value_inst/
mkdir -p ./libraries/clock_reset_inst/
mkdir -p ./libraries/average_value_inst/
mkdir -p ./libraries/average_value_component_dpi_controller_slave_done_concatenate_inst/
mkdir -p ./libraries/average_value_component_dpi_controller_bind_conduit_fanout_inst/
mkdir -p ./libraries/average_value_component_cra_slave_memories_done_concatenate_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/fiftyfivenm_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/fiftyfivenm/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA0ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA1ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA2ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA3ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA4ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA5ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA6ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA7ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA8ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA9ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA10ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA11ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA12ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA13ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA14ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA15ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA16ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA17ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA18ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA19ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA20ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA21ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA22ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA23ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA24ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA25ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA26ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA27ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA28ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA29ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA30ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA31ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA32ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA33ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA34ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA35ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA36ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA37ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA38ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA39ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA40ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA41ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA42ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA43ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA44ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA45ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA46ZinvTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA47ZinvTables_lutmem.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                -work altera_ver     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                         -work lpm_ver        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                            -work sgate_ver      
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                        -work altera_mf_ver  
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.v"                -work fiftyfivenm_ver
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"          -work altera         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"      -work altera         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"         -work altera         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"      -work altera         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"   -work altera         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"              -work altera         
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                        -work lpm            
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                       -work lpm            
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                     -work sgate          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                          -work sgate          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"           -work altera_mf      
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                      -work altera_mf      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                    -work altera_lnsim   
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"        -work altera_lnsim   
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/fiftyfivenm_atoms_ncrypt.v" -work fiftyfivenm    
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.vhd"              -work fiftyfivenm    
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_components.vhd"         -work fiftyfivenm    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                         -work altera_common_sv_packages                                          -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                         -work altera_common_sv_packages                                          -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                  -work altera_common_sv_packages                                          -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"                -work error_adapter_0                                                    -cdslib ./cds_libs/error_adapter_0.cds.lib                                                   
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_avalon_st_adapter.v"                                 -work avalon_st_adapter                                                  -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                           -work average_value_inst_avs_a_cmd_width_adapter                         -cdslib ./cds_libs/average_value_inst_avs_a_cmd_width_adapter.cds.lib                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                       -work average_value_inst_avs_a_cmd_width_adapter                         -cdslib ./cds_libs/average_value_inst_avs_a_cmd_width_adapter.cds.lib                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                      -work average_value_inst_avs_a_cmd_width_adapter                         -cdslib ./cds_libs/average_value_inst_avs_a_cmd_width_adapter.cds.lib                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_rsp_mux.sv"                                          -work rsp_mux                                                            -cdslib ./cds_libs/rsp_mux.cds.lib                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work rsp_mux                                                            -cdslib ./cds_libs/rsp_mux.cds.lib                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_cmd_mux.sv"                                          -work cmd_mux                                                            -cdslib ./cds_libs/cmd_mux.cds.lib                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -work cmd_mux                                                            -cdslib ./cds_libs/cmd_mux.cds.lib                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_cmd_demux.sv"                                        -work cmd_demux                                                          -cdslib ./cds_libs/cmd_demux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_router_001.sv"                                       -work router_001                                                         -cdslib ./cds_libs/router_001.cds.lib                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_router.sv"                                           -work router                                                             -cdslib ./cds_libs/router.cds.lib                                                            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                  -work average_value_inst_avs_a_agent_rsp_fifo                            -cdslib ./cds_libs/average_value_inst_avs_a_agent_rsp_fifo.cds.lib                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                             -work average_value_inst_avs_a_agent                                     -cdslib ./cds_libs/average_value_inst_avs_a_agent.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                      -work average_value_inst_avs_a_agent                                     -cdslib ./cds_libs/average_value_inst_avs_a_agent.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                            -work mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent                -cdslib ./cds_libs/mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent.cds.lib               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                        -work average_value_inst_avs_a_translator                                -cdslib ./cds_libs/average_value_inst_avs_a_translator.cds.lib                               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                       -work mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator           -cdslib ./cds_libs/mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator.cds.lib          
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/dspba_library_package.vhd"                                                -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/dspba_library.vhd"                                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                                -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/st_top.v"                                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_top.v"                                                                -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_master.v"                                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                         -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                      -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwdsrc.v"                                                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_full_detector.v"                                                      -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/ternary_add.v"                                                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/six_three_comp.v"                                                         -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/thirtysix_six_comp.v"                                                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                         -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_function_wrapper.vhd"                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_function.vhd"                                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B2_sr_1.vhd"                                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B3_sr_0.vhd"                                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B0_runOnce.vhd"                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B0_runOnce_branch.vhd"                                      -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B0_runOnce_merge.vhd"                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B0_runOnce_stall_region.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B0_runOnce_merge_reg.vhd"                                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i1_wt_limpop_average_value0.vhd"                                -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i1_wt_limpop_average_value_reg.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_wt_limpush_average_value2.vhd"                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_wt_limpush_average_value_reg.vhd"                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B1_start.vhd"                                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B1_start_branch.vhd"                                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B1_start_merge.vhd"                                         -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B1_start_stall_region.vhd"                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_sfc_c0_wt_entry_average_value_c0_enter_average_value.vhd"               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_wt_entry_average_valueA0Z_average_value10.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_wt_entry_average_value_c0A0Zr_average_value4.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going9_average_value6.vhd"                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_notexitcond10_average_value8.vhd"                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B1_start_merge_reg.vhd"                                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i1_throttle_pop_average_value12.vhd"                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i1_throttle_pop_average_value_reg.vhd"                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_iord_bl_do_unnamed_average_value1_average_value14.vhd"                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B2.vhd"                                                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B2_branch.vhd"                                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B2_merge.vhd"                                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B2_stall_region.vhd"                                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B2_merge_reg.vhd"                                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_mA0Z12_average_value.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_0_ac_fixed_0ca_0ba_0_0A0Z_average_value66.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_0_ac_fixed_0ca_0ba_0_0A0Zlue137_data_fifo.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_0_ac_fixed_0ca_0ba_0_0A0Zue_full_detector.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_0_ac_fixed_0ca_0ba_0_0_0_A0Z_average_value15.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_average_value21.vhd"                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i32_i_039_pop6_average_value32.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i4_cleanups_pop9_average_value17.vhd"                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i4_initerations_pop8_average_value23.vhd"                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pop_i64_temp_0_0_038_pop7_average_value47.vhd"                      -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_lastiniteration_average_value30.vhd"                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_notexitcond_average_value57.vhd"                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i32_i_039_push6_average_value51.vhd"                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i4_cleanups_push9_average_value60.vhd"                         -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i4_initerations_push8_average_value26.vhd"                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i64_temp_0_0_038_push7_average_value49.vhd"                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_ffwd_src_unnamed_average_value3_average_value62.vhd"                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_ffwd_src_unnamed_average_value4_average_value64.vhd"                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_load_unnamed_average_value2_average_value40.vhd"                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_syncbuf_a_sync_buffer_average_value34.vhd"                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer4_average_value53.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer_average_value37.vhd"                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B3.vhd"                                                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B3_branch.vhd"                                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/average_value_B3_merge.vhd"                                               -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/bb_average_value_B3_stall_region.vhd"                                     -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_sfc_c0_for_cond_for_end_crit_edge_loopA0Z16_average_value.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_for_cond_for_end_crit_A0Zaverage_value133.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_for_cond_for_end_crit_A0Zlue139_data_fifo.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_for_cond_for_end_crit_A0Zue_full_detector.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_for_cond_for_end_crit_edgA0Z_average_value67.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA0Z463a0054c2a6355y.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA0Z0j0ucqp00j0oqf0z.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_ffwd_dst_conv_i_i_i_i6_average_value71.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_ffwd_dst_temp_0_0_0385_average_value69.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer2_average_value73.vhd"                             -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer3_average_value116.vhd"                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_throttle_push_average_value135.vhd"                         -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_push_i1_throttle_push_average_value_reg.vhd"                        -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_iowr_nb_return_unnamed_average_value8_A0Zaverage_value134.vhd"          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going9_average_value_sr.vhd"                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going9_average_value_valid_fifo.vhd"                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_average_value_sr.vhd"                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_average_value_valid_fifo.vhd"                   -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/submodules/loop_limiter_average_value0.vhd"                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                          -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mem1x.v"                                                              -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mem_staging_reg.v"                                                    -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_local_mem_router.v"                                                -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_master_endpoint.v"                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                           -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                            -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_slave_endpoint.v"                                                  -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_slave_rrp.v"                                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_slave_wrp.v"                                                       -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/average_value_internal.v"                                                 -work average_value_internal_inst                                        -cdslib ./cds_libs/average_value_internal_inst.cds.lib                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                         -work irq_mapper                                                         -cdslib ./cds_libs/irq_mapper.cds.lib                                                        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_mm_interconnect_1.v"                                                   -work mm_interconnect_1                                                  -cdslib ./cds_libs/mm_interconnect_1.cds.lib                                                 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0.v"                                                   -work mm_interconnect_0                                                  -cdslib ./cds_libs/mm_interconnect_0.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                         -work split_component_start_inst                                         -cdslib ./cds_libs/split_component_start_inst.cds.lib                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_master_bfm.sv"                                           -work mm_master_dpi_bfm_average_value_avs_a_inst                         -cdslib ./cds_libs/mm_master_dpi_bfm_average_value_avs_a_inst.cds.lib                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_mm_master_dpi_bfm.sv"                                             -work mm_master_dpi_bfm_average_value_avs_a_inst                         -cdslib ./cds_libs/mm_master_dpi_bfm_average_value_avs_a_inst.cds.lib                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                           -work main_dpi_controller_inst                                           -cdslib ./cds_libs/main_dpi_controller_inst.cds.lib                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                           -work component_dpi_controller_average_value_inst                        -cdslib ./cds_libs/component_dpi_controller_average_value_inst.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                         -work component_dpi_controller_average_value_inst                        -cdslib ./cds_libs/component_dpi_controller_average_value_inst.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                      -work component_dpi_controller_average_value_inst                        -cdslib ./cds_libs/component_dpi_controller_average_value_inst.cds.lib                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                                   -work clock_reset_inst                                                   -cdslib ./cds_libs/clock_reset_inst.cds.lib                                                  
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_average_value_inst.v"                                                  -work average_value_inst                                                 -cdslib ./cds_libs/average_value_inst.cds.lib                                                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_average_value_component_dpi_controller_slave_done_concatenate_inst.sv" -work average_value_component_dpi_controller_slave_done_concatenate_inst -cdslib ./cds_libs/average_value_component_dpi_controller_slave_done_concatenate_inst.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_average_value_component_dpi_controller_bind_conduit_fanout_inst.sv"    -work average_value_component_dpi_controller_bind_conduit_fanout_inst    -cdslib ./cds_libs/average_value_component_dpi_controller_bind_conduit_fanout_inst.cds.lib   
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_average_value_component_cra_slave_memories_done_concatenate_inst.sv"   -work average_value_component_cra_slave_memories_done_concatenate_inst   -cdslib ./cds_libs/average_value_component_cra_slave_memories_done_concatenate_inst.cds.lib  
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                                                                                      
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
