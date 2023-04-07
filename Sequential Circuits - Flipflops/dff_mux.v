module dff_mux(input d, input clk, output q,qb);

wire in1,in2,sel;

assign in1=d;
assign in2=q;
assign sel=clk;

assign q=sel?in1:in2;
assign qb=~q;


endmodule
