
module llel_sub(input [3:0]a, input [3:0] b, output [3:0] c, output [3:0]d );



full_adder fa1(a[0],~b[0],1,d[0],c[0]);
full_adder fa2(a[1],~b[1],c[0],d[1],c[1]);
full_adder fa3(a[2],~b[2],c[1],d[2],c[2]);
full_adder fa4(a[3],~b[3],c[2],d[3],c[3]);


endmodule