module siso(input si,clk,output so);

wire q3,q2,q1;

dff DFF1(si,clk,q3);
dff DFF2(q3,clk,q2);
dff DFF3(q2,clk,q1);
dff DFF4(q1,clk,so);

endmodule
