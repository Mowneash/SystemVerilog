module packed_structure;
  struct packed{
    bit [1:0] a;
    int unsigned b;
    byte c;
  } sample;
  
  initial begin 
    sample='1;
    
    $display("sample = %0p", sample);
    $display("sample.a = %0d", sample.a);
    $display("sample.b = %0d", sample.b);
    $display("sample.c = %0d", sample.c);
    #1 $finish;
  end
endmodule

// # KERNEL: sample = 3 4294967295 -1
// # KERNEL: sample.a = 3
// # KERNEL: sample.b = 4294967295
// # KERNEL: sample.c = -1
