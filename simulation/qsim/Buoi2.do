onerror {quit -f}
vlib work
vlog -work work Buoi2.vo
vlog -work work Buoi2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Datatpath_vlg_vec_tst
vcd file -direction Buoi2.msim.vcd
vcd add -internal Datatpath_vlg_vec_tst/*
vcd add -internal Datatpath_vlg_vec_tst/i1/*
add wave /*
run -all
