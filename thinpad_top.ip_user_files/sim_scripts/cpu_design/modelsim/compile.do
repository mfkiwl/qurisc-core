vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_1
vlib modelsim_lib/msim/blk_mem_gen_v8_4_3
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_13
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_21
vlib modelsim_lib/msim/xlconcat_v2_1_3
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_15
vlib modelsim_lib/msim/floating_point_v7_1_8
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19
vlib modelsim_lib/msim/axi_clock_converter_v2_1_18
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_19
vlib modelsim_lib/msim/axi_mmu_v2_1_17

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_1 modelsim_lib/msim/axi_bram_ctrl_v4_1_1
vmap blk_mem_gen_v8_4_3 modelsim_lib/msim/blk_mem_gen_v8_4_3
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_13 modelsim_lib/msim/axi_intc_v4_1_13
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 modelsim_lib/msim/axi_gpio_v2_0_21
vmap xlconcat_v2_1_3 modelsim_lib/msim/xlconcat_v2_1_3
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 modelsim_lib/msim/mult_gen_v12_0_15
vmap floating_point_v7_1_8 modelsim_lib/msim/floating_point_v7_1_8
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19
vmap axi_clock_converter_v2_1_18 modelsim_lib/msim/axi_clock_converter_v2_1_18
vmap axi_dwidth_converter_v2_1_19 modelsim_lib/msim/axi_dwidth_converter_v2_1_19
vmap axi_mmu_v2_1_17 modelsim_lib/msim/axi_mmu_v2_1_17

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ip/cpu_design_rob_0_0/sim/cpu_design_rob_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_renamebuffer_0_0/sim/cpu_design_renamebuffer_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_reservestation_0_0/sim/cpu_design_reservestation_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_dispatcher_0_0/sim/cpu_design_dispatcher_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_registers_0_0/sim/cpu_design_registers_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_pc_counter_0_0/sim/cpu_design_pc_counter_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_decoder_0_0/sim/cpu_design_decoder_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_if_tlb_fetcher_0_0/sim/cpu_design_if_tlb_fetcher_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_if_memory_accessor_0_0/sim/cpu_design_if_memory_accessor_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_if_insn_queue_0_0/sim/cpu_design_if_insn_queue_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_jump_predictor_0_0/sim/cpu_design_jump_predictor_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_branch_predictor_0_1/sim/cpu_design_branch_predictor_0_1.v" \
"../../../bd/cpu_design/ip/cpu_design_if_controller_0_0/sim/cpu_design_if_controller_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_loadstoreunit_0_0/sim/cpu_design_loadstoreunit_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_clk_wiz_0_1/cpu_design_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/cpu_design/ip/cpu_design_clk_wiz_0_1/cpu_design_clk_wiz_0_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cpu_design/ip/cpu_design_proc_sys_reset_0_0/sim/cpu_design_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ipshared/421b/hdl/axi_simple_master_v1_0.v" \
"../../../bd/cpu_design/ip/cpu_design_axi_simple_master_0_0/sim/cpu_design_axi_simple_master_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_axi_simple_master_0_1/sim/cpu_design_axi_simple_master_0_1.v" \
"../../../bd/cpu_design/ip/cpu_design_axi_simple_master_0_2/sim/cpu_design_axi_simple_master_0_2.v" \
"../../../bd/cpu_design/ip/cpu_design_l1_cache_0_0/sim/cpu_design_l1_cache_0_0.v" \
"../../../bd/cpu_design/ip/cpu_design_loadstore_functionun_0_0/sim/cpu_design_loadstore_functionun_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_1 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cpu_design/ip/cpu_design_axi_bram_ctrl_1_0/sim/cpu_design_axi_bram_ctrl_1_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ip/cpu_design_blk_mem_gen_1_0/sim/cpu_design_blk_mem_gen_1_0.v" \
"../../../bd/cpu_design/ipshared/bcc2/hdl/thinpad_sram_v1_0_S00_AXI.v" \
"../../../bd/cpu_design/ipshared/bcc2/hdl/thinpad_sram_v1_0.v" \
"../../../bd/cpu_design/ip/cpu_design_thinpad_sram_0_0/sim/cpu_design_thinpad_sram_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ip/cpu_design_xbar_0/sim/cpu_design_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_13 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cpu_design/ip/cpu_design_axi_intc_0_0/sim/cpu_design_axi_intc_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cpu_design/ip/cpu_design_axi_gpio_0_1/sim/cpu_design_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ipshared/ea32/hdl/thinpad_serial_v1_0.v" \
"../../../bd/cpu_design/ipshared/ea32/hdl/thinpad_serial_v1_0_S_DATA_AXI.v" \
"../../../bd/cpu_design/ipshared/ea32/hdl/thinpad_serial_v1_0_S_STATUS_AXI.v" \
"../../../bd/cpu_design/ip/cpu_design_thinpad_serial_0_0/sim/cpu_design_thinpad_serial_0_0.v" \

vlog -work xlconcat_v2_1_3 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ip/cpu_design_xlconcat_0_0/sim/cpu_design_xlconcat_0_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_0/sim/floating_point_0.vhd" \
"../../../bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/src/floating_point_4/sim/floating_point_4.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ipshared/f520/src/SysArr.v" \
"../../../bd/cpu_design/ipshared/f520/src/SysArrProcessor.v" \
"../../../bd/cpu_design/ipshared/f520/src/arrReg.v" \
"../../../bd/cpu_design/ipshared/f520/src/arrRegArray.v" \
"../../../bd/cpu_design/ipshared/f520/src/arrStation.v" \
"../../../bd/cpu_design/ipshared/f520/src/axi_syspro.v" \
"../../../bd/cpu_design/ip/cpu_design_thinpad_qusim_0_0/sim/cpu_design_thinpad_qusim_0_0.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_18 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_19 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/e578/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ip/cpu_design_auto_ds_0/sim/cpu_design_auto_ds_0.v" \
"../../../bd/cpu_design/ip/cpu_design_auto_pc_0/sim/cpu_design_auto_pc_0.v" \
"../../../bd/cpu_design/ip/cpu_design_auto_ds_1/sim/cpu_design_auto_ds_1.v" \
"../../../bd/cpu_design/ip/cpu_design_auto_pc_1/sim/cpu_design_auto_pc_1.v" \
"../../../bd/cpu_design/ip/cpu_design_auto_pc_2/sim/cpu_design_auto_pc_2.v" \
"../../../bd/cpu_design/ip/cpu_design_auto_pc_3/sim/cpu_design_auto_pc_3.v" \

vlog -work axi_mmu_v2_1_17 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/b5b8/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/c923" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/cpu_design/ipshared/ec67/hdl" \
"../../../bd/cpu_design/ip/cpu_design_s00_mmu_0/sim/cpu_design_s00_mmu_0.v" \
"../../../bd/cpu_design/ip/cpu_design_s01_mmu_0/sim/cpu_design_s01_mmu_0.v" \
"../../../bd/cpu_design/sim/cpu_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

