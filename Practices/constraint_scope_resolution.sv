class myclass;
  rand bit [2:0] a;
  constraint addr;
endclass

constraint myclass::aadr {a>5;}

module example;
  
  myclass ob;
  
  initial begin
    ob=new;
    repeat(5) begin 
      ob.randomize();
      $display("\ta = %0d",ob.a);
    end
    
    $display("-------------------------------");
    
  end
endmodule
