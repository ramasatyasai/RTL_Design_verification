module add_sub(input a, input b, input mode, output s_d, output cout);

assign s_d = a^b;
assign cout = ((mode^a) & b);

endmodule

