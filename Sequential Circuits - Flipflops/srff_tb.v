module srff_tb;

//Test bench global variables
reg s,r,clk;	
wire q,qb;

// Design  instantiation

sr_flipflop SRFF(s,r,clk,q,qb);

//understanding the logic

always begin
clk=1'b0;
forever #10 clk=~clk;
end


//Data input task
task sr_in(input sin,rin);
begin
@(negedge clk)
s=sin;
r=rin;
end
endtask

//process that generates stimulus by call by value method
initial 
begin
sr_in(1,0);
sr_in(1,1);
sr_in(0,0);
sr_in(0,1);
sr_in(1,1);
sr_in(1,0);
sr_in(1,1);
#10;
$finish;
end


initial $monitor("%0t:: s:%0b r:%0b clk:%0b q:%0b qb:%00b",$time,s,r,clk,q,qb);

endmodule
