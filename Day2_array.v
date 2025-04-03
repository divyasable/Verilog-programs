module top;
integer intA[9:0], intA1[9:0];
integer i;
initial begin 
	for(i=0;i<10;i=i+1)begin 
			//intA[i]=40+i;
	 		intA[i]=$urandom_range(40,50);	
	end
	for(i=0;i<10;i=i+1)begin 
		$display("intA[%0d]=%0d ",i,intA[i]);
	end
	$display("\n");
	for(i=0;i<10;i=i+1)begin 
	 		intA1[i]=intA[i];
	end
	for(i=0;i<10;i=i+1)begin 
		$display("intA1[%0d]=%0d ",i,intA1[i]);
	end
	$display("\n");
	for(i=0;i<10;i=i+1)begin 
	 		if(intA1[i]==intA[i])		
				$display(" both array elements are equal");
			else 
				$display(" both array elements arenot  equal");
	end
	$display("\n");
	for(i=0;i<10;i=i+1)begin 
	 		intA1[i]=intA1[i]+1;
	end
	for(i=0;i<10;i=i+1)begin 
	 		if(intA1[i]==intA[i])		
				$display(" both array elements are equal");
			else begin 
				$display(" both array elements are not  equal  ",);
			$display(" %0d is miss matching  with %0d  ", intA[i], intA1[i]);
			end
	end
end
endmodule
