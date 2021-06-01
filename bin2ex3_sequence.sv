
/***************************************************
** class name  : bin2ex3_sequence
** description : generate stimulus in continious
                 pattern 0,1,2,3,4,5....255
***************************************************/
class bin2ex3_sequence extends uvm_sequence#(bin2ex3_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_object_utils(bin2ex3_sequence)            
  //----------------------------------------------------------------------------

  bin2ex3_sequence_item txn;
  int unsigned REPEAT=1;

  //----------------------------------------------------------------------------
  function new(string name="bin2ex3_sequence");  
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  virtual task body();
    repeat(REPEAT) begin
      for(int i=0;i<256;i++) begin
        txn=bin2ex3_sequence_item::type_id::create("txn");
        start_item(txn);
        txn.randomize()with{txn.in==i;};
        #5;
        finish_item(txn);
      end
    end
  endtask:body
  //----------------------------------------------------------------------------
endclass:bin2ex3_sequence

/***************************************************
** class name  : bin2ex3_random_sequence
** description : gnerates random stimulus
***************************************************/
class bin2ex3_random_sequence extends bin2ex3_sequence;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(bin2ex3_random_sequence)      
  //----------------------------------------------------------------------------
  
  bin2ex3_sequence_item txn;
  int unsigned REPEAT=1;
  
  //----------------------------------------------------------------------------
  function new(string name="bin2ex3_random_sequence");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    repeat(REPEAT) begin
      for(int i=0;i<50;i++) begin 
        txn=bin2ex3_sequence_item::type_id::create("txn");
        start_item(txn);
        txn.randomize();
        #5;
        finish_item(txn);
      end
    end
  endtask:body
  //----------------------------------------------------------------------------
  
endclass