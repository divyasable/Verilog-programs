// RTL  design
// module decaration 
module ha_bhv(a,b,sum,carry);
//ports decaration 
input a,b;
output reg sum,carry;

//functionality
always @(a or b)begin 
	if(a==1'b0 && b==1'b0)begin
		sum=1'b0;carry=1'b0;
	end
	else if (a==1'b0 && b==1'b1)begin
		sum=1'b1;carry=1'b0;
	end
	else if (a==1'b1 && b==1'b0)begin
		sum=1'b1;carry=1'b0;
	end
	else begin 
		sum=1'b0;carry=1'b1;
	end
end
endmodule
