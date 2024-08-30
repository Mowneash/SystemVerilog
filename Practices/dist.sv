class seq_item;
  rand bit [7:0] v1;
  rand bit [7:0] v2;

  constraint value1_c {v1 dist {0:/4, [1:3] :/ 6}; }
  constraint value2_c {v2 dist {0:=4, [1:3] := 6}; }

endclass

module constraint_example;
  seq_item m;
  int a=1,b=1,c=1,d=1,a1=1,b1=1,c1=1,d1=1;
  
  initial begin
    m = new();
    
    repeat(1000) begin
      m.randomize();
      if(m.v1==0)
        a++;
      if(m.v1==1)
        b++;
      if(m.v1==2)
        c++;
      if(m.v1==3)
        d++;
      if(m.v2==0)
        a1++;
      if(m.v2==1)
        b1++;
      if(m.v2==2)
        c1++;
      if(m.v2==3)
        d1++;
    end
    
    $display("a = %0d | b = %0d | c = %0d | d = %0d",a,b,c,d);
    $display("a1 = %0d | b1 = %0d | c1 = %0d | d1 = %0d",a1,b1,c1,d1);
  end
endmodule
