
module associative_methods;
  bit [3:0] arr[int];
  int a;
  initial begin 
    arr[8]=0;
    arr[6]=1;
    arr[9]=2;
    arr[16]=3;
    arr[18]=4;
    arr[39]=6;
    
    $display("number of entities in array = %0d",arr.num());
    
    $display("arr.exists (returns 1 if index 0 exists) = %0d",arr.exists(0));
    
    arr.first(a);
    $display("a gets the value of first index %0d in array %0d",a,arr[a]);
    
    arr.last(a);
    $display("a gets the value of last index %0d in an array %0d",a,arr[a]);
    
    arr.next(a);
    $display("%0d",a);
    
    arr.prev(a);
    $display("%0d",a);
    a=6;
    arr.next(a);
    
    arr.next(a);
    $display("%0d",a);
  end
endmodule
