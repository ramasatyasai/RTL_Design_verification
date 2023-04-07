module d_latch(d,q,qb);

input d;
wire s,r;
output q,qb;

assign s=d;
assign r=~d;

nor NOR2(qb,s,q);
nor NOR1(q,r,qb);

endmodule
