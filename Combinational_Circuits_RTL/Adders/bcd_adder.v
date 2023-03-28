module bcd_adder (input [3:0] a, input [3:0] b, output [3:0] s, output [3:0]c);


wire [3:0] temp;
wire [3:0] c_temp;
wire y;
wire x;

wire p,q;



llel_adder PA1(.a(a[3:0]),.b(b[3:0]),.s(temp[3:0]),.c(c_temp[3:0]));

and AND1 (p,temp[4],temp[3]);
and AND2 (q,temp[4],temp[2]);

or OR1(x,p,q);
or OR2(y,x,c[3]);

assign c_temp=1'b0;
assign c_temp[1]=y;
assign c_temp[2]=y;
assign c_temp[3]=1'b0;

llel_adder PA2(.a(c_temp[3:0]),.b(temp[3:0]),.s(s[3:0]),.c(c[3:0]));

endmodule
