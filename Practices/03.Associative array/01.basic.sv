module associative_array;
  bit [3:0] arr[string];
  int arr1[bit [3:0]];
  initial begin 
    arr1[0]=3;
    arr1[1]=5;
    arr1[6]=7;
    arr1[9]=9;
    arr["A"]=1;
    arr["green"]=2;
    arr["yellow"]=16;
    arr[32]=5;
    foreach(arr[i])$display("arr[%0s] = %0d",i,arr[i]);
    
    foreach(arr[i])$display("arr[%0s] = %0d",i,arr1[i]);
    $display("---------------------------------");
  end
endmodule
