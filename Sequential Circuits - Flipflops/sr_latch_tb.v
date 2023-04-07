module sr_latch_tb();

//Testbench global variables

reg s,r; 
wire q,qb;

//Instantiate the design
 
sr_latch SRL(s,r,q,qb);

//Data task

task din(input x,y); 
begin
s=x;
r=y;
#10;
end 
endtask

//Process that generates stimulus by call by value method
initial
begin
din(1,0);
din(0,0);
din(0,1);
din(0,0);
din(1,1);
din(1,0);
din(0,1); 
#10;
$finish; 
end

//Step3 : Use $monitor to display the various inputs and outputs

initial $monitor("s:%b r:%b :: q:%b qb:%b",s,r,q,qb); 
endmodule
