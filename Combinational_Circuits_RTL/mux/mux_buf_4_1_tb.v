module mux_buf_4_1_tb;

reg a,b,d0,d1,d2,d3;
wire y;

mux_buf_4_1 MUX_4_1_BUF(d0,d1,d2,d3,a,b,y);

task inputs(input m0,m1,m2,m3,sel0,sel1);
begin
d0=m0; d1=m1; d2=m2; d3=m3; a=sel0; b=sel1;
end
endtask

initial
begin
inputs(1'b0,1'b0,1'b1,1'b0,1'b0,1'b1); 
#10
inputs(1'b1,1'b0,1'b1,1'b1,1'b1,1'b0); 
#10
inputs(1'b1,1'b0,1'b1,1'b0,1'b1,1'b1); 
#10;
inputs(1'b1,1'b0,1'b0,1'b0,1'b1,1'b1); 
end

initial
$monitor("do: %b,d1: %b,D2: %b,D3: %b  a: %b,b=%b  y : %b",d0,d1,d2,d3,a,b,y);

initial #50 $finish;

endmodule
