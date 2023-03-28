module bidirection_buf(inout a,b, input control);

bufif1(b,a,control);
bufif0(a,b,control);

endmodule
