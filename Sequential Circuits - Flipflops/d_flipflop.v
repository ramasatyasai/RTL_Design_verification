module d_flipflop(d,clk,rst,q,qb);

input d,clk,rst;
output reg q;
output qb;

always @(posedge clk)
begin

if(~rst) begin
	q<=1'b0;
end

else begin
q<=d;
end

end

assign qb=~q;

endmodule
