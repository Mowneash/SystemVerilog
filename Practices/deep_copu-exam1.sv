class myclass;
  int a;
  function copy(myclass h);
    this.a=h.a;
  endfunction
endclass

module sample;
  myclass m,n;
  initial begin 
    m=new;
    n=new;
    m.a=20;
    n.copy(m);
    $display("\t%0d  %0d",m.a,n.a);
    m.a=11;
    $display("\t%0d  %0d",m.a,n.a);
    
  end
endmodule

	// 20  20
	// 11  20
 //           V C S   S i m u l a t i o n   R e p o r t 
