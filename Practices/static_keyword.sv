class myclass;
  static int a=10;
  
endclass

module sample;
  myclass o;
  initial begin 
    $display("%0d",o.a);
  end
endmodule

// static class properties can be accessed without creating an object.
// 10
//            V C S   S i m u l a t i o n   R e p o r t 
