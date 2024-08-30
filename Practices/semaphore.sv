
module example;
  semaphore s1=new(1);
  initial begin 
    $display("--------------------------------------------");
    $display("process 1 starded.........");
    s1.get(1);
    $display("process 1 get 1 : %0t",$time);
    #5;
    s1.put(1);
    $display("process 1 put 1 : %0t",$time);
  end
  
  initial begin
    $display("process 2 started.........");
    s1.get(1);
    $display("process 2 get 2 : %0t",$time);
    s1.put(1);
    $display("process 2 put 2 : %0t",$time);
    $display("--------------------------------------------");
  end
endmodule
