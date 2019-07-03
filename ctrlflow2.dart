import 'dart:math';


String callfun(){ 			// function with a return type 
	return "Function basics introduction";
}

String getstring() => "abc"; // inline function application 

int calculatesum(int a,int b,[int x]) {

}

main() {
	print("To do ${callfun()}"); 
	print(getstring());
	
	// inline function example 
	int square(int a) => pow(a,2); // syntax of inline
	print("The square of 5 is ${square(5)}");

	// optional parameters example 	
	int calculatesum(int a,int b,[int x]) => x ?? a+b;  // why is there error here?? 
	print("The obtained sum is ${calculatesum(1,2)}") ;	
	
	// optional named parameters example
	int fun1(int a, int b , {int c}) => c ?? pow(a+b,2);
	print("Optional named parameter - present ${fun1(1,2,c:3)} , not present ${fun1(1,2)}");

	// optional named parameters with default value example
	int fun2(int a, int b , [int c=1]) => a+b+c;
	print("Optional named parameter with default value - present ${fun2(1,2,3)} , not present ${fun2(1,2)}");
	

	
}	