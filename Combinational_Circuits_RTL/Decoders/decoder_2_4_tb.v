module decoder_2_4_tb;

reg a,b;
wire y0,y1,y2,y3;

integer i=0;

decoder_2_4 DEC (a,b,y0,y1,y2,y3);

initial begin
for (i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end

initial begin
$monitor("a:%0b b:%0b y:{%0b%0b%0b%0b}",a,b,y3,y2,y1,y0);
#100 $finish;
end
endmodule
