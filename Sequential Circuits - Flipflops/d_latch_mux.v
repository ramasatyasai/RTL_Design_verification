module d_mux(input a,b,sel,output reg y);

always @(*)
begin
case(sel)

1'b0:y=a;
1'b1:y=b;

endcase
end
endmodule

module d_latch_mux(input d,en, output reg q, output reg qb);

wire in1,in2;
wire s_in;
wire op;

assign in1=q;
assign in2=d;
assign s_in=en;

d_mux D_MUX(in1,in2,s_in,op);

assign q=op;
assign qb=~op;

endmodule