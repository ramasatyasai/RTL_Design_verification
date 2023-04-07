module t_flipflop(t,clk,rst,q,qb);

input t,clk,rst;
output reg q;
output qb;

always @(posedge clk)
begin

if(~rst) begin
	q<=1'b0;
end

else begin
if(t==0)
q<=q;
else
q<=~q;
end

end

assign qb=~q;

endmodule
