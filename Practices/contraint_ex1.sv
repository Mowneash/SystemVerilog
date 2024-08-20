class myclass;
  rand bit [2:0] a;
  constraint addr{a>4;}
endclass


module example;
  
  myclass ob;
  
  initial begin
    ob=new;
    repeat(5) begin 
      ob.randomize();
      $display("\ta = %0d",ob.a);
    end
  end
endmodule
