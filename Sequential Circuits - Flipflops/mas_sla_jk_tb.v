module mas_sla_jk_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qn;

	
	mas_sla_jk MAS_SLA(j,k,clk,q,qn);


	always #5 clk=~clk;

	initial begin
		// Initialize Inputs
	clk=0;
	end
	
	initial begin

		j=0;k=0;
	#10 	j=0;k=1;
	#10	j=1;k=0;
	#10	j=1;k=1;
	#10 	j=1;k=1;
	#10 	j=1;k=0;
	#10 	j=0;k=1;
	#10 	j=0;k=0;
	#10 	j=0;k=1;
	#10	j=1;k=0;
	#10	j=1;k=1;
	#10 	j=1;k=1;
	#10 	j=1;k=0;
	#10 	j=0;k=1;
	#10 	j=0;k=0;
	#10 	j=0;k=1;
	#10	j=1;k=0;
	#10	j=1;k=1;
	#10 	j=1;k=1;
	#10 	j=1;k=0;
	#10 	j=0;k=1;
	#10 	j=0;k=0;
	#10 	j=0;k=1;
	#10	j=1;k=0;
	#10	j=1;k=1;
	#10 	j=1;k=1;
	#10 	j=1;k=0;
	#10 	j=0;k=1;
	#10 	j=0;k=0;

	end


	
	
initial
begin
$monitor("j:%0b, k:%0b, clk:%0b q:%0b, qn:%0b",j,k,clk,q,qn);
#400 $finish;
end
endmodule



/*module mas_sla_jk_tb;

	reg j,k,clk;
	wire q,qb;

	mas_sla_jk DUT (j,k,clk,q,qb);

	always #10 clk=~clk;

	initial begin
		
	clk=0;
	#10 j = 0;k = 0;
	#10 j = 1;k = 1;
	#10 j = 0;k = 1;
   	#10 j = 1;k = 0;
   	#10 j = 1;k = 1;	
	#10 j = 0;k = 0;
   	#10 j = 0;k = 1;
	end
	
	
initial
begin
$monitor("j:%0b k:%0b clk:%0b q:%0b qb:%0b ",j,k,clk,q,qb);
#200 $finish;
end

endmodule */
