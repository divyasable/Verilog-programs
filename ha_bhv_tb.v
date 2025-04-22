//include th design file 
`include "ha_bhv.v"
//module decaration
module ha_bhv_tb();
//ports decarartion 
reg a,b;
wire sum,carry;

//connection to design 
//instansation 
//design_mod_name  inst_name (ports connection);
ha_bhv dut (a,b,sum,carry);//connection by position
//ha_bhv dut (.carry(carry),.b(b),.sum(sum),.a(a));//connection by name
//ha_bhv dut (.*);//connection by default

//generate th inputs
initial begin
	repeat(5)begin 
		{a,b}=$random;
		#0;
		$display("a=%0d b=%0d sum=%0d carry=%0d ",a,b,sum,carry);
	end
end
endmodule
