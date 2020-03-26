`timescale 10ns/1ns
`include "uvm_macros.svh"
`include "GUVM_testbench_pkg.sv"
`include "leon_pkg"
`include "riscy_pkg"
`include "amber_pkg"
 
module top;
  	import uvm_pkg::*;
  	import GUVM_testbench_pkg::*;
	import leon_pkg::*;
	import riscy_pkg::*;
	import amber_pkg::*;
  
  	bit clk;
  
  	//clock generation
  	always #10 clk = ~clk;
  
  	initial begin
    	clk = 0;
  	end

  	// Instantiate the interface
  	GUVM_interface processor_if(clk);
	// Instantiate dut
  	Main_Processor dut(
		.inst_in(processor_if.inst_in),
		.clk(processor_if.clk),
		.pc_out(processor_if.pc),
		.inst_out_tb(processor_if.inst_out),
		.wD_rf(processor_if.reg_data),
		.w_en(processor_if.reg_en),
		.aD_rf(processor_if.reg_add),
		.mem_data_tb(processor_if.mem_data),
		.mem_en_tb(processor_if.mem_en),
		.mem_add_tb(processor_if.mem_add) 
	);  
  
  	initial begin
	   // Place the interface into the UVM configuration database
		fill_si_array( );
   	uvm_config_db#(virtual GUVM_interface)::set(null, "*", "processor_vif", processor_if);
    	// Start the test
    	run_test();
  	end

  	initial begin
    	$vcdpluson();
  	end

endmodule