module mux2_1_tb;

reg a,b,s;
wire y;

mux2_1 dut(a,b,s,y);

task initialize();
{a,b,s}=0;
endtask

task inputs(input p,q,r);
begin
#10;
a=p;
b=q;
s=r;
end
endtask
 
initial begin

initialize;
inputs(1,1,1);
inputs(0,0,0);
inputs(1,0,1);
inputs(0,1,0);
inputs(1,1,0);
end

initial $monitor("a=%b b=%b s=%b ==> Y=%b",a,b,s,y);

initial #100 $finish;

endmodule
