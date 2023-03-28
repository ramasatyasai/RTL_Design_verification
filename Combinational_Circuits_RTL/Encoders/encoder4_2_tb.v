module encoder4_2_tb;

reg [3:0]d;
wire a,b;
integer i=0;

encoder4_2 ENC(.d(d),.a(a),.b(b));

initial begin
d=0;
end

initial begin
for(i=0;i<16;i=i+1) begin
{d}=i;
#10;
end
end

initial begin

$monitor("@%0t: d:%0b a:%0b b:%0b",$time,d,a,b);
#200 $finish;
end


endmodule
