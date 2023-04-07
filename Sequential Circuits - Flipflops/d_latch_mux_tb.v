module d_latch_mux_tb;

//Test bench global variables
reg d,en;
wire q,qb;

// Design  instantiation

d_latch_mux DFF(d,en,q,qb);

initial begin
d=0;
en=0;
end

always #10 d=~d;
always #5 en=~en;

initial #100 $finish;
initial $monitor("%0t:: d:%0b en:%0b q:%0b qb:%00b",$time,d,en,q,qb);

endmodule
