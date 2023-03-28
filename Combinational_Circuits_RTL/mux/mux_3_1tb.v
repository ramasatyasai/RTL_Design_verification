module mux_3_1_tb;

reg a,b,c;
reg [1:0]sel;
wire out;

mux_3_1 MUX(a,b,c,sel,out);

task inputs(input p,q,r, input [1:0]s);
begin
a=p;
b=q;
c=r;
sel=s;
end
endtask


initial begin
inputs(0,0,0,2'b01);
#10;
inputs(1,1,0,2'b01);
#10;
inputs(0,1,0,2'b00);
#10;
inputs(1,1,1,2'b00);
#10;
inputs(0,0,1,2'b10);
#10;
inputs(0,1,1,2'b10);
#10;
inputs(0,0,1,2'b11);
#10;
inputs(1,0,0,2'b11);
#10;
end

initial $monitor("a: %0b b:%0b c:%0b sel:%0b out:%0b",a,b,c,sel,out);
initial #100 $finish;

endmodule
