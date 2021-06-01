class bin2ex3_sequencer extends uvm_sequencer#(bin2ex3_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_component_utils(bin2ex3_sequencer)  
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="bin2ex3_sequencer",uvm_component parent);  
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------
  
endclass:bin2ex3_sequencer

