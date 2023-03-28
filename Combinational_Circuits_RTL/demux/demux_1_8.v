module demux_1_8(input din, input [2:0]sel, output reg [7:0]y);

//Gate level modelling

/*
assign y[0]=~sel[2]&~sel[1]&~sel[0]&din;
assign y[1]=~sel[2]&~sel[1]&sel[0]&din;
assign y[2]=~sel[2]&sel[1]&~sel[0]&din;
assign y[3]=~sel[2]&sel[1]&sel[0]&din;
assign y[4]=sel[2]&~sel[1]&~sel[0]&din;
assign y[5]=sel[2]&~sel[1]&sel[0]&din;
assign y[6]=sel[2]&sel[1]&~sel[0]&din;
assign y[7]=sel[2]&sel[1]&sel[0]&din;

*/



// Behavioural modelling - case statement

always @(*)
begin
case(sel)
3'b000:begin
	y[0]=din;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=1'b0;
	y[4]=1'b0;
	y[5]=1'b0;
	y[6]=1'b0;
	y[7]=1'b0;
	end

3'b001:begin
	y[0]=1'b0;
	y[1]=din;
	y[2]=1'b0;
	y[3]=1'b0;
	y[4]=1'b0;
	y[5]=1'b0;
	y[6]=1'b0;
	y[7]=1'b0;
	end

3'b010:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=din;
	y[3]=1'b0;
	y[4]=1'b0;
	y[5]=1'b0;
	y[6]=1'b0;
	y[7]=1'b0;
	end

3'b011:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=din;
	y[4]=1'b0;
	y[5]=1'b0;
	y[6]=1'b0;
	y[7]=1'b0;
	end

3'b100:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=1'b0;
	y[4]=din;
	y[5]=1'b0;
	y[6]=1'b0;
	y[7]=1'b0;
	end

3'b101:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=1'b0;
	y[4]=1'b0;
	y[5]=din;
	y[6]=1'b0;
	y[7]=1'b0;
	end

3'b110:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=1'b0;
	y[4]=1'b0;
	y[5]=1'b0;
	y[6]=din;
	y[7]=1'b0;
	end

3'b111:begin
	y[0]=1'b0;
	y[1]=1'b0;
	y[2]=1'b0;
	y[3]=1'b0;
	y[4]=1'b0;
	y[5]=1'b0;
	y[6]=1'b0;
	y[7]=din;
	end

endcase

end

endmodule
