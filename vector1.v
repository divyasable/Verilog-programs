module top;
reg [3:0]a;//4 bit 
reg [8:2]b;//7 bit 

initial begin
	//lhs<rhs
	b=$random;
	$display(" a =%b ",a);
	$display(" b =%b\n ",b);
	a=b;
	$display(" a =%b ",a);
	$display(" b =%b ",b);
end
endmodule
