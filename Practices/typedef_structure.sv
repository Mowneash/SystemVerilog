module packed_structure;
  typedef struct {
    bit [1:0] a;
    int unsigned b;
    string c;
  } sampl;
  
  sampl sample;
  sampl sample1;

  initial begin 
    sample='{2'b10,17,"s"};
    sample1='{2'b11,16,"A"};
    
    $display("sample = %0p", sample);
    $display("sample.a = %0d", sample.a);
    $display("sample.b = %0d", sample.b);
    $display("sample.c = %0s", sample.c);
    
    
    $display("sample1 = %0p", sample1);
    $display("sample1.a = %0d", sample1.a);
    $display("sample1.b = %0d", sample1.b);
    $display("sample1.c = %0s", sample1.c);
    #1 $finish;
  end
endmodule

// # KERNEL: sample = 2 17 "s"
// # KERNEL: sample.a = 2
// # KERNEL: sample.b = 17
// # KERNEL: sample.c = s
// # KERNEL: sample1 = 3 16 "A"
// # KERNEL: sample1.a = 3
// # KERNEL: sample1.b = 16
// # KERNEL: sample1.c = A
