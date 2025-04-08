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

//# intA[0]=47 
//# intA[1]=50 
//# intA[2]=48 
//# intA[3]=43 
//# intA[4]=45 
//# intA[5]=49 
//# intA[6]=43 
//# intA[7]=50 
//# intA[8]=46 
//# intA[9]=43 
//# 
//# 
//# intA1[0]=47 
//# intA1[1]=50 
//# intA1[2]=48 
//# intA1[3]=43 
//# intA1[4]=45 
//# intA1[5]=49 
//# intA1[6]=43 
//# intA1[7]=50 
//# intA1[8]=46 
//# intA1[9]=43 
//# 
//# 
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//#  both array elements are equal
//# 
//# 
//#  both array elements are not  equal   
//#  47 is miss matching  with 48  
//#  both array elements are not  equal   
//#  50 is miss matching  with 51  
//#  both array elements are not  equal   
//#  48 is miss matching  with 49  
//#  both array elements are not  equal   
//#  43 is miss matching  with 44  
//#  both array elements are not  equal   
//#  45 is miss matching  with 46  
//#  both array elements are not  equal   
//#  49 is miss matching  with 50  
//#  both array elements are not  equal   
//#  43 is miss matching  with 44  
//#  both array elements are not  equal   
//#  50 is miss matching  with 51  
//#  both array elements are not  equal   
//#  46 is miss matching  with 47  
//#  both array elements are not  equal   
//#  43 is miss matching  with 44  
//
