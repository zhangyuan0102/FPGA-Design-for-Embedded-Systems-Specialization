
# (C) 2001-2024 Altera Corporation. All rights reserved.
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
#     Embed
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
# If Embed is one of several IP cores in your
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
# ACDS 16.1 196 win32 2024.08.17.11:02:56

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "Embed"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga_lite/16.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/fiftyfivenm_ver/ 
  vmap       fiftyfivenm_ver  ./libraries/fiftyfivenm_ver/ 
}
ensure_lib                                     ./libraries/altera_trace_adc_monitor_wa_inst/   
vmap       altera_trace_adc_monitor_wa_inst    ./libraries/altera_trace_adc_monitor_wa_inst/   
ensure_lib                                     ./libraries/error_adapter_0/                    
vmap       error_adapter_0                     ./libraries/error_adapter_0/                    
ensure_lib                                     ./libraries/timing_adapter_1/                   
vmap       timing_adapter_1                    ./libraries/timing_adapter_1/                   
ensure_lib                                     ./libraries/timing_adapter_0/                   
vmap       timing_adapter_0                    ./libraries/timing_adapter_0/                   
ensure_lib                                     ./libraries/data_format_adapter_0/              
vmap       data_format_adapter_0               ./libraries/data_format_adapter_0/              
ensure_lib                                     ./libraries/trace_endpoint/                     
vmap       trace_endpoint                      ./libraries/trace_endpoint/                     
ensure_lib                                     ./libraries/core/                               
vmap       core                                ./libraries/core/                               
ensure_lib                                     ./libraries/rsp_mux/                            
vmap       rsp_mux                             ./libraries/rsp_mux/                            
ensure_lib                                     ./libraries/rsp_demux/                          
vmap       rsp_demux                           ./libraries/rsp_demux/                          
ensure_lib                                     ./libraries/cmd_mux/                            
vmap       cmd_mux                             ./libraries/cmd_mux/                            
ensure_lib                                     ./libraries/cmd_demux/                          
vmap       cmd_demux                           ./libraries/cmd_demux/                          
ensure_lib                                     ./libraries/router_001/                         
vmap       router_001                          ./libraries/router_001/                         
ensure_lib                                     ./libraries/router/                             
vmap       router                              ./libraries/router/                             
ensure_lib                                     ./libraries/avalon_st_adapter_005/              
vmap       avalon_st_adapter_005               ./libraries/avalon_st_adapter_005/              
ensure_lib                                     ./libraries/avalon_st_adapter/                  
vmap       avalon_st_adapter                   ./libraries/avalon_st_adapter/                  
ensure_lib                                     ./libraries/crosser/                            
vmap       crosser                             ./libraries/crosser/                            
ensure_lib                                     ./libraries/sdram_s1_rsp_width_adapter/         
vmap       sdram_s1_rsp_width_adapter          ./libraries/sdram_s1_rsp_width_adapter/         
ensure_lib                                     ./libraries/rsp_mux_002/                        
vmap       rsp_mux_002                         ./libraries/rsp_mux_002/                        
ensure_lib                                     ./libraries/rsp_mux_001/                        
vmap       rsp_mux_001                         ./libraries/rsp_mux_001/                        
ensure_lib                                     ./libraries/rsp_demux_009/                      
vmap       rsp_demux_009                       ./libraries/rsp_demux_009/                      
ensure_lib                                     ./libraries/rsp_demux_007/                      
vmap       rsp_demux_007                       ./libraries/rsp_demux_007/                      
ensure_lib                                     ./libraries/rsp_demux_001/                      
vmap       rsp_demux_001                       ./libraries/rsp_demux_001/                      
ensure_lib                                     ./libraries/cmd_mux_001/                        
vmap       cmd_mux_001                         ./libraries/cmd_mux_001/                        
ensure_lib                                     ./libraries/cmd_demux_002/                      
vmap       cmd_demux_002                       ./libraries/cmd_demux_002/                      
ensure_lib                                     ./libraries/cmd_demux_001/                      
vmap       cmd_demux_001                       ./libraries/cmd_demux_001/                      
ensure_lib                                     ./libraries/sdram_s1_burst_adapter/             
vmap       sdram_s1_burst_adapter              ./libraries/sdram_s1_burst_adapter/             
ensure_lib                                     ./libraries/nios2_gen2_0_data_master_limiter/   
vmap       nios2_gen2_0_data_master_limiter    ./libraries/nios2_gen2_0_data_master_limiter/   
ensure_lib                                     ./libraries/router_012/                         
vmap       router_012                          ./libraries/router_012/                         
ensure_lib                                     ./libraries/router_010/                         
vmap       router_010                          ./libraries/router_010/                         
ensure_lib                                     ./libraries/router_008/                         
vmap       router_008                          ./libraries/router_008/                         
ensure_lib                                     ./libraries/router_004/                         
vmap       router_004                          ./libraries/router_004/                         
ensure_lib                                     ./libraries/router_003/                         
vmap       router_003                          ./libraries/router_003/                         
ensure_lib                                     ./libraries/router_002/                         
vmap       router_002                          ./libraries/router_002/                         
ensure_lib                                     ./libraries/onchip_flash_0_csr_agent/           
vmap       onchip_flash_0_csr_agent            ./libraries/onchip_flash_0_csr_agent/           
ensure_lib                                     ./libraries/nios2_gen2_0_data_master_agent/     
vmap       nios2_gen2_0_data_master_agent      ./libraries/nios2_gen2_0_data_master_agent/     
ensure_lib                                     ./libraries/onchip_flash_0_csr_translator/      
vmap       onchip_flash_0_csr_translator       ./libraries/onchip_flash_0_csr_translator/      
ensure_lib                                     ./libraries/nios2_gen2_0_data_master_translator/
vmap       nios2_gen2_0_data_master_translator ./libraries/nios2_gen2_0_data_master_translator/
ensure_lib                                     ./libraries/cpu/                                
vmap       cpu                                 ./libraries/cpu/                                
ensure_lib                                     ./libraries/avalon_st_adapter_001/              
vmap       avalon_st_adapter_001               ./libraries/avalon_st_adapter_001/              
ensure_lib                                     ./libraries/st_splitter_internal/               
vmap       st_splitter_internal                ./libraries/st_splitter_internal/               
ensure_lib                                     ./libraries/sample_store_internal/              
vmap       sample_store_internal               ./libraries/sample_store_internal/              
ensure_lib                                     ./libraries/sequencer_internal/                 
vmap       sequencer_internal                  ./libraries/sequencer_internal/                 
ensure_lib                                     ./libraries/adc_monitor_internal/               
vmap       adc_monitor_internal                ./libraries/adc_monitor_internal/               
ensure_lib                                     ./libraries/control_internal/                   
vmap       control_internal                    ./libraries/control_internal/                   
ensure_lib                                     ./libraries/p2b_adapter/                        
vmap       p2b_adapter                         ./libraries/p2b_adapter/                        
ensure_lib                                     ./libraries/b2p_adapter/                        
vmap       b2p_adapter                         ./libraries/b2p_adapter/                        
ensure_lib                                     ./libraries/transacto/                          
vmap       transacto                           ./libraries/transacto/                          
ensure_lib                                     ./libraries/p2b/                                
vmap       p2b                                 ./libraries/p2b/                                
ensure_lib                                     ./libraries/b2p/                                
vmap       b2p                                 ./libraries/b2p/                                
ensure_lib                                     ./libraries/fifo/                               
vmap       fifo                                ./libraries/fifo/                               
ensure_lib                                     ./libraries/timing_adt/                         
vmap       timing_adt                          ./libraries/timing_adt/                         
ensure_lib                                     ./libraries/jtag_phy_embedded_in_jtag_master/   
vmap       jtag_phy_embedded_in_jtag_master    ./libraries/jtag_phy_embedded_in_jtag_master/   
ensure_lib                                     ./libraries/rst_controller/                     
vmap       rst_controller                      ./libraries/rst_controller/                     
ensure_lib                                     ./libraries/irq_synchronizer/                   
vmap       irq_synchronizer                    ./libraries/irq_synchronizer/                   
ensure_lib                                     ./libraries/irq_mapper/                         
vmap       irq_mapper                          ./libraries/irq_mapper/                         
ensure_lib                                     ./libraries/mm_interconnect_1/                  
vmap       mm_interconnect_1                   ./libraries/mm_interconnect_1/                  
ensure_lib                                     ./libraries/mm_interconnect_0/                  
vmap       mm_interconnect_0                   ./libraries/mm_interconnect_0/                  
ensure_lib                                     ./libraries/timer_0/                            
vmap       timer_0                             ./libraries/timer_0/                            
ensure_lib                                     ./libraries/sysid/                              
vmap       sysid                               ./libraries/sysid/                              
ensure_lib                                     ./libraries/spi_0/                              
vmap       spi_0                               ./libraries/spi_0/                              
ensure_lib                                     ./libraries/slide_pio/                          
vmap       slide_pio                           ./libraries/slide_pio/                          
ensure_lib                                     ./libraries/sdram/                              
vmap       sdram                               ./libraries/sdram/                              
ensure_lib                                     ./libraries/onchip_ram/                         
vmap       onchip_ram                          ./libraries/onchip_ram/                         
ensure_lib                                     ./libraries/onchip_flash_0/                     
vmap       onchip_flash_0                      ./libraries/onchip_flash_0/                     
ensure_lib                                     ./libraries/nios2_gen2_0/                       
vmap       nios2_gen2_0                        ./libraries/nios2_gen2_0/                       
ensure_lib                                     ./libraries/modular_adc_0/                      
vmap       modular_adc_0                       ./libraries/modular_adc_0/                      
ensure_lib                                     ./libraries/mm_clock_crossing_bridge_0/         
vmap       mm_clock_crossing_bridge_0          ./libraries/mm_clock_crossing_bridge_0/         
ensure_lib                                     ./libraries/master_0/                           
vmap       master_0                            ./libraries/master_0/                           
ensure_lib                                     ./libraries/led_pio/                            
vmap       led_pio                             ./libraries/led_pio/                            
ensure_lib                                     ./libraries/jtag_uart/                          
vmap       jtag_uart                           ./libraries/jtag_uart/                          
ensure_lib                                     ./libraries/altpll_1/                           
vmap       altpll_1                            ./libraries/altpll_1/                           
ensure_lib                                     ./libraries/altpll_0/                           
vmap       altpll_0                            ./libraries/altpll_0/                           

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"               -work altera_ver      
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                        -work lpm_ver         
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                           -work sgate_ver       
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                       -work altera_mf_ver   
    eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                   -work altera_lnsim_ver
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.v"               -work fiftyfivenm_ver 
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v" -work fiftyfivenm_ver 
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_trace_adc_monitor_wa.sv"                                     -work altera_trace_adc_monitor_wa_inst   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_trace_adc_monitor_wa_inst.v"                                 -work altera_trace_adc_monitor_wa_inst   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter_005_error_adapter_0.sv"   -work error_adapter_0                    
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"       -work error_adapter_0                    
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001_timing_adapter_1.sv"      -work timing_adapter_1                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001_timing_adapter_0.sv"      -work timing_adapter_0                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001_data_format_adapter_0.sv" -work data_format_adapter_0              
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_timing_adapter_1.sv"          -work timing_adapter_1                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_timing_adapter_0.sv"          -work timing_adapter_0                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_data_format_adapter_0.sv"     -work data_format_adapter_0              
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_trace_monitor_endpoint_wrapper.sv"                           -work trace_endpoint                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_trace_adc_monitor_core.sv"                                   -work core                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_rsp_mux.sv"                                 -work rsp_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work rsp_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_rsp_demux.sv"                               -work rsp_demux                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_cmd_mux.sv"                                 -work cmd_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work cmd_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_cmd_demux.sv"                               -work cmd_demux                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_router_001.sv"                              -work router_001                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_router.sv"                                  -work router                             
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter_005.v"                    -work avalon_st_adapter_005              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter.v"                        -work avalon_st_adapter                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v"                         -work crosser                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                   -work crosser                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work crosser                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                    -work crosser                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                     -work sdram_s1_rsp_width_adapter         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                 -work sdram_s1_rsp_width_adapter         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work sdram_s1_rsp_width_adapter         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_mux_002.sv"                             -work rsp_mux_002                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work rsp_mux_002                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_mux_001.sv"                             -work rsp_mux_001                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work rsp_mux_001                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_mux.sv"                                 -work rsp_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work rsp_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux_009.sv"                           -work rsp_demux_009                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux_007.sv"                           -work rsp_demux_007                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux_001.sv"                           -work rsp_demux_001                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux.sv"                               -work rsp_demux                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_mux_001.sv"                             -work cmd_mux_001                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work cmd_mux_001                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_mux.sv"                                 -work cmd_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                        -work cmd_mux                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_demux_002.sv"                           -work cmd_demux_002                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_demux_001.sv"                           -work cmd_demux_001                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_demux.sv"                               -work cmd_demux                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                     -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                              -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                 -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                     -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                     -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                  -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                 -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                 -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work sdram_s1_burst_adapter             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                   -work nios2_gen2_0_data_master_limiter   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                    -work nios2_gen2_0_data_master_limiter   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                            -work nios2_gen2_0_data_master_limiter   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work nios2_gen2_0_data_master_limiter   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_012.sv"                              -work router_012                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_010.sv"                              -work router_010                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_008.sv"                              -work router_008                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_004.sv"                              -work router_004                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_003.sv"                              -work router_003                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_002.sv"                              -work router_002                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_001.sv"                              -work router_001                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router.sv"                                  -work router                             
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                       -work onchip_flash_0_csr_agent           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                -work onchip_flash_0_csr_agent           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                      -work nios2_gen2_0_data_master_agent     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                  -work onchip_flash_0_csr_translator      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                 -work nios2_gen2_0_data_master_translator
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu.vo"                                          -work cpu                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_debug_slave_sysclk.v"                        -work cpu                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_debug_slave_tck.v"                           -work cpu                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_debug_slave_wrapper.v"                       -work cpu                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_mult_cell.v"                                 -work cpu                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_test_bench.v"                                -work cpu                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001.v"                        -work avalon_st_adapter_001              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter.v"                            -work avalon_st_adapter                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_splitter.sv"                                       -work st_splitter_internal               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_sample_store.v"                                  -work sample_store_internal              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_sample_store_ram.v"                              -work sample_store_internal              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_sequencer.v"                                     -work sequencer_internal                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_sequencer_csr.v"                                 -work sequencer_internal                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_sequencer_ctrl.v"                                -work sequencer_internal                 
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_modular_adc_0_adc_monitor_internal.v"                         -work adc_monitor_internal               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_control.v"                                       -work control_internal                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_control_avrg_fifo.v"                             -work control_internal                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_modular_adc_control_fsm.v"                                   -work control_internal                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/chsel_code_converter_sw_to_hw.v"                                    -work control_internal                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/fiftyfivenm_adcblock_primitive_wrapper.v"                           -work control_internal                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/fiftyfivenm_adcblock_top_wrapper.v"                                 -work control_internal                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_master_0_p2b_adapter.sv"                                      -work p2b_adapter                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_master_0_b2p_adapter.sv"                                      -work b2p_adapter                        
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                                  -work transacto                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                                -work p2b                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                                -work b2p                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                            -work fifo                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_master_0_timing_adt.sv"                                       -work timing_adt                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                                  -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                         -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                             -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                            -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                   -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                    -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                   -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                    -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                   -work jtag_phy_embedded_in_jtag_master   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                 -work jtag_phy_embedded_in_jtag_master   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                          -work rst_controller                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                        -work rst_controller                     
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_irq_clock_crosser.sv"                                        -work irq_synchronizer                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/Embed_irq_mapper.sv"                                                -work irq_mapper                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_1.v"                                          -work mm_interconnect_1                  
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_mm_interconnect_0.v"                                          -work mm_interconnect_0                  
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_timer_0.v"                                                    -work timer_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_sysid.v"                                                      -work sysid                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_spi_0.v"                                                      -work spi_0                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_slide_pio.v"                                                  -work slide_pio                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_sdram.v"                                                      -work sdram                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_sdram_test_component.v"                                       -work sdram                              
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_onchip_ram.v"                                                 -work onchip_ram                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_onchip_flash_util.v"                                         -work onchip_flash_0                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_onchip_flash.v"                                              -work onchip_flash_0                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_onchip_flash_avmm_data_controller.v"                         -work onchip_flash_0                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_onchip_flash_avmm_csr_controller.v"                          -work onchip_flash_0                     
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_nios2_gen2_0.v"                                               -work nios2_gen2_0                       
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_modular_adc_0.v"                                              -work modular_adc_0                      
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_mm_clock_crossing_bridge.v"                           -work mm_clock_crossing_bridge_0         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_dc_fifo.v"                                            -work mm_clock_crossing_bridge_0         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_dcfifo_synchronizer_bundle.v"                                -work mm_clock_crossing_bridge_0         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                    -work mm_clock_crossing_bridge_0         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_master_0.v"                                                   -work master_0                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_led_pio.v"                                                    -work led_pio                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_jtag_uart.v"                                                  -work jtag_uart                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_altpll_1.vo"                                                  -work altpll_1                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/Embed_altpll_0.vo"                                                  -work altpll_0                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/Embed.v"                                                                                                                
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_trace_adc_monitor_wa_inst -L error_adapter_0 -L timing_adapter_1 -L timing_adapter_0 -L data_format_adapter_0 -L trace_endpoint -L core -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_001 -L router -L avalon_st_adapter_005 -L avalon_st_adapter -L crosser -L sdram_s1_rsp_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_demux_009 -L rsp_demux_007 -L rsp_demux_001 -L cmd_mux_001 -L cmd_demux_002 -L cmd_demux_001 -L sdram_s1_burst_adapter -L nios2_gen2_0_data_master_limiter -L router_012 -L router_010 -L router_008 -L router_004 -L router_003 -L router_002 -L onchip_flash_0_csr_agent -L nios2_gen2_0_data_master_agent -L onchip_flash_0_csr_translator -L nios2_gen2_0_data_master_translator -L cpu -L avalon_st_adapter_001 -L st_splitter_internal -L sample_store_internal -L sequencer_internal -L adc_monitor_internal -L control_internal -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L rst_controller -L irq_synchronizer -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L timer_0 -L sysid -L spi_0 -L slide_pio -L sdram -L onchip_ram -L onchip_flash_0 -L nios2_gen2_0 -L modular_adc_0 -L mm_clock_crossing_bridge_0 -L master_0 -L led_pio -L jtag_uart -L altpll_1 -L altpll_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_trace_adc_monitor_wa_inst -L error_adapter_0 -L timing_adapter_1 -L timing_adapter_0 -L data_format_adapter_0 -L trace_endpoint -L core -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L router_001 -L router -L avalon_st_adapter_005 -L avalon_st_adapter -L crosser -L sdram_s1_rsp_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_demux_009 -L rsp_demux_007 -L rsp_demux_001 -L cmd_mux_001 -L cmd_demux_002 -L cmd_demux_001 -L sdram_s1_burst_adapter -L nios2_gen2_0_data_master_limiter -L router_012 -L router_010 -L router_008 -L router_004 -L router_003 -L router_002 -L onchip_flash_0_csr_agent -L nios2_gen2_0_data_master_agent -L onchip_flash_0_csr_translator -L nios2_gen2_0_data_master_translator -L cpu -L avalon_st_adapter_001 -L st_splitter_internal -L sample_store_internal -L sequencer_internal -L adc_monitor_internal -L control_internal -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L rst_controller -L irq_synchronizer -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L timer_0 -L sysid -L spi_0 -L slide_pio -L sdram -L onchip_ram -L onchip_flash_0 -L nios2_gen2_0 -L modular_adc_0 -L mm_clock_crossing_bridge_0 -L master_0 -L led_pio -L jtag_uart -L altpll_1 -L altpll_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver $TOP_LEVEL_NAME
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
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
