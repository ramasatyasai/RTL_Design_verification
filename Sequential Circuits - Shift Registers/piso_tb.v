module piso_tb;

reg clk,clr;
reg [3:0]pi;
reg sel;
wire so;

piso PISO (.pi(pi),.clk(clk),.clr(clr),.sel(sel),.so(so));

always #5 clk=~clk;

initial begin

clk = 0;
clr= 1;

clr=1'b0;

sel=0; // To load the data in parallel
pi=4'b1110;

#10 sel=1; // To shift the data output serially
#40 sel =0;
pi=4'b0110;
#10 sel=1;


end


initial #150 $finish;

initial $monitor ("@%0t: pi:%0b ::::: so:%0b ",$time,pi,so);

endmodule
