module top;
integer array[14:0];
integer i,j,value;
reg exist_f;
initial begin 
	for(i=0;i<15;)begin 
		value =$urandom_range(10,30);//generating  the random value
		exist_f=1;//assuming value is unique
		for(j=0;j<i;j=j+1)begin 
			if(value==array[j])begin//comparing the generated value with  array elements
				exist_f=0;//now the  generated  value  is not unique
				j=i;//to exit from j loop whne the value is repeted ,then no more futher checks are required
			end
		end
		if(exist_f==1)begin //by this value is not repited
			array[i]=value;//assigning value to array
			$display(" array[%0d]=%0d",i,array[i]);
			i=i+1;//after assigning unique value then increment the index
		end
	end
end
endmodule
/*
#  array[0]=22
#  array[1]=17
#  array[2]=20
#  array[3]=27
#  array[4]=11
#  array[5]=14
#  array[6]=24
#  array[7]=19
#  array[8]=16
#  array[9]=13
#  array[10]=12
#  array[11]=29
#  array[12]=21
#  array[13]=25
#  array[14]=30

*/
