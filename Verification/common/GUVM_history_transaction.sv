class GUVM_history_transaction extends uvm_transaction;

    logic [31:0]result; // stores logic and arithmetic instructions results
    logic overflow,zero,neg=0;
    typedef struct {
        logic [31:0] data;
        logic [4:0] add;
    } reg_history;
    reg_history reg_file [];

    function void updateflags(logic [31:0]result);
        if (result == 0)
            zero = 1;
        if (result < 0)
            neg = 1;
        $display("zero_flag=%0d negative_flag=%0d",zero,neg);
    endfunction : updateflags

    function void loadreg(logic [31:0]data,logic [4:0]add);
        reg_history temp;
        int id[];
        temp.data = data;
        temp.add = add;
        foreach(reg_file[i])
        begin 
            if (reg_file[i].add == add) // if register address alreeady in regfile we overwrite the data
            begin
                reg_file[i] = temp;
                $display("--- reg_file Values are ---");
                foreach(reg_file[i])   $display("\treg_file[%0d] = %p",i, reg_file[i]);
                $display("---------------------------------");
                return;
            end
        end
        reg_file = new[reg_file.size() + 1](reg_file); // after checking that address is empty in regfile
        reg_file[reg_file.size()-1]=temp; // we make new register 
        $display("--- reg_file Values are ---");
        foreach(reg_file[i])   $display("\treg_file[%0d] = %p",i, reg_file[i]);
        $display("---------------------------------");
    endfunction : loadreg

    function logic[31:0] get_reg_data(logic [4:0]add);
        foreach(reg_file[i])
        begin
            if (reg_file[i].add == add)
                return reg_file[i].data;
        end
        `uvm_error("Histroy Fail", $sformatf("Register with address = %0b is not found in reg_file in history", add))
    endfunction

        

   function new(string name = "");
      super.new(name);
   endfunction : new


   function void do_copy(uvm_object rhs);
      GUVM_result_transaction copied_transaction_h;
      assert(rhs != null) else
        $fatal(1,"Tried to copy null transaction");
      super.do_copy(rhs);
      assert($cast(copied_transaction_h,rhs)) else
        $fatal(1,"Faied cast in do_copy");
      result = copied_transaction_h.result;
   endfunction : do_copy

   function string convert2string();
      string s;
      s = $sformatf("result: %4h",result);
      return s;
   endfunction : convert2string

   function bit do_compare(uvm_object rhs, uvm_comparer comparer);
      GUVM_result_transaction RHS;
      bit    same;
      assert(rhs != null) else
        $fatal(1,"Tried to copare null transaction");

      same = super.do_compare(rhs, comparer);

      $cast(RHS, rhs);
      same = (result == RHS.result) && same;
      return same;
   endfunction : do_compare
   
        

endclass : GUVM_history_transaction

      
        
