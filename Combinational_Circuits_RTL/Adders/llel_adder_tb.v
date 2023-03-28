module llel_adder_tb;

reg [3:0] a,b;
wire cout ;
wire [4:0] sum;

integer i=0;

llel_adder ADD1(.a(a),.b(b),.cout(cout),.s(sum));

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

initial $monitor("@%0t: a:%0d b:%0d sum:%0d cout:%0d ",$time,a,b,sum,cout);
initial #100 $finish;

endmodule
