
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

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
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
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
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
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga_lite/18.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" $VSIM_VERSION_STR ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA0ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA1ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA2ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA3ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA4ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA5ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA6ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA7ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA8ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA9ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA10ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA11ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA12ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA13ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA14ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA15ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA16ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA17ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA18ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA19ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA20ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA21ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA22ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA23ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA24ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA25ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA26ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA27ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA28ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA29ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA30ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA31ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA32ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA33ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA34ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA35ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA36ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA37ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA38ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA39ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA40ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA41ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA42ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA43ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA44ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA45ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA46ZinvTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA47ZinvTables_lutmem.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          tb/simulation/mentor/libraries/     
ensure_lib          tb/simulation/mentor/libraries/work/
vmap       work     tb/simulation/mentor/libraries/work/
vmap       work_lib tb/simulation/mentor/libraries/work/
if ![ string match "*ModelSim ALTERA*" $VSIM_VERSION_STR ] {
  ensure_lib                  tb/simulation/mentor/libraries/altera_ver/      
  vmap       altera_ver       tb/simulation/mentor/libraries/altera_ver/      
  ensure_lib                  tb/simulation/mentor/libraries/lpm_ver/         
  vmap       lpm_ver          tb/simulation/mentor/libraries/lpm_ver/         
  ensure_lib                  tb/simulation/mentor/libraries/sgate_ver/       
  vmap       sgate_ver        tb/simulation/mentor/libraries/sgate_ver/       
  ensure_lib                  tb/simulation/mentor/libraries/altera_mf_ver/   
  vmap       altera_mf_ver    tb/simulation/mentor/libraries/altera_mf_ver/   
  ensure_lib                  tb/simulation/mentor/libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver tb/simulation/mentor/libraries/altera_lnsim_ver/
  ensure_lib                  tb/simulation/mentor/libraries/fiftyfivenm_ver/ 
  vmap       fiftyfivenm_ver  tb/simulation/mentor/libraries/fiftyfivenm_ver/ 
  ensure_lib                  tb/simulation/mentor/libraries/altera/          
  vmap       altera           tb/simulation/mentor/libraries/altera/          
  ensure_lib                  tb/simulation/mentor/libraries/lpm/             
  vmap       lpm              tb/simulation/mentor/libraries/lpm/             
  ensure_lib                  tb/simulation/mentor/libraries/sgate/           
  vmap       sgate            tb/simulation/mentor/libraries/sgate/           
  ensure_lib                  tb/simulation/mentor/libraries/altera_mf/       
  vmap       altera_mf        tb/simulation/mentor/libraries/altera_mf/       
  ensure_lib                  tb/simulation/mentor/libraries/altera_lnsim/    
  vmap       altera_lnsim     tb/simulation/mentor/libraries/altera_lnsim/    
  ensure_lib                  tb/simulation/mentor/libraries/fiftyfivenm/     
  vmap       fiftyfivenm      tb/simulation/mentor/libraries/fiftyfivenm/     
}
ensure_lib                                                                    tb/simulation/mentor/libraries/altera_common_sv_packages/                                         
vmap       altera_common_sv_packages                                          tb/simulation/mentor/libraries/altera_common_sv_packages/                                         
ensure_lib                                                                    tb/simulation/mentor/libraries/error_adapter_0/                                                   
vmap       error_adapter_0                                                    tb/simulation/mentor/libraries/error_adapter_0/                                                   
ensure_lib                                                                    tb/simulation/mentor/libraries/avalon_st_adapter/                                                 
vmap       avalon_st_adapter                                                  tb/simulation/mentor/libraries/avalon_st_adapter/                                                 
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_inst_avs_a_cmd_width_adapter/                        
vmap       average_value_inst_avs_a_cmd_width_adapter                         tb/simulation/mentor/libraries/average_value_inst_avs_a_cmd_width_adapter/                        
ensure_lib                                                                    tb/simulation/mentor/libraries/rsp_mux/                                                           
vmap       rsp_mux                                                            tb/simulation/mentor/libraries/rsp_mux/                                                           
ensure_lib                                                                    tb/simulation/mentor/libraries/cmd_mux/                                                           
vmap       cmd_mux                                                            tb/simulation/mentor/libraries/cmd_mux/                                                           
ensure_lib                                                                    tb/simulation/mentor/libraries/cmd_demux/                                                         
vmap       cmd_demux                                                          tb/simulation/mentor/libraries/cmd_demux/                                                         
ensure_lib                                                                    tb/simulation/mentor/libraries/router_001/                                                        
vmap       router_001                                                         tb/simulation/mentor/libraries/router_001/                                                        
ensure_lib                                                                    tb/simulation/mentor/libraries/router/                                                            
vmap       router                                                             tb/simulation/mentor/libraries/router/                                                            
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_inst_avs_a_agent_rsp_fifo/                           
vmap       average_value_inst_avs_a_agent_rsp_fifo                            tb/simulation/mentor/libraries/average_value_inst_avs_a_agent_rsp_fifo/                           
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_inst_avs_a_agent/                                    
vmap       average_value_inst_avs_a_agent                                     tb/simulation/mentor/libraries/average_value_inst_avs_a_agent/                                    
ensure_lib                                                                    tb/simulation/mentor/libraries/mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent/               
vmap       mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent                tb/simulation/mentor/libraries/mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent/               
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_inst_avs_a_translator/                               
vmap       average_value_inst_avs_a_translator                                tb/simulation/mentor/libraries/average_value_inst_avs_a_translator/                               
ensure_lib                                                                    tb/simulation/mentor/libraries/mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator/          
vmap       mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator           tb/simulation/mentor/libraries/mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator/          
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_internal_inst/                                       
vmap       average_value_internal_inst                                        tb/simulation/mentor/libraries/average_value_internal_inst/                                       
ensure_lib                                                                    tb/simulation/mentor/libraries/irq_mapper/                                                        
vmap       irq_mapper                                                         tb/simulation/mentor/libraries/irq_mapper/                                                        
ensure_lib                                                                    tb/simulation/mentor/libraries/mm_interconnect_1/                                                 
vmap       mm_interconnect_1                                                  tb/simulation/mentor/libraries/mm_interconnect_1/                                                 
ensure_lib                                                                    tb/simulation/mentor/libraries/mm_interconnect_0/                                                 
vmap       mm_interconnect_0                                                  tb/simulation/mentor/libraries/mm_interconnect_0/                                                 
ensure_lib                                                                    tb/simulation/mentor/libraries/split_component_start_inst/                                        
vmap       split_component_start_inst                                         tb/simulation/mentor/libraries/split_component_start_inst/                                        
ensure_lib                                                                    tb/simulation/mentor/libraries/mm_master_dpi_bfm_average_value_avs_a_inst/                        
vmap       mm_master_dpi_bfm_average_value_avs_a_inst                         tb/simulation/mentor/libraries/mm_master_dpi_bfm_average_value_avs_a_inst/                        
ensure_lib                                                                    tb/simulation/mentor/libraries/main_dpi_controller_inst/                                          
vmap       main_dpi_controller_inst                                           tb/simulation/mentor/libraries/main_dpi_controller_inst/                                          
ensure_lib                                                                    tb/simulation/mentor/libraries/component_dpi_controller_average_value_inst/                       
vmap       component_dpi_controller_average_value_inst                        tb/simulation/mentor/libraries/component_dpi_controller_average_value_inst/                       
ensure_lib                                                                    tb/simulation/mentor/libraries/clock_reset_inst/                                                  
vmap       clock_reset_inst                                                   tb/simulation/mentor/libraries/clock_reset_inst/                                                  
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_inst/                                                
vmap       average_value_inst                                                 tb/simulation/mentor/libraries/average_value_inst/                                                
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_component_dpi_controller_slave_done_concatenate_inst/
vmap       average_value_component_dpi_controller_slave_done_concatenate_inst tb/simulation/mentor/libraries/average_value_component_dpi_controller_slave_done_concatenate_inst/
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_component_dpi_controller_bind_conduit_fanout_inst/   
vmap       average_value_component_dpi_controller_bind_conduit_fanout_inst    tb/simulation/mentor/libraries/average_value_component_dpi_controller_bind_conduit_fanout_inst/   
ensure_lib                                                                    tb/simulation/mentor/libraries/average_value_component_cra_slave_memories_done_concatenate_inst/  
vmap       average_value_component_cra_slave_memories_done_concatenate_inst   tb/simulation/mentor/libraries/average_value_component_cra_slave_memories_done_concatenate_inst/  

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" $VSIM_VERSION_STR ] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"               -work altera_ver      
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                        -work lpm_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                           -work sgate_ver       
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                       -work altera_mf_ver   
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                   -work altera_lnsim_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.v"               -work fiftyfivenm_ver 
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v" -work fiftyfivenm_ver 
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"         -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"     -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"        -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"     -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"  -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"             -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                       -work lpm             
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                      -work lpm             
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                    -work sgate           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                         -work sgate           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"          -work altera_mf       
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                     -work altera_mf       
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"   -work altera_lnsim    
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"       -work altera_lnsim    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v" -work fiftyfivenm     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.vhd"             -work fiftyfivenm     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_components.vhd"        -work fiftyfivenm     
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                                                      -work altera_common_sv_packages                                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                                                      -work altera_common_sv_packages                                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                                               -work altera_common_sv_packages                                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"                -L altera_common_sv_packages -work error_adapter_0                                                   
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_avalon_st_adapter.v"                                                              -work avalon_st_adapter                                                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                           -L altera_common_sv_packages -work average_value_inst_avs_a_cmd_width_adapter                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                       -L altera_common_sv_packages -work average_value_inst_avs_a_cmd_width_adapter                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                      -L altera_common_sv_packages -work average_value_inst_avs_a_cmd_width_adapter                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_rsp_mux.sv"                                          -L altera_common_sv_packages -work rsp_mux                                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -L altera_common_sv_packages -work rsp_mux                                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_cmd_mux.sv"                                          -L altera_common_sv_packages -work cmd_mux                                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                              -L altera_common_sv_packages -work cmd_mux                                                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_cmd_demux.sv"                                        -L altera_common_sv_packages -work cmd_demux                                                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_router_001.sv"                                       -L altera_common_sv_packages -work router_001                                                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0_router.sv"                                           -L altera_common_sv_packages -work router                                                            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                               -work average_value_inst_avs_a_agent_rsp_fifo                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                             -L altera_common_sv_packages -work average_value_inst_avs_a_agent                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                      -L altera_common_sv_packages -work average_value_inst_avs_a_agent                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                            -L altera_common_sv_packages -work mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                        -L altera_common_sv_packages -work average_value_inst_avs_a_translator                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                       -L altera_common_sv_packages -work mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator          
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/dspba_library_package.vhd"                                                                             -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/dspba_library.vhd"                                                                                     -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                          -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                               -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                            -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                        -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                           -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                        -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                              -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                   -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                   -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                  -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                   -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                             -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                   -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                        -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                     -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                              -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                                -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                               -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                           -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                       -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                        -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/st_top.v"                                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_top.v"                                                                -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                                    -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                          -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                            -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                                    -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                             -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                          -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_master.v"                                                       -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                               -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                                  -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                         -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                             -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                     -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                       -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                        -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                      -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                          -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                                   -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                                    -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                        -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwdsrc.v"                                                            -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_full_detector.v"                                                      -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/ternary_add.v"                                                            -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/six_three_comp.v"                                                         -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/thirtysix_six_comp.v"                                                     -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                       -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                         -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_function_wrapper.vhd"                                                                    -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_function.vhd"                                                                            -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B2_sr_1.vhd"                                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B3_sr_0.vhd"                                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B0_runOnce.vhd"                                                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B0_runOnce_branch.vhd"                                                                   -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B0_runOnce_merge.vhd"                                                                    -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B0_runOnce_stall_region.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B0_runOnce_merge_reg.vhd"                                                                -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i1_wt_limpop_average_value0.vhd"                                                             -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i1_wt_limpop_average_value_reg.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_wt_limpush_average_value2.vhd"                                                           -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_wt_limpush_average_value_reg.vhd"                                                        -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B1_start.vhd"                                                                         -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B1_start_branch.vhd"                                                                     -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B1_start_merge.vhd"                                                                      -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B1_start_stall_region.vhd"                                                            -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_c0_wt_entry_average_value_c0_enter_average_value.vhd"                                            -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_wt_entry_average_valueA0Z_average_value10.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_wt_entry_average_value_c0A0Zr_average_value4.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going9_average_value6.vhd"                                                         -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_notexitcond10_average_value8.vhd"                                                        -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B1_start_merge_reg.vhd"                                                                  -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i1_throttle_pop_average_value12.vhd"                                                         -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i1_throttle_pop_average_value_reg.vhd"                                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_iord_bl_do_unnamed_average_value1_average_value14.vhd"                                               -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B2.vhd"                                                                               -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B2_branch.vhd"                                                                           -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B2_merge.vhd"                                                                            -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B2_stall_region.vhd"                                                                  -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B2_merge_reg.vhd"                                                                        -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_c0_0_ac_fixed_0ca_0ba_0_0_0_qeaa_mA0Z12_average_value.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_0_ac_fixed_0ca_0ba_0_0A0Z_average_value66.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_0_ac_fixed_0ca_0ba_0_0A0Zlue137_data_fifo.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_0_ac_fixed_0ca_0ba_0_0A0Zue_full_detector.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_0_ac_fixed_0ca_0ba_0_0_0_A0Z_average_value15.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_average_value21.vhd"                                                         -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i32_i_039_pop6_average_value32.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i4_cleanups_pop9_average_value17.vhd"                                                        -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i4_initerations_pop8_average_value23.vhd"                                                    -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i64_temp_0_0_038_pop7_average_value47.vhd"                                                   -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_lastiniteration_average_value30.vhd"                                                     -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_notexitcond_average_value57.vhd"                                                         -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i32_i_039_push6_average_value51.vhd"                                                        -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i4_cleanups_push9_average_value60.vhd"                                                      -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i4_initerations_push8_average_value26.vhd"                                                  -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i64_temp_0_0_038_push7_average_value49.vhd"                                                 -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_ffwd_src_unnamed_average_value3_average_value62.vhd"                                                 -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_ffwd_src_unnamed_average_value4_average_value64.vhd"                                                 -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_load_unnamed_average_value2_average_value40.vhd"                                                     -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_syncbuf_a_sync_buffer_average_value34.vhd"                                                           -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer4_average_value53.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer_average_value37.vhd"                                                           -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B3.vhd"                                                                               -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B3_branch.vhd"                                                                           -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/average_value_B3_merge.vhd"                                                                            -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_average_value_B3_stall_region.vhd"                                                                  -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_c0_for_cond_for_end_crit_edge_loopA0Z16_average_value.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_for_cond_for_end_crit_A0Zaverage_value133.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_for_cond_for_end_crit_A0Zlue139_data_fifo.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_for_cond_for_end_crit_A0Zue_full_detector.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_for_cond_for_end_crit_edgA0Z_average_value67.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA0Z463a0054c2a6355y.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/floatComponent_i_sfc_logic_c0_for_cond_fA0Z0j0ucqp00j0oqf0z.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_ffwd_dst_conv_i_i_i_i6_average_value71.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_ffwd_dst_temp_0_0_0385_average_value69.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer2_average_value73.vhd"                                                          -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_syncbuf_n_sync_buffer3_average_value116.vhd"                                                         -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_throttle_push_average_value135.vhd"                                                      -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_throttle_push_average_value_reg.vhd"                                                     -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_iowr_nb_return_unnamed_average_value8_A0Zaverage_value134.vhd"                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going9_average_value_sr.vhd"                                                       -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going9_average_value_valid_fifo.vhd"                                               -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_average_value_sr.vhd"                                                        -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_average_value_valid_fifo.vhd"                                                -work average_value_internal_inst                                       
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/loop_limiter_average_value0.vhd"                                                                       -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                          -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mem1x.v"                                                              -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mem_staging_reg.v"                                                    -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_local_mem_router.v"                                                -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_master_endpoint.v"                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                           -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                            -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_slave_endpoint.v"                                                  -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_slave_rrp.v"                                                       -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_slave_wrp.v"                                                       -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/average_value_internal.v"                                                 -L altera_common_sv_packages -work average_value_internal_inst                                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                         -L altera_common_sv_packages -work irq_mapper                                                        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_mm_interconnect_1.v"                                                                                -work mm_interconnect_1                                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_mm_interconnect_0.v"                                                                                -work mm_interconnect_0                                                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                         -L altera_common_sv_packages -work split_component_start_inst                                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_master_bfm.sv"                                           -L altera_common_sv_packages -work mm_master_dpi_bfm_average_value_avs_a_inst                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_mm_master_dpi_bfm.sv"                                             -L altera_common_sv_packages -work mm_master_dpi_bfm_average_value_avs_a_inst                        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                           -L altera_common_sv_packages -work main_dpi_controller_inst                                          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                           -L altera_common_sv_packages -work component_dpi_controller_average_value_inst                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                         -L altera_common_sv_packages -work component_dpi_controller_average_value_inst                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                      -L altera_common_sv_packages -work component_dpi_controller_average_value_inst                       
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                                   -L altera_common_sv_packages -work clock_reset_inst                                                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_average_value_inst.v"                                                                               -work average_value_inst                                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_average_value_component_dpi_controller_slave_done_concatenate_inst.sv" -L altera_common_sv_packages -work average_value_component_dpi_controller_slave_done_concatenate_inst
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_average_value_component_dpi_controller_bind_conduit_fanout_inst.sv"    -L altera_common_sv_packages -work average_value_component_dpi_controller_bind_conduit_fanout_inst   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_average_value_component_cra_slave_memories_done_concatenate_inst.sv"   -L altera_common_sv_packages -work average_value_component_cra_slave_memories_done_concatenate_inst  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                     
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L avalon_st_adapter -L average_value_inst_avs_a_cmd_width_adapter -L rsp_mux -L cmd_mux -L cmd_demux -L router_001 -L router -L average_value_inst_avs_a_agent_rsp_fifo -L average_value_inst_avs_a_agent -L mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent -L average_value_inst_avs_a_translator -L mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator -L average_value_internal_inst -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L split_component_start_inst -L mm_master_dpi_bfm_average_value_avs_a_inst -L main_dpi_controller_inst -L component_dpi_controller_average_value_inst -L clock_reset_inst -L average_value_inst -L average_value_component_dpi_controller_slave_done_concatenate_inst -L average_value_component_dpi_controller_bind_conduit_fanout_inst -L average_value_component_cra_slave_memories_done_concatenate_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L avalon_st_adapter -L average_value_inst_avs_a_cmd_width_adapter -L rsp_mux -L cmd_mux -L cmd_demux -L router_001 -L router -L average_value_inst_avs_a_agent_rsp_fifo -L average_value_inst_avs_a_agent -L mm_master_dpi_bfm_average_value_avs_a_inst_m0_agent -L average_value_inst_avs_a_translator -L mm_master_dpi_bfm_average_value_avs_a_inst_m0_translator -L average_value_internal_inst -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L split_component_start_inst -L mm_master_dpi_bfm_average_value_avs_a_inst -L main_dpi_controller_inst -L component_dpi_controller_average_value_inst -L clock_reset_inst -L average_value_inst -L average_value_component_dpi_controller_slave_done_concatenate_inst -L average_value_component_dpi_controller_bind_conduit_fanout_inst -L average_value_component_cra_slave_memories_done_concatenate_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with novopt option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h
