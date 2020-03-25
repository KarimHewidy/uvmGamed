/*
   Copyright 2013 Ray Salemi

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
package tb_pkg;
   import uvm_pkg::*;
   `include "uvm_macros.svh"
   //declarations
   typedef enum logic [31:0] { 
      LSB=32'b11xxxxx001001xxxxx1xxxxxxxxxxxxx,
      LUW=32'b0000000100xxxxxxxxxxxxxxxxxxxxxx     // (NOP)
      }opcode;
  opcode si_a [] ; 
  integer supported_instructions ; 

   //includes 
   `include "cmd_sequence_item.sv"
   //`include "leon_sequence_item.sv"
   `include "generic_sequence.sv"
   //`include "mips_package.sv"
   `include "driver.sv"
   `include "test.sv"
   

  function void fill_si_array( );// fill supported instruction array 
      // this does NOT  affect generalism this makes sure you dont run 
      // the same function twice in a test bench 
      `ifndef SET_UP_INSTRUCTION_ARRAY
      `define SET_UP_INSTRUCTION_ARRAY
          opcode si_i ; // for iteration only
          supported_instructions = si_i.num() ;
          si_a=new [supported_instructions] ; 
          
          si_i = si_i.first();
          for (integer i=0 ; i < supported_instructions ; i++ )
          begin   
              si_a [i]= si_i ; 
              si_i=si_i.next();
              
          end 
          //$display("array is filled and ready to use");
      `endif  
  endfunction

endpackage : tb_pkg
   