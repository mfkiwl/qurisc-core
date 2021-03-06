#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : cpu_design.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Fri Aug 02 04:59:17 +0800 2019
# SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved. 
#
# usage: cpu_design.sh [-help]
# usage: cpu_design.sh [-lib_map_path]
# usage: cpu_design.sh [-noclean_files]
# usage: cpu_design.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'cpu_design.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm lib_cdc_v1_0_2 proc_sys_reset_v5_0_13 axi_bram_ctrl_v4_1_1 blk_mem_gen_v8_4_3 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_19 fifo_generator_v13_2_4 axi_data_fifo_v2_1_18 axi_crossbar_v2_1_20 axi_lite_ipif_v3_0_4 axi_intc_v4_1_13 interrupt_control_v3_1_4 axi_gpio_v2_0_21 xlconcat_v2_1_3 xbip_utils_v3_0_10 axi_utils_v2_0_6 xbip_pipe_v3_0_6 xbip_dsp48_wrapper_v3_0_4 xbip_dsp48_addsub_v3_0_6 xbip_dsp48_multadd_v3_0_6 xbip_bram18k_v3_0_6 mult_gen_v12_0_15 floating_point_v7_1_8 axi_protocol_converter_v2_1_19 axi_clock_converter_v2_1_18 axi_dwidth_converter_v2_1_19 axi_mmu_v2_1_17)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "cpu_design.sh - Script generated by export_simulation (Vivado v2019.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_rob_0_0/sim/cpu_design_rob_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_renamebuffer_0_0/sim/cpu_design_renamebuffer_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_reservestation_0_0/sim/cpu_design_reservestation_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_dispatcher_0_0/sim/cpu_design_dispatcher_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_registers_0_0/sim/cpu_design_registers_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_pc_counter_0_0/sim/cpu_design_pc_counter_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_decoder_0_0/sim/cpu_design_decoder_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_if_tlb_fetcher_0_0/sim/cpu_design_if_tlb_fetcher_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_if_memory_accessor_0_0/sim/cpu_design_if_memory_accessor_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_if_insn_queue_0_0/sim/cpu_design_if_insn_queue_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_jump_predictor_0_0/sim/cpu_design_jump_predictor_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_branch_predictor_0_1/sim/cpu_design_branch_predictor_0_1.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_if_controller_0_0/sim/cpu_design_if_controller_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_loadstoreunit_0_0/sim/cpu_design_loadstoreunit_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_clk_wiz_0_1/cpu_design_clk_wiz_0_1_clk_wiz.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_clk_wiz_0_1/cpu_design_clk_wiz_0_1.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_proc_sys_reset_0_0/sim/cpu_design_proc_sys_reset_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ipshared/421b/hdl/axi_simple_master_v1_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_axi_simple_master_0_0/sim/cpu_design_axi_simple_master_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_axi_simple_master_0_1/sim/cpu_design_axi_simple_master_0_1.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_axi_simple_master_0_2/sim/cpu_design_axi_simple_master_0_2.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_l1_cache_0_0/sim/cpu_design_l1_cache_0_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_loadstore_functionun_0_0/sim/cpu_design_loadstore_functionun_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_bram_ctrl_v4_1_1 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_axi_bram_ctrl_1_0/sim/cpu_design_axi_bram_ctrl_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_blk_mem_gen_1_0/sim/cpu_design_blk_mem_gen_1_0.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/bcc2/hdl/thinpad_sram_v1_0_S00_AXI.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/bcc2/hdl/thinpad_sram_v1_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_thinpad_sram_0_0/sim/cpu_design_thinpad_sram_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_4 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_20 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_xbar_0/sim/cpu_design_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_13 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_axi_intc_0_0/sim/cpu_design_axi_intc_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_21 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_axi_gpio_0_1/sim/cpu_design_axi_gpio_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ipshared/ea32/hdl/thinpad_serial_v1_0.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/ea32/hdl/thinpad_serial_v1_0_S_DATA_AXI.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/ea32/hdl/thinpad_serial_v1_0_S_STATUS_AXI.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_thinpad_serial_0_0/sim/cpu_design_thinpad_serial_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconcat_v2_1_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_xlconcat_0_0/sim/cpu_design_xlconcat_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xbip_utils_v3_0_10 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_utils_v2_0_6 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_multadd_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_bram18k_v3_0_6 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work mult_gen_v12_0_15 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work floating_point_v7_1_8 $vhdlan_opts \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/floating_point_v7_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/sim/floating_point_0.vhd" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_4/sim/floating_point_4.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ipshared/f520/src/SysArr.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/f520/src/SysArrProcessor.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/f520/src/arrReg.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/f520/src/arrRegArray.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/f520/src/arrStation.v" \
    "$ref_dir/../../../bd/cpu_design/ipshared/f520/src/axi_syspro.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/sim/cpu_design_thinpad_qusim_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_clock_converter_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_dwidth_converter_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_auto_ds_0/sim/cpu_design_auto_ds_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_auto_pc_0/sim/cpu_design_auto_pc_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_auto_ds_1/sim/cpu_design_auto_ds_1.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_auto_pc_1/sim/cpu_design_auto_pc_1.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_auto_pc_2/sim/cpu_design_auto_pc_2.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_auto_pc_3/sim/cpu_design_auto_pc_3.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_mmu_v2_1_17 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/b5b8/hdl/axi_mmu_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" +incdir+"$ref_dir/../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_s00_mmu_0/sim/cpu_design_s00_mmu_0.v" \
    "$ref_dir/../../../bd/cpu_design/ip/cpu_design_s01_mmu_0/sim/cpu_design_s01_mmu_0.v" \
    "$ref_dir/../../../bd/cpu_design/sim/cpu_design.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.cpu_design xil_defaultlib.glbl -o cpu_design_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./cpu_design_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./cpu_design.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key cpu_design_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc cpu_design_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./cpu_design.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: cpu_design.sh [-help]\n\
Usage: cpu_design.sh [-lib_map_path]\n\
Usage: cpu_design.sh [-reset_run]\n\
Usage: cpu_design.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
