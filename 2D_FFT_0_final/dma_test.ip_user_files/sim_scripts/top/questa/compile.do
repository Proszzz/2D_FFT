vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_4
vlib questa_lib/msim/processing_system7_vip_v1_0_6
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/lib_fifo_v1_0_12
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_20
vlib questa_lib/msim/axi_sg_v4_1_11
vlib questa_lib/msim/axi_dma_v7_1_19
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_data_fifo_v2_0_0
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/gigantic_mux
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_crossbar_v2_1_19
vlib questa_lib/msim/axi_protocol_converter_v2_1_18
vlib questa_lib/msim/axi_clock_converter_v2_1_17
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/axi_dwidth_converter_v2_1_18

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 questa_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 questa_lib/msim/processing_system7_vip_v1_0_6
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 questa_lib/msim/lib_fifo_v1_0_12
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_20 questa_lib/msim/axi_datamover_v5_1_20
vmap axi_sg_v4_1_11 questa_lib/msim/axi_sg_v4_1_11
vmap axi_dma_v7_1_19 questa_lib/msim/axi_dma_v7_1_19
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_0 questa_lib/msim/axis_data_fifo_v2_0_0
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap gigantic_mux questa_lib/msim/gigantic_mux
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 questa_lib/msim/axi_crossbar_v2_1_19
vmap axi_protocol_converter_v2_1_18 questa_lib/msim/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 questa_lib/msim/axi_clock_converter_v2_1_17
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap axi_dwidth_converter_v2_1_18 questa_lib/msim/axi_dwidth_converter_v2_1_18

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_processing_system7_0_0/sim/top_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_11 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_19 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_axi_dma_0_0/sim/top_axi_dma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_0 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/4efd/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_axis_data_fifo_0_0/sim/top_axis_data_fifo_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_xlconcat_0_0/sim/top_xlconcat_0_0.v" \
"../../../bd/top/ip/top_xlconcat_0_0/top_xlconcat_0_0_sim_netlist.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_xlconcat_0_0/top_xlconcat_0_0_sim_netlist.vhdl" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_rst_clk_wiz_100M_0/sim/top_rst_clk_wiz_100M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_system_ila_0_1/bd_0/ip/ip_0/sim/bd_c657_ila_lib_0.v" \

vlog -work gigantic_mux -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_system_ila_0_1/bd_0/ip/ip_1/bd_c657_g_inst_0_gigantic_mux.v" \
"../../../bd/top/ip/top_system_ila_0_1/bd_0/ip/ip_1/sim/bd_c657_g_inst_0.v" \
"../../../bd/top/ip/top_system_ila_0_1/bd_0/sim/bd_c657.v" \
"../../../bd/top/ip/top_system_ila_0_1/sim/top_system_ila_0_1.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_xbar_0/sim/top_xbar_0.v" \
"../../../bd/top/sim/top.v" \
"../../../bd/top/ip/top_axis_data_fifo_0_1/sim/top_axis_data_fifo_0_1.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_18 -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_test.srcs/sources_1/bd/top/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/ec67/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/70cf/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/8713/hdl" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ip/top_processing_system7_0_0" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/7d3c/hdl/verilog" "+incdir+../../../../dma_test.srcs/sources_1/bd/top/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/top/ip/top_auto_us_0/sim/top_auto_us_0.v" \
"../../../bd/top/ip/top_auto_us_1/sim/top_auto_us_1.v" \
"../../../bd/top/ip/top_auto_pc_0/sim/top_auto_pc_0.v" \
"../../../bd/top/ip/top_auto_pc_1/sim/top_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

