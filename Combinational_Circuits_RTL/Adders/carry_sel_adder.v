module carry_sel_adder(input [3:0]a, input [3:0]b, input cin, output [3:0] sum, output cout );

wire [3:0] wa;
wire [3:0] wb;
wire [3:0]c0;
wire [3:0]c1;
wire [3:0]sum0;
wire [3:0]sum1;

fa FA0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum0[0]),.cout(c0[0]));
fa FA1(.a(a[1]),.b(b[1]),.cin(c0[0]),.sum(sum0[1]),.cout(c0[1]));
fa FA2(.a(a[2]),.b(b[2]),.cin(c0[1]),.sum(sum0[2]),.cout(c0[2]));
fa FA3(.a(a[3]),.b(b[3]),.cin(c0[2]),.sum(sum0[3]),.cout(c0[3]));


fa FA4(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum1[0]),.cout(c1[0]));
fa FA5(.a(a[1]),.b(b[1]),.cin(c1[0]),.sum(sum1[1]),.cout(c1[1]));
fa FA6(.a(a[2]),.b(b[2]),.cin(c1[1]),.sum(sum1[2]),.cout(c1[2]));
fa FA7(.a(a[3]),.b(b[3]),.cin(c1[2]),.sum(sum1[3]),.cout(c1[3]));

mux2_1 mux0(sum0[0],sum1[0],cin,sum[0]);
mux2_1 mux1(sum0[1],sum1[1],cin,sum[1]);
mux2_1 mux2(sum0[2],sum1[2],cin,sum[2]);
mux2_1 mux3(sum0[3],sum1[3],cin,sum[3]);


mux2_1 mux4(c0[3],c1[3],cin,cout);

endmodule
