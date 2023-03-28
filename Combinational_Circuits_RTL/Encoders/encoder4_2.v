module encoder4_2(input [3:0]d, output a,b);

wire [3:0] w;

assign w[0]= ~d[3]&~d[2]&~d[1]&d[0];
assign w[1]= ~d[3]&~d[2]&d[1]&~d[0];
assign w[2]= ~d[3]&d[2]&~d[1]&~d[0];
assign w[3]= d[3]&~d[2]&~d[1]&~d[0];

assign a = w[2]|w[3];
assign b = w[1]|w[3];


endmodule