module packed_union_example;
  union packed{
    bit [31:0]a;
    int b;
  }ex;
  initial begin
    ex.a=4'd10;
    $display("\tvalue of ex.a = %b",ex.a);
    ex.b=65;
    $display("\tvalue of ex.a = %b",ex.a);
    $display("\tvalue of ex.b = %b",ex.b);
  end
endmodule


  // value of ex.a = 00000000000000000000000000001010
	// value of ex.a = 00000000000000000000000001000001
	// value of ex.b = 00000000000000000000000001000001
  //           V C S   S i m u l a t i o n   R e p o r t 
