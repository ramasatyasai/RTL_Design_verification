module carry_sel_adder_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;

integer i=0;

carry_sel_adder CSA1(a,b,cin,sum,cout);

initial begin
for(i=0;i<8;i=i+1)
begin
#10;
a= {$random} %15;
b= {$random} %15;
cin = $random;
end
end

initial $monitor("a=%0d | b=%0d | cin=%0d | sum=%0d | cout=%0d",a,b,cin,sum,cout);

initial #100 $finish;

endmodule





