module pipo_tb;

reg clk,clr;
reg [3:0]pi;
wire [3:0]po;

pipo PIPO (.pi(pi),.clk(clk),.clr(clr),.po(po));

always #5 clk=~clk;

initial begin

clk = 0;
clr= 1;

clr=1'b0;

pi=4'b1110;

#10 pi=4'b0110;


end


initial #150 $finish;

initial $monitor ("@%0t: pi:%0b ::::: so:%0b ",$time,pi,po);

endmodule
