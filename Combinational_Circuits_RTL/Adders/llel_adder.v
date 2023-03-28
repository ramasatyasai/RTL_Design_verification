module llel_adder(input [3:0]a, input [3:0] b, output [4:0] s, output cout);

wire [2:0]c;

fa FA0(.a(a[0]),.b(b[0]),.cin(0),.sum(s[0]),.cout(c[0]));
fa FA1(.a(a[1]),.b(b[1]),.cin(c[0]),.sum(s[1]),.cout(c[1]));
fa FA2(.a(a[2]),.b(b[2]),.cin(c[1]),.sum(s[2]),.cout(c[2]));
fa FA3(.a(a[3]),.b(b[3]),.cin(c[2]),.sum(s[3]),.cout(s[4]));

assign cout = s[4];
endmodule
