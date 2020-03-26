vlog +incdir+format leon_pkg.sv
vlog leon_int.sv
vlog top.sv





vsim -permit_unmatched_virtual_intf top 
run -all

mem display top/dut/rf0/inf/u0/rfss/u0/rfd

quit
