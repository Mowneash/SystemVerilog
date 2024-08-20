class myclass;
  rand bit [2:0] a;
  constraint addr{a>4;}
endclass

class child extends myclass;
  constraint addr{a<4;}
endclass

module example;
  
  myclass ob;
  child o;
  
  initial begin
    ob=new;
    o=new;
    repeat(5) begin 
      ob.randomize();
      $display("\ta = %0d",ob.a);
    end
    
    $display("-------------------------------");
    
    repeat(5) begin 
      o.randomize();
      $display("\ta = %0d",o.a);
    end
  end
endmodule
