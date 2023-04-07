module jk_latch(j,k,en,q,qb);

input j,k,en;
reg op;
output q,qb;

always @(posedge en)
begin

if(~j && k)
op<=1'b0;
else if (j && ~k)
op<=1'b1;
end
assign q=op;
assign qb=~op;

endmodule
