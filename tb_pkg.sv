
`ifndef TB_PKG
`define TB_PKG
`include "uvm_macros.svh"
package tb_pkg;
 import uvm_pkg::*;
 `include "bin2ex3_sequence_item.sv"        // transaction class
 `include "bin2ex3_sequence.sv"             // sequence class
 `include "bin2ex3_sequencer.sv"            // sequencer class
 `include "bin2ex3_driver.sv"               // driver class
 `include "bin2ex3_monitor.sv"
 `include "bin2ex3_agent.sv"                // agent class  
 `include "bin2ex3_coverage.sv"             // coverage class
 `include "bin2ex3_scoreboard.sv"           // scoreboard class
 `include "bin2ex3_env.sv"                  // environment class

 `include "bin2ex3_test.sv"                 // test1
 //`include "test2.sv"
 //`include "test3.sv"

endpackage
`endif 


