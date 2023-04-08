module bidirec_sreg_tb;

reg in,clk,clr,en,dir;
wire [3:0] out;

bidirectional_sreg BIDRECT(.in(in),.clk(clk),.clr(clr),.en(en),.dir(dir),.out(out));

always #10 clk=~clk;

initial begin

clk=0;
clr=1;
en=0;
dir=0;
in=0;

end

initial begin
clr=1;
#10 clr=0;
en=1;

repeat(7) @(posedge clk)
in=~in;

#10 dir=1;
repeat(7) @(posedge clk)
in =~in;

repeat(7) @(posedge clk)
$finish;

end

initial $monitor("@%0t: clk:%0b in:%0b dir:%0b out:%0b",$time,clk,in,dir,out);

endmodule
