transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/template/vhdl/add_sub.vhd}
vcom -93 -work work {Z:/template/vhdl/comparator.vhd}
vcom -93 -work work {Z:/template/vhdl/logic_unit.vhd}
vcom -93 -work work {Z:/template/vhdl/multiplexer.vhd}
vcom -93 -work work {Z:/template/vhdl/shift_unit.vhd}

