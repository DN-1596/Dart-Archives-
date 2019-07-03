// Abstract class and interface 

class A {
  String a;
  A(this.a) {
    print("The parameter defined is: "+ a);
  }
  Amethod() {
    print("Running A method"); 
  }
  
//   @override
//   void noSuchMethod(Invocation invocation) {
//     print('You tried to use a non-existent member: ' +
//         '${invocation.memberName}');
//   }
}


abstract class Idea {
  String ideapar;  
  bool checkideavalidity(); 
  executeidea(); 
  
} 

class B extends A implements Idea { // here Idea is the interface and A is the parent class
  bool ca; 
  String ideapar;
  
  B(this.ca,this.ideapar,a) : super(a) {
    print("We just defined an $ideapar");
  }
  
  
  @override
  bool checkideavalidity() => ca ; 
  
  @override
  executeidea() {
    print("Executing Idea");
  }
     
}


main() {
  
  
  var b = B(true,"Abstract Idea" , "Parent parameter" );
  print(b.checkideavalidity());
  b.executeidea();
  
  // use of super parent class Object which has an attribute runtimeType and many others like it
  
  int y =10;
  double x = 6.666;
  
  (y.runtimeType == x.runtimeType) ? print("Both are of the same type ${x.runtimeType}") : print("The variables are of different type");
  
  // Exception handling 
  
  var a = A("Parameter max A");

//  This is not working 
//  try {
//      var x= a.getmaxparameter();
//   } on NoSuchMethodError {
//      print(" The method Does not exist.");
//   } finally {
//      print("Please define the requested method");
//   }
}