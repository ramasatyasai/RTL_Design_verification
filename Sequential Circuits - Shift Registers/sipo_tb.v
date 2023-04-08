module sipo_tb;

reg clk,clear,si;
wire [3:0]po;

sipo SIPO (.si(si),.clk(clk),.clr(clear),.po(po));

always #5 clk=~clk;

initial begin

clk = 0;

clear = 0;

si = 0;

#5 clear=1'b1;

#5 clear=1'b0;
end

always #10 si=~si;



initial #150 $finish;

initial $monitor ("@%0t: si:%0b ::::: so:%0b ",$time,si,po);

endmodule
