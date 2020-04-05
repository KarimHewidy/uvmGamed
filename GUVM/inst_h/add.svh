function void verify_add(bit [31:0]hc,bit [31:0] i1,bit [31:0] i2);
    bit [31:0] h1; 
	h1 = i1 + i2 ;
	if((h1) == (hc))
	begin
        `uvm_info ("ADDITION_PASS", $sformatf("Actual Calculation=%d Expected Calculation=%d ", hc, h1), UVM_LOW)
	end
	else
	begin
		`uvm_error("ADDITION_FAIL", $sformatf("Actual Calculation=%d Expected Calculation=%d ", hc, h1))
	end
endfunction