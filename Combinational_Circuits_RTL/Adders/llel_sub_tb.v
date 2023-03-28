module llel_sub_tb;

reg [3:0] a,b;
wire [3:0] bor;
wire [3:0] dif;

integer i=0;

llel_sub SUB1(.a(a),.b(b),.c(bor),.d(dif));

initial begin
{a,b}=0;
end

initial begin
for (i=0;i<8;i=i+1) begin
a={$random} % 15;
b={$random} %15;
#10;
end
end

initial $monitor("@%0t: a:%0d b:%0d dif:%0d bor:%0d ",$time,a,b,dif,bor);
initial #100 $finish;

endmodule
