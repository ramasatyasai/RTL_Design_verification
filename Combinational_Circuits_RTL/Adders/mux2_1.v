module mux2_1(input a,b, input s, output reg y);

always @(a,b,s)
begin

case (s)
1'b0: y=a;
1'b1: y=b;
endcase

end
endmodule
