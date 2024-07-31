class myclass;
  int a=3;
  function new();
    a++;
  endfunction
endclass

module sample;
  myclass o=new;
  initial begin 
    $display("%0d",o.a);
  end
endmodule

//4
