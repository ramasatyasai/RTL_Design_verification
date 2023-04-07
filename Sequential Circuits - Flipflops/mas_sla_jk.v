module mas_sla_jk(input j,k,clk, output q,qn);

wire j1,k1;
wire qm,qmb;
wire nclk;

assign nclk= ~clk;

assign j1= j & qn;
assign k1= k & q;

jk MASTER(j1,k1,clk,qm,qmb);
jk SLAVE(qm,qmb,nclk,q,qn);



endmodule


module jk(input j,k,clk,output reg q,output qn);


/*
nand NAND1(s,j,clk);
nand NAND2(r,k,clk);
nand NAND3(q,s,qn);
nand NAND4(qn,r,q);*/

always @(posedge clk)
begin
case({j,k})
2'b00: q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
default: q<=0;
endcase
end
assign qn=~q;
endmodule
