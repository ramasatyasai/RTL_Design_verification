module bcd_7seg(input [3:0] b, output reg [7:0] seg);

always @(b)
begin
case (b)        
0: seg = 7'b1111_110;
1: seg = 7'b0110_000;
2: seg = 7'b1101_101;
3: seg = 7'b1111_001;
4: seg = 7'b0110_011;
5: seg = 7'b1011_011;
6: seg = 7'b1011_111;
7: seg = 7'b1110_000;
8: seg = 7'b1111_111;
9: seg = 7'b1110_011;

default: seg = 7'b0000000;
endcase
end
endmodule
