module decoder_3_8_tb;

reg [2:0] in;
wire [7:0] out;

integer i=0;

decoder_3_8 DEC (in,out);

initial begin
for (i=0;i<8;i=i+1)
begin
{in}=i;
#10;
end
end

initial begin
$monitor("in:%0b out:%0b ",in,out);
#100 $finish;
end
endmodule
