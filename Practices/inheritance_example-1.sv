class superclass;
  int a;
endclass
class subclass extends superclass;
  int b;
  function display;
    $display("\n\tvalue of a = %0d | b = %0d",a,b);
  endfunction
endclass
module example;
  subclass o=new;
  initial begin 
    o.a=9;
    o.b=8;
    o.display;
  end
endmodule 
