module bin_gray_tb;

reg [3:0] b;
wire [3:0] g;
integer i=0;


bin_gray BIN_GRAY (b,g);

initial begin
b=0;
end

initial begin
for(i=0;i<16;i=i+1) begin
{b}=i;
#10;
end
end

initial $monitor("@%0t: bin:%0b gray:%0b",$time,b,g);

initial #200 $finish;
endmodule
