module sr_flipflop(s,r,clk,q,qb);

input s,r,clk;
output reg q,qb;


always @(posedge clk)
begin

if(~s && r) begin
q<=1'b0;
qb<=1'b1;
end

else if(s && ~r) begin
q<=1'b1;
qb<=1'b0;
end

else  begin
q<=q;
qb<=qb;
end

end



endmodule
