module gray_bin_tb;

wire [3:0] b;
reg [3:0] g;
integer i=0;


gray_bin GRAY_BIN (g,b);

initial begin
g=0;
end

initial begin
for(i=0;i<16;i=i+1) begin
{g}=i;
#10;
end
end

initial $monitor("@%0t: gray:%0b bin:%0b",$time,g,b);

initial #200 $finish;
endmodule
