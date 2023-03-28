module decoder_2_4(input a,b, output y0,y1,y2,y3);

assign y0 = ~a & ~b;
assign y1 = ~a & b;
assign y2 = a & ~b;
assign y3 = a & b;

/*
//Behavioural model

always @(*) begin

case({a,b})

2'b00: y0 = 4'b0001;
2'b01: y1 = 4'b0010;
2'b10: y2 = 4'b0100;
2'b11: y3 = 4'b1000;
end
*/


endmodule
