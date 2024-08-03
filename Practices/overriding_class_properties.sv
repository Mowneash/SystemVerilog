class parent_trans;
  bit [31:0] data = 100;
  int id = 1;
  
  function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data = 200;
  int id = 2;
  
  function void display();
    $display("\n\n\tChild: Value of data = %0d and id = %0d\n\n", data, id);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();

    c_tr.display();
  end
endmodule



	// Child: Value of data = 200 and id = 2

 //           V C S   S i m u l a t i o n   R e p o r t 

//when two classes have same properties or class methods names , child class has priority.
