module mux4_1_tb;

reg [3:0]d;
reg [1:0]s;
wire y;

integer i=0;

mux4_1 MUX4 (d[3:0],s[1:0],y);

task initialize();
{d,s}=0;
endtask

task inputs(input [3:0]a,[1:0]b);
begin
#10;
d=a;
s=b;
end
endtask

initial begin
initialize;
inputs(4'b1100,2'b00);
inputs(4'b1011,2'b01);
inputs(4'b1010,2'b10);
inputs(4'b0001,2'b11);
end


initial $monitor("d: %0d s: %0d  y: %b",d,s,y);

initial #50 $finish;
endmodule
