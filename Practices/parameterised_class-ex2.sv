class myclass #(parameter type h=int);
  h a;
endclass

module example;
  myclass #(bit [1:0])o=new;
  initial begin 
    o.a=10;
    $display("\t%0d",o.a);
  end
endmodule

	// 2
 //           V C S   S i m u l a t i o n   R e p o r t 
