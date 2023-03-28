module bcd_7seg_tb;

reg [3:0] b;
wire [3:0] segg;
integer i=0;


bcd_7seg BCD_7SEG (b,seg);

initial begin
b=0;
end

initial begin
for(i=0;i<16;i=i+1) begin
{b}=i;
#10;
end
end

initial $monitor("@%0t: bin:%0b 7segment:%0b",$time,b,seg);

initial #200 $finish;









endmodule
