module jkff_negedge(j,k,clk,rst,q,qb);

input j,k,clk,rst;
output reg q;
output qb;

parameter hold=2'b00;
parameter reset=2'b01;
parameter set=2'b10;
parameter toggle=2'b11;

always @(negedge clk)
begin
if (rst)
q<=1'b0;
else
begin
case({j,k})

hold: q<=q;
reset:q<=0;
set:q<=1;
toggle:q<=~q;
default:q<=1'b0;

endcase
end

end

assign qb=~q;

endmodule
