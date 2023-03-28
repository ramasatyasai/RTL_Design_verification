module add_sub_tb;

reg a,b,mode;
wire s_d,cout;

add_sub dut(.a(a),.b(b),.mode(mode),.s_d(s_d),.cout(cout));

task initialize();

{a,b,mode}=0;

endtask

task operation(input p,q,x);
begin
a=p;
b=q;
mode=x;
end
endtask

initial begin
initialize;
operation(1,1,0);
#10;
operation(0,0,1);
#10;
operation(1,0,1);
#10;
operation(0,1,1);
#10;
operation(0,1,0);
#10;
operation(1,0,0);
#10;
end

initial $monitor("a: %0b b: %0b, mode:%0b s_d: %0b, cout:%0b",a,b,mode,s_d,cout);

initial #100 $finish;

endmodule
