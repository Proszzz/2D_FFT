onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dual_port_ram -L xilinx_vip -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_2 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dual_port_ram xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dual_port_ram.udo}

run -all

endsim

quit -force
