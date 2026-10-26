//4:1 mux ez

module mux_4beh(input [3:0] d, input [1:0] sel, output reg y);
       always@(*)begin
        case(sel)

         2'b00: y = d[0];
         2'b01: y = d[1];
         2'b10: y = d[2];
         2'b11: y = d[3];

        endcase
       end
endmodule   

//experiment with always@(*)begin blocks:
// comparator a means a is greter b means b is greater and ab means equal also instead of 2 diffrent inputs a and b i gave 1 2 bit register with msb as a and lsb as b
 module comparator(input [1:0] d, output reg a, b, ab);
        
    

        always@(*)begin
        a = 0; b = 0; ab = 0;    

            case(d)
             2'b00: ab = 1 ;
             2'b01: b =  1 ;
             2'b10: a =  1 ;
             2'b11: ab = 1 ;

            endcase

        end
 endmodule

//even odd finder 2bit

module eveoddfinder(input [2:0] a, output reg e, o);

       always@(*)begin
       e = 0; o = 0;

              case(a[0])
              1'b1: o = 1;
              1'b0: e = 1;
              endcase
       end
endmodule


       
              
              

              
       
