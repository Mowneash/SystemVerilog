class myclass;
  rand int a,b;
  
  function void pre_randomize();
    
    a=100;b=200;
    $display(" value of a = %0d and b = %0d,a,b);
  endfunction
  
  
  function void post_randomize();
    $display(" value of a = %0d and b = %0d",a,b);
  endfunction
endclass

module example;
  myclass ob;
  initial begin
    ob=new;
    ob.randomize();
  end
endmodule
