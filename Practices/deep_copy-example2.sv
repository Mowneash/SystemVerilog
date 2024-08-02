class superclass;
  int b;
endclass

class myclass;
  int a;
  superclass o=new;
  function copy(myclass h);
    this.a=h.a;
    this.o.b=h.o.b;
  endfunction
endclass

module sample;
  myclass m,n;
  initial begin 
    m=new;
    n=new;
    m.a=20;
    n.copy(m);
    n.o.b=99;
    $display("\n\t%0d  %0d %0d %0d",m.a,n.a,m.o.b,n.o.b);
    n.a=11;
    m.copy(n);
    $display("\t%0d  %0d %0d %0d\n",m.a,n.a,m.o.b,n.o.b);
    
  end
endmodule

	// 20  20
	// 11  20
 //           V C S   S i m u l a t i o n   R e p o r t 
