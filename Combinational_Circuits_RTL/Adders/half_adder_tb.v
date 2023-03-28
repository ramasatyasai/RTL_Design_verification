`timescale 1ns/1ns
module ha_tb;

reg a,b;
wire sum,cout;

integer i;

ha dut (a,b,sum,cout);

initial begin

{a,b}=0;

end

initial begin

for (i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end

initial $monitor("a:%0d  b:%0d sum:%0d carry:%0d",a,b,sum,cout);

initial #100 $finish;
endmodule
