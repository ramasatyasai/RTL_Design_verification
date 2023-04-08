module universal_sreg #(parameter msb)(input [msb-1:0]in, input clk, input clr, input [1:0] sel, output reg[msb-1:0] out);

always @(posedge clk)
begin

if(clr==1)
out=0;

else
begin

case(sel)
2'b00:out=out; //lock mode
2'b01:out={in[0],in[msb-1:0]}; // shift right >>
2'b10:out={in[msb-2:0],in[msb-1]}; // shift left <<
2'b11:out=in; // PIPO
endcase

end
end

endmodule
