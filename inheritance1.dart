
// inheritance without constructors

class parent {
  String p="vParent" ; 
  parmethod() {
    print("Running parmethod");
  }
  
  
}

class A extends parent {
  String a = "vA"; 
  Amethod() {
    print("Running Amethod");
    super.parmethod();   // accessing parent function
  }
  parmethod() {
    print("Overriding parmethod");
  }
}


main() {
  var ia = A(), ip = parent(); 
  
  print("parent parameter: ${ip.p}");
  print("Calling parmethod using parent instance");
  ip.parmethod();
  
  print("A parameter: ${ia.a}");
  print("Calling Amethod using A instance"); 
  ia.Amethod();
  
  print("Running override") ;
  ia.parmethod();
  
  print("The parent variable as accessed from the child class: ${ia.p}");
  
 
  
}