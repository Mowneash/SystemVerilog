class scope_resoluation;
  static int a;
endclass

module example;
  initial begin
  	sample::a=10;
    $display("%0d",sample::a);
  end
endmodule
