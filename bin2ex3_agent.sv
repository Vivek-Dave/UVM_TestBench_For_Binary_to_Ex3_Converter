class bin2ex3_agent extends uvm_agent;

  //----------------------------------------------------------------------------
  `uvm_component_utils(bin2ex3_agent)
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="bin2ex3_agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------

  //----------------- class handles --------------------------------------------
  bin2ex3_sequencer sequencer_h;
  bin2ex3_driver    driver_h;
  bin2ex3_monitor   monitor_h;
  //----------------------------------------------------------------------------

  //---------------------- build phase -----------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    driver_h    = bin2ex3_driver::type_id::create("driver_h",this);
    sequencer_h = bin2ex3_sequencer::type_id::create("sequencer_h",this);
    monitor_h   = bin2ex3_monitor::type_id::create("monitor_h",this);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------- connect phase --------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    driver_h.seq_item_port.connect(sequencer_h.seq_item_export);
  endfunction
  //----------------------------------------------------------------------------

endclass:bin2ex3_agent

