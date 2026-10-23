module Xor_tb;
    reg a, b;
    wire yout;
    integer i;

    XOR uut(.a(a), .b(b), .yout(yout));

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #1;
            if (yout !== (a ^ b))
                $display("FAIL: a=%b b=%b yout=%b", a, b, yout);
            else
                $display("PASS: a=%b b=%b yout=%b", a, b, yout);
        end
        $finish;
    end
endmodule
