module d_latch_tb();

//Testbench global variables

reg d; 
wire q,qb;

//Instantiate the design
 
d_latch DL(d,q,qb);

//Data task

task din(input x); 
begin
d=x;
#10;
end 
endtask

//Process that generates stimulus by call by value method
initial
begin
din(1);
din(0);
din(0);
din(0);
din(1);
din(1);
din(0); 
#10;
$finish; 
end

//Step3 : Use $monitor to display the various inputs and outputs

initial $monitor("d:%b :: q:%b qb:%b",d,q,qb); 
endmodule
