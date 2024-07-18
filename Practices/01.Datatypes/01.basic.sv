module datatype1;
  integer a;                          
  int b;                                 
  shortint c;                         
  longint d;                          
  logic [7:0] l1;                   
  logic signed [7:0] sl1;      
  byte bl1;                             
  reg [7:0] r1;                       
  
  initial
    begin
      a = 'h xxzz_ffff; //integer is 4 state variable (x and z are considered)
      b = -1;           //int is 2 state variable and signed
      c = 'h fxfx;      //16bit signed 
      d = 'h ffff_xxxx_ffff_zzzz; //64bit signed (x and z are considered as 0)  
      l1 = -1 ;         //logic is unsigned so taken as 255
      sl1 = -1;         //declared as signed 
      bl1 = -1;         //byte is signed
      r1 = 8'b xzxz_0101; //reg is 4 state variable
    end
    
 initial
   begin
     $display("a = %h b = %h c = %h d = %h", a, b, c, d);
     $display("l1 = %0d sl1=%0d bl1 = %0d r1 = %b",l1,sl1,bl1,r1);
     #10 $finish;
   end              
 endmodule
