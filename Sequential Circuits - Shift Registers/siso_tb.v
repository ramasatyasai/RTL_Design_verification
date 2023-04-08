module siso_tb;

reg si;
reg clk;
wire so;

siso SISO(si,clk,so);

initial
begin
$monitor($time,"si=%b,clk=%b,so=%b",si,clk,so);
end
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
si=1;
#10 si=0;
#10 si=1;
#10 si=1;
#40 $finish;
end 

endmodule
