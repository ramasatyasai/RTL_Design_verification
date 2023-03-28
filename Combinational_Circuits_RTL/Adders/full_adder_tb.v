`timescale 1ns/1ns
module full_adder_tb();


reg a,b,cin;
wire sum,cout;

integer i=0;

full_adder fa1(a,b,cin,sum,cout);

initial begin
{a,b,cin}=0;

end

initial begin

for(i=0;i<8;i=i+1) begin
{a,b,cin}=i;
#10;
end
end

initial $monitor("@:%0t a:%0d b:%0d cin:%0d sum:%0d cout:%0d",$time,a,b,cin,sum,cout);

initial #100 $finish;



endmodule
