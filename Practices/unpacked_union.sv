module unpacked_union_example;
  union {
    bit [3:0]a;
    int b;
  }ex;
  initial begin
    ex.a=4'd10;
    $display("\tvalue of ex.a = %b",ex.a);
    ex.b=65;
    $display("\tvalue of ex.a = %0b",ex.a);
    $display("\tvalue of ex.b = %0b",ex.b);
  end
endmodule
	// value of ex.a = 1010
	// value of ex.a = 1
	// value of ex.b = 1000001
 //           V C S   S i m u l a t i o n   R e p o r t 
