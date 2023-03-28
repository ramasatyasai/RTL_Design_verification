module full_adder(input a, input b, input cin,
output s, output c);

wire w1,w2,w3;

ha h1(.a(a),.b(b),.sum(w1),.cout(w2));
ha h2(.a(cin),.b(w1),.sum(s),.cout(w3));

or or1(c,w2,w3);

endmodule
