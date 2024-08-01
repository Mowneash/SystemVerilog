class class1 #(int size=8);
  bit[size-1:0] var1;
endclass

module example;
  class1 #(3) m=new;
  initial begin
    m.var1=15;
    $display("\t%0d",m.var1);
  end
endmodule

	// 7
 //           V C S   S i m u l a t i o n   R e p o r t 
