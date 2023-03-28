module mux_3_1(input a,b,c, input [1:0]sel, output reg out);

always @(*)
begin
case(sel)

2'b00:out=a;
2'b01:out=b;
2'b10:out=c;
default:out=a;


endcase
end
endmodule
