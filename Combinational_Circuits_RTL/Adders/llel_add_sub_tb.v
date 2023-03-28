module llel_add_sub_tb;

reg [3:0] a,b;
reg mode;
wire cout;
wire [4:0] s_d;

integer i=0;

llel_add_sub ADD_SUB(.a(a),.b(b),.mode(mode),.cout(cout),.s_d(s_d));

initial begin
{a,b,mode}=0;
end

initial begin
for (i=0;i<8;i=i+1) begin
a={$random} % 15;
b={$random} %15;
mode=1;
#10;
end
end

initial $monitor("@%0t: a:%0d b:%0d mode: %0b sum/dif:%0d cout:%0d ",$time,a,b,mode,s_d,cout);
initial #100 $finish;

endmodule
