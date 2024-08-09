module d_flipflop(
input d,clk,rst,
output reg q);
  always @(posedge clk, posedge rst) begin 
    if(rst)
      q<=0;
    else 
      q<=d;
  end
endmodule
