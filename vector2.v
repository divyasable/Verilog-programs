module top;
reg [3:0]a;//4 bit 
reg [8:2]b;//7 bit 

initial begin
	//lhs>rhs
	a=$random;
	$display(" a =%b ",a);
	$display(" b =%b\n ",b);
	b=a;
	$display(" a =%b ",a);
	$display(" b =%b ",b);
end
endmodule
