module sr_latch(s,r,q,qb);

input s,r;
output q,qb;

nor NOR2(qb,s,q);
nor NOR1(q,r,qb);

endmodule
