module t_latch(t,en,rst,q,qb);

input t,en,rst;
output reg q,qb;



always @(posedge en)
begin

if(rst==1)
	q<=1'b0;
else begin
	if(t==0)
	begin
	q<=1'b0;
	qb<=1'b1;
	end
	else
	begin
	q<=1'b1;
	qb<=1'b0;
	end
end
end

endmodule
