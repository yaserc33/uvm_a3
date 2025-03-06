
class mem_packet extends uvm_sequence_item ;


rand bit [4:0] addr;
rand bit [2:0] inst; 
rand bit [5:0] length;
rand bit [7:0] payload[];



constraint length {length == payload.size(); }
constraint invalide_inst {inst  inside  {3'b001,3'b010,3'b010,3'b100}; } 





     
     
     `uvm_object_utils_begin(mem_packet)

        `uvm_field_int(length, UVM_DEFAULT | UVM_DEC)
        `uvm_field_int(addr, UVM_DEFAULT | UVM_DEC)
        `uvm_field_int(inst, UVM_DEFAULT)
        `uvm_field_array_int(payload, UVM_DEFAULT)


     `uvm_object_utils_end




     function new (string name = "mem_packet") ;
        super.new(name);
     endfunction


    

endclass





