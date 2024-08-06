module example;
  int a,b,c,d,e;
  initial begin
    a=$urandom();
    b=$random();
    c=$urandom_range(1,6);
    d=$urandom(1);
    e=$random(1);
      $display("value of a = %0d",a);
      $display("value of b = %0d",b);
      $display("value of c = %0d",c);
    repeat(2) begin
      $display("value of d = %0d",d);
      $display("value of e = %0d",e);
  end end 
endmodule
/*
value of a = 98710838
value of b = 303379748
value of c = 3
value of d = 802792108
value of e = -2147414528
value of d = 802792108
value of e = -2147414528
           V C S   S i m u l a t i o n   R e p o r t */
