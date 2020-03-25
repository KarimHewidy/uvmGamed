class GUVM_agent extends uvm_agent;
  `uvm_component_utils(GUVM_agent)
    
    GUVM_driver driver_h;
  	uvm_sequencer#(GUVM_sequence_item) sequencer;
    
    function new(string name, uvm_component parent);
      	super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
      	driver_h = GUVM_driver::type_id::create("driver_h", this);
      	sequencer = uvm_sequencer#(GUVM_sequence_item)::type_id::create("sequencer", this);
    endfunction    
    
    // In UVM connect phase, we connect the sequencer to the driver.
    function void connect_phase(uvm_phase phase);
      	driver_h.seq_item_port.connect(sequencer.seq_item_export);
    endfunction      

endclass