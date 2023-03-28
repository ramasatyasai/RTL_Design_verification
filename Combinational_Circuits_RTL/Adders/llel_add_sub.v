module llel_add_sub (input [3:0]a, input [3:0]b, input mode, output [4:0] s_d, output cout);

wire [3:0] temp;
wire [2:0] c_temp;

xor xor0(temp[0],b[0],mode);
xor xor1(temp[1],b[1],mode);
xor xor2(temp[2],b[2],mode);
xor xor3(temp[3],b[3],mode);

fa FA0(.a(a[0]),.b(temp[0]),.cin(mode),.sum(s_d[0]),.cout(c_temp[0]));
fa FA1(.a(a[1]),.b(temp[1]),.cin(c_temp[0]),.sum(s_d[1]),.cout(c_temp[1]));
fa FA2(.a(a[2]),.b(temp[2]),.cin(c_temp[1]),.sum(s_d[2]),.cout(c_temp[2]));
fa FA3(.a(a[3]),.b(temp[3]),.cin(c_temp[2]),.sum(s_d[3]),.cout(s_d[4]));

assign cout = s_d[4];



endmodule
