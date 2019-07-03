
// inheritance with constructors

class A {
  int a1,a2,a3; 
  
  A(this.a1,this.a2,this.a3) {
    print("A constructor initiated");
  }
  
  displayA() {
    print("Parameters are: $a1,$a2,$a3 ");
  }
}

class B extends A {
  int b1,b2,b3; 
  
  B(this.b1,this.b2,this.b3,a1,a2,a3): super(a1,a2,a3) {
    print("B constructor initiated");
  } 
  
  displayA() {
    print("As seen from B the A Parameters are: $a1,$a2,$a3 ");
  }
  
  String toString() => "B Parameters are:- $b1,$b2,$b3" ; // overriding parent function of
                                                          // Object class
  
}

main() {
  var a = new A(2,4,5);
  a.displayA();
  var b = new B(6,7,8,1,4,5); 
  print("\n Child class ops:- \n");
  b.displayA();
  print(b.toString());   
   
}