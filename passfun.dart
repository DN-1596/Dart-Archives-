int cube1(n,Function fun) {

	return n*square1(n);
}

int square1(n) => n*n;

main() {
	
// Simple prog to show how to pass functions as values
   

// Without Function Signature
	
	int n= 5 ;	
	print ("Cube of ${n} is  :- ${cube1(n,square1)}");

// WITH function signature 

	n = 10 ; 
	int cube2(n,int square2(int a)) => n*square2(n);
	print("Power to 4 of ${n} is ${n*cube2(n,(n)=>n*n)}");	 

} 