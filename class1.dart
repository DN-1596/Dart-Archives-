main() {	
	
	// initializing without constructors 
/*	
	var stu = Student();
	stu.name = "Alpha";
	stu.grade = 11;
	stu.p = 88;
	stu.m = 95;
	stu.c = 91;
	 
*/ 

	// Initializing with constructors
  
  //var stu = new Student("Beta",11,88,95,91); // Default Constructor
  var stu = new Student.info("Beta",11,85,95,91,"Alpha","Gamma",200000);//named constructor
  stu.p = 88;
  
  // Setting favsub attribute manually
  stu.favsub = "Maths" ; 
  // Getting fac sub attribut manually
  print("Favourite Subject of ${stu.name} is ${stu.getfavsub}");
  print("Percentage scored ${(stu.getperc).toStringAsFixed(2)}");

}

class Student{
  
	static const double maxmarks = 300;
	String name,favsub,father,mother;
	int grade;
	double p,c,m,perc,faminc;
  bool schsp ; //scholarship eligibility
  
/* // At a time run either default or named constructor
 
	// Using default constructors (Syntactic Sugar constructors) 	
	Student(this.name,this.grade,this.p,this.c,this.m) {

	print("""
  $name of Class: $grade
  has secured the following marks
  Physics: $p
  Chemistry: $c
  Maths: $m
  """);	
	}
*/ 
  
  // Named constructor definition 
  Student.info(this.name,this.grade,this.p,this.c,this.m,
               this.father,this.mother,this.faminc) 
  {
  this.schsp = (faminc < 250000) ? true : false;
	print("""
  $name of Class: $grade
  has secured the following marks
  Physics: $p
  Chemistry: $c
  Maths: $m

  Additional Information
  Father Name: $father
  Mother Name: $mother
  Eligible for Scholarship: $schsp
  """);
  }
  
  // Getter and Setter 
  
  set setfavsub(sub) => favsub = sub ;
  String get getfavsub => favsub; 
  double get getperc => perc = 100*(p+c+m)/maxmarks; 
	 
}
