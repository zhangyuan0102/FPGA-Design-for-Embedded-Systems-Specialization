
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

# ACDS 16.1 196 win32 2024.08.17.11:02:56

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     Embed
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
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
# initialize variables
TOP_LEVEL_NAME="Embed"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/intelfpga_lite/16.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
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
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_rf_ram_b.mif ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/fiftyfivenm_atoms_ncrypt.v \
  $QSYS_SIMDIR/submodules/altera_trace_adc_monitor_wa.sv \
  $QSYS_SIMDIR/submodules/altera_trace_adc_monitor_wa_inst.v \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter_005_error_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001_timing_adapter_1.sv \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001_timing_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001_data_format_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_timing_adapter_1.sv \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_timing_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_data_format_adapter_0.sv \
  $QSYS_SIMDIR/submodules/altera_trace_monitor_endpoint_wrapper.sv \
  $QSYS_SIMDIR/submodules/altera_trace_adc_monitor_core.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_rsp_mux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_rsp_demux.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_cmd_mux.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_cmd_demux.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_router_001.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1_router.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter_005.v \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_avalon_st_adapter.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_mux_002.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_mux_001.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_mux.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux_009.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux_007.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux_001.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_rsp_demux.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_mux_001.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_mux.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_demux_002.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_demux_001.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_cmd_demux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_012.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_010.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_008.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_004.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_003.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_002.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router_001.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0_router.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu.vo \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_debug_slave_sysclk.v \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_debug_slave_tck.v \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_debug_slave_wrapper.v \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_mult_cell.v \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0_cpu_test_bench.v \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter_001.v \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_avalon_st_adapter.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_splitter.sv \
  $QSYS_SIMDIR/submodules/altera_modular_adc_sample_store.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_sample_store_ram.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_sequencer.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_sequencer_csr.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_sequencer_ctrl.v \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0_adc_monitor_internal.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_control.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_control_avrg_fifo.v \
  $QSYS_SIMDIR/submodules/altera_modular_adc_control_fsm.v \
  $QSYS_SIMDIR/submodules/chsel_code_converter_sw_to_hw.v \
  $QSYS_SIMDIR/submodules/fiftyfivenm_adcblock_primitive_wrapper.v \
  $QSYS_SIMDIR/submodules/fiftyfivenm_adcblock_top_wrapper.v \
  $QSYS_SIMDIR/submodules/Embed_master_0_p2b_adapter.sv \
  $QSYS_SIMDIR/submodules/Embed_master_0_b2p_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v \
  $QSYS_SIMDIR/submodules/Embed_master_0_timing_adt.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v \
  $QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v \
  $QSYS_SIMDIR/submodules/altera_jtag_sld_node.v \
  $QSYS_SIMDIR/submodules/altera_jtag_streaming.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v \
  $QSYS_SIMDIR/submodules/altera_reset_controller.v \
  $QSYS_SIMDIR/submodules/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/submodules/altera_irq_clock_crosser.sv \
  $QSYS_SIMDIR/submodules/Embed_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_1.v \
  $QSYS_SIMDIR/submodules/Embed_mm_interconnect_0.v \
  $QSYS_SIMDIR/submodules/Embed_timer_0.v \
  $QSYS_SIMDIR/submodules/Embed_sysid.v \
  $QSYS_SIMDIR/submodules/Embed_spi_0.v \
  $QSYS_SIMDIR/submodules/Embed_slide_pio.v \
  $QSYS_SIMDIR/submodules/Embed_sdram.v \
  $QSYS_SIMDIR/submodules/Embed_sdram_test_component.v \
  $QSYS_SIMDIR/submodules/Embed_onchip_ram.v \
  $QSYS_SIMDIR/submodules/altera_onchip_flash_util.v \
  $QSYS_SIMDIR/submodules/altera_onchip_flash.v \
  $QSYS_SIMDIR/submodules/altera_onchip_flash_avmm_data_controller.v \
  $QSYS_SIMDIR/submodules/altera_onchip_flash_avmm_csr_controller.v \
  $QSYS_SIMDIR/submodules/Embed_nios2_gen2_0.v \
  $QSYS_SIMDIR/submodules/Embed_modular_adc_0.v \
  $QSYS_SIMDIR/submodules/altera_avalon_mm_clock_crossing_bridge.v \
  $QSYS_SIMDIR/submodules/altera_avalon_dc_fifo.v \
  $QSYS_SIMDIR/submodules/altera_dcfifo_synchronizer_bundle.v \
  $QSYS_SIMDIR/submodules/Embed_master_0.v \
  $QSYS_SIMDIR/submodules/Embed_led_pio.v \
  $QSYS_SIMDIR/submodules/Embed_jtag_uart.v \
  $QSYS_SIMDIR/submodules/Embed_altpll_1.vo \
  $QSYS_SIMDIR/submodules/Embed_altpll_0.vo \
  $QSYS_SIMDIR/Embed.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
