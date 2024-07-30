class myclass;
  int a,b;
  function void get(int a,int b);
    this.a=a;  // both 'a' on the left and right refer to the function parameter
    this.b=b;
  endfunction
  
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
   o.get(19,20);
   o.display;
   end
 endmodule

	// A = 19 | B = 20 | A + B = 39

 //           V C S   S i m u l a t i o n   R e p o r t 
