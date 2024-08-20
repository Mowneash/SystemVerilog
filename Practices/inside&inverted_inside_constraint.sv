class myclass;
  randc bit [2:0] a;
  randc bit [2:0] b;
  constraint addr {a inside{6,7,[1:3]};}
  constraint addr1{!( b inside{[5:7]});}
endclass


module example;
  
  myclass ob;
  
  initial begin
    ob=new;
    repeat(5) begin 
      ob.randomize();
      $display("\ta = %0d | b = %0d",ob.a,ob.b);
    end
    
    $display("-------------------------------");
    
  end
endmodule
