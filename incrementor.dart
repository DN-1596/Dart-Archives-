// This program generates incrementors or this concept can be used to return initial value based functions


// incrementor function 

// Function createinc(int n) => (int num) => num + n ; // this can be heavily shortened as		
						       // dart automatically detect return and input type for functions

createinc(n) => (num) => num+n; 


main() {

	var n= 10 ;

	var inc10 = createinc(10);  // we want a function which does something example here always 
				    //increments the value by 10
	
	print("Incrementor used on $n gives - ${inc10(n)}");
}