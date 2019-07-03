main() {
	/*
	//throw '\n**** no code found ****\n';
	
	// examples of catch, stacktrace,finally applications - Doubts ??? 
	
	// Case 1	
 
	try {
	// Vulnerable to error code	
 	var x = 0 ;
	int y = 10;
	int z = y~/x ;
	} on IntegerDivisionByZeroException {
		print("Invalid function call! Invalid Operation - Division by zero");
	}
	
	// case 2

	try {
	// Vulnerable to error code	
 	var x = 0 ;
	int y = 10;
	int z = y~/x ;
	} catch(e) {
		print("Error caught is $e");
	}
 
	*/
	// case 3 

	try {
	// Vulnerable to error code	
 	var x = 0 ;
	int y = 10;
	int z = y~/x ;
	} catch(e,s) {
		print("Error caught is $e");
		print("\n ** Stack trace :- \n ** $s \n");
	} finally {
		print("The finally clause is always executed!! ");
	}


}