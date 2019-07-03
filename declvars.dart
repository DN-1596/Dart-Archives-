main() { 
/*
// flexible variable
var var1 = "Abcd"; // makes the type of var1 rigid

//var1 = 10; print(var1); // gives error here as var1 can now be only of type string

var var2 ; 

var2 = 10 ; print(var2); // here value of var2 is of type int
 
var2 = 'ert' ;  print(var2); // forcefully changing the type to string this time it will work 
//as the type wasn't declared during initialization hence it is flexible

int a = 10;

double b = a/3;  
print(b);
*/

// Type casting  
int a = 10 ; 
String s = "111" ;

print("The result of type casting is ${a + int.parse(s)}"); 

}