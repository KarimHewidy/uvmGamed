if [file exists "work"] {vdel -all}
vlib work

vcom -f DUT_LEON.f 
vlog -f DUT_riscy.f

vlog -f GUVM_tb.f 

vsim top 
run -all
quit
