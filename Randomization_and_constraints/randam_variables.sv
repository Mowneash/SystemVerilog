class packet;
  rand bit [2:0]a;
  randc bit [2:0]b;
endclass

module example;
  packet p1;
  initial begin
    p1=new();
    repeat(8) begin
      p1.randomize();
      $display("rand of 3 bits = %d | randc = %d",p1.a,p1.b);
    end
  end
endmodule

/*
rand of 3 bits = 1 | randc = 5
rand of 3 bits = 3 | randc = 2
rand of 3 bits = 2 | randc = 6
rand of 3 bits = 7 | randc = 3
rand of 3 bits = 0 | randc = 4
rand of 3 bits = 3 | randc = 1
rand of 3 bits = 2 | randc = 0
rand of 3 bits = 3 | randc = 7
           V C S   S i m u l a t i o n   R e p o r t 
