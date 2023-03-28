module bcd_excess3_tb;

reg [3:0] b;
wire [3:0] xs3;
integer i=0;


bcd_excess3 BCD_XS3 (b,xs3);

initial begin
b=0;
end

initial begin
for(i=0;i<16;i=i+1) begin
{b}=i;
#10;
end
end

initial $monitor("@%0t: bin:%0b xs3:%0b",$time,b,xs3);

initial #200 $finish;
endmodule
