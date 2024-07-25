module Unpacked_structure;
  struct {
    bit [1:0] a;
    int unsigned b;
    string c;
  } sample;
  
  initial begin 
    sample.a = '1;
    sample.b = '1;
    sample.c = "hi";
    
    $display("sample.a = %0p", sample);
    $display("sample.b = %0d", sample.a);
    $display("sample.b = %0d", sample.b);
    $display("sample.c = %0p", sample.c);
    #1 $finish;
  end
endmodule


// # KERNEL: sample.a = 3 4294967295 "hi"
// # KERNEL: sample.b = 3
// # KERNEL: sample.b = 4294967295
// # KERNEL: sample.c = "hi"
