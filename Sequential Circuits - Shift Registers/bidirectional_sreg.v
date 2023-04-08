module bidirectional_sreg #(parameter MSB=4) (input in,input clk, input clr,
 input en, input dir, output reg [MSB-1:0] out );

always @(posedge clk)

if(clr==1)
out<=0;
else begin
if(en)
case(dir)
1'b0:out<={out[MSB-2:0],in};
1'b1:out<={in,out[MSB-1:0]};
endcase
else
out<=out;
end

endmodule
