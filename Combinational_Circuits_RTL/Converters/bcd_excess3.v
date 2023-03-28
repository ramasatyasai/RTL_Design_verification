module bcd_excess3(input [3:0] b, output reg [3:0] xs3);

always @(b)
begin
case (b)
4'b0000: xs3= 4'b0011;
4'b0001: xs3= 4'b0100;
4'b0010: xs3= 4'b0101;
4'b0011: xs3= 4'b0110;
4'b0100: xs3= 4'b0111;
4'b0101: xs3= 4'b1000;
4'b0110: xs3= 4'b1001;
4'b0111: xs3= 4'b1010;
4'b1000: xs3= 4'b1011;
4'b1001: xs3= 4'b1100;
default: xs3 = 4'b0000;

endcase
end
endmodule
