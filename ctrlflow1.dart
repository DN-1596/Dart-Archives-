main() {

// if else statement

var a = 45; 


if(a is num) {
	print("The value is number!");
	if (a <= 10) {
		print("The 12th multiple of ${a} is ${a*12}");
	}
	else {
		(a%2 == 0) ? print("$a is even") : print("$a is odd");  // single line expression expr1 ? expr2 : expr3
	} 
}
else {
	print("The entered variable is $a");
}

  var b,d;
  b = 2;
  print(a ~/ b );  // ~/ return the nearest lesser integer to the answer 
  d = null ; 
  print( (d==null) ?? a+b ); 
  //print('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1'); I cannot understand this
  
 

}