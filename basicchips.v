//XOR gate 

`include "Nand.v"

module XOR(input a, b, output yout);
    
      wire y0, y1, y2, y3, yxor ;
    
      Nand u1(.a(a), .b(a), .y(y0));
      Nand u2(.a(b), .b(b), .y(y1));    
      Nand u3(.a(a), .b(y1), .y(y2)); 
      Nand u4(.a(y0), .b(b), .y(y3));
      Nand u5(.a(y2), .b(y3), .y(yxor));

      assign yout = yxor ;

endmodule
        
//XNOR
module XNOR(input a, b, output yout);
       
       wire y1, yxnor ;

       XOR u1(.a(a), .b(b), .yout(y1));
       Nand u2(.a(y1), .b(y1), .y(yxnor));
       assign yout = yxnor ;
endmodule

//ADDER:
//half adder:
module halfadder(input a, b, output s, c);
       wire y ;
       XOR u1(.a(a), .b(b), .yout(s));
       Nand u2(.a(a), .b(b), .y(y));
       Nand u3(.a(y), .b(y), .y(c));
endmodule
//fulladder:
module fulladder(input a, b, cin, output cout, s);

       wire y1, y3, y4 ;

       XOR u1(.a(a), .b(b), .yout(y1));
       XOR u2(.a(y1), .b(cin), .yout(s));
       Nand u3(.a(y1), .b(cin), .y(y3));
       Nand u4(.a(a), .b(b), .y(y4));
       Nand u5(.a(y4), .b(y3), .y(cout));
    
endmodule

//subtractor:
//full subtractor:
module fullsubtractor(input a, b, c, output dout, bout);
       wire y0, y1, y2, y3, y4, y5, y6, y7, a0, b0 ;
       XOR u1(.a(a), .b(b), .yout(y0));
       XOR u2(.a(y0), .b(c), .yout(dout));
       Nand u3(.a(a), .b(a), .y(a0));
       Nand u4(.a(a0), .b(b), .y(y1));
       Nand u5(.a(y1), .b(y1), .y(y2));
       Nand u6(.a(b), .b(b), .y(b0));
       Nand u7(.a(a), .b(b0), .y(y3));
       Nand u8(.a(y3), .b(c), .y(y4));
       Nand u9(.a(y4), .b(y4), .y(y5));
       Nand u10(.a(y2), .b(y2), .y(y6));
       Nand u11(.a(y5), .b(y5), .y(y7));
       Nand u12(.a(y7), .b(y6), .y(bout));
 

endmodule

       


       


 
       