module car_look_add(input [3:0]a, input [3:0]b, input cin, output [3:0] sum, output cout);


wire [3:0]p;
wire [3:0]g;

// pi - carry propogation

xor PRO0(p[0],a[0],b[0]);
xor PRO1(p[1],a[1],b[1]);
xor PRO2(p[2],a[2],b[2]);
xor PRO3(p[3],a[3],b[3]);

//gi - carry generation

and AND0(g[0],a[0],b[0]);
and AND1(g[1],a[1],b[1]);
and AND2(g[2],a[2],b[2]);
and AND3(g[3],a[3],b[3]);

// carry-out

assign c0 = g[0]| (p[0]&cin), 
	c1 = g[1] | (p[1]&g[0]) | (p[0]&p[1]&cin),
	c2 = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&cin),
        c3 = g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&cin);
//sum
xor (sum[0],p[0],cin),
	(sum[1],p[1],c0),
	(sum[2],p[2],c1),
	(sum[3],p[3],c2);

assign cout = c3;

endmodule
