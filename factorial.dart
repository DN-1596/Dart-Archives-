// Calculating factorial of a given n using bactracking 



main() {
	
	var n= 6;
	int calfac(i,n) => (i==n) ? i : i*calfac(++i,n);
	print ("Factorial of $n is :- ${calfac(1,n)}");
	 

} 