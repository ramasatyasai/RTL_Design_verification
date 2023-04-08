module siso_bm_tb;

reg clk,clear,si;
wire so;

siso_bm SISO (.si(si),.clk(clk),.clr(clear),.so(so));

always #5 clk=~clk;

initial begin

clk = 0;
si = 0;

#5 clear=1'b1;

#5 clear=1'b0;

#10 si=1'b1;

#10 si=1'b0;

#10 si=1'b0;

#10 si=1'b1;

end


initial #150 $finish;

initial $monitor ("@%0t: si:%0b ::::: so:%0b ",$time,si,so);

endmodule