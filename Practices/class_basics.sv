class myclass;
  int a,b;
  
  function int add();
    return a+b;
  endfunction
  
  task display;
    $display("");
    $display("\tA = %0d | B = %0d | A + B = %0d",a,b,add());
    $display("");
  endtask
endclass

 module class_example;
   myclass o=new();
   initial begin
     o.a=10;
     o.b=20;
     o.display;
   end
 endmodule


	// A = 10 | B = 20 | A + B = 30

 //           V C S   S i m u l a t i o n   R e p o r t 
