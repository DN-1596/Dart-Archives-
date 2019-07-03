main() {

String a = "abc" ;
String b = "def" ; 
int v = 10;
String s= "abcd";

print("Welcome to "+ s); // concatenation 1st way 
print("To do ${s}");  // concatenation 2nd way

print("Concatenated string - $a , $b  , ghi , ${v+10}");
print("Implementing Modifications implicitly to strings ${a.toUpperCase()}");

}