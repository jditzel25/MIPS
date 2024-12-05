transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/Registerfile.vhd}
vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/Reg.vhd}
vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/Mux.vhd}
vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/Datapath.vhd}
vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/Memory.vhd}
vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/ALU.vhd}
vcom -93 -work work {C:/Users/jditz/OneDrive/Desktop/Quartus/MIPS/RAM.vhd}

