class myclass;
  int a,b;
  
  function int add();
    return a+b;
  endfunction
  
  task display;
    $display("");
    $display("\t\tA = %0d | B = %0d | A + B = %0d",a,b,add());
    $display("");
  endtask
endclass


 module class_example;
   myclass add1, add2;
   initial begin
     add1=new();
     add2=add1;
     add1.a=10;
     add1.b=20;
     add2.display;
     $display("\tvalues of a and b are sent through add2 and displayed using add1 ");
     add2.a=13;
     add2.b=9;
     add1.display;
     $display("\tAnother way of assigning");
     add1.a=16;
     add2.b=15;
     add1.display();
   end
 endmodule

	// 	A = 10 | B = 20 | A + B = 30

	// values of a and b are sent through add2 and displayed using add1 

	// 	A = 13 | B = 9 | A + B = 22

	// Another way of assigning

	// 	A = 16 | B = 15 | A + B = 31

 //           V C S   S i m u l a t i o n   R e p o r t 
