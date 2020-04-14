
#if [file exists "work"] {vdel -all}
#vlib work
#onerror {quit}


#vlog -f riscy/dut_riscy.f

vlog +incdir+riscy+GUVM+GUVM/inst_h riscy/target_pkg.sv 
vlog riscy/riscy_interface.sv
vlog riscy/top.sv


set NoQuitOnFinish 1
onbreak {resume}

vsim -novopt top
log /* -r

run -all



quit