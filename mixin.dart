
//  MIXINS - icecream example 

// mixin - help code reusability 
// mixin - cannot have constructors, cannot have a super class
// Unless you want your mixin to be usable as a regular class, use the mixin keyword instead of class. 


mixin ChocoChips {          // mixins are much like variables so define them above
    String addonname = "Chocochips",cproperty = "Crunchy", cuse = 'bitter sweet' ; 
    
    choco() {
      print("Adding ChocoChips");
    }    
  }

mixin Almonds {
  String addonname = "Almonds",aproperty = "Crunchy", ause = "High Protein"; 
  
  almond() {
    print("Adding Almonds");
  }
}

abstract class icecream {
  String color,source;  
  method();
}


class vanilla  with ChocoChips,Almonds implements icecream {  // with must be before imple..
  String name = "Vanilla",color,source,addonprop,addonuse ; 
  vanilla(this.color,this.source) {
    print("""
    Color of Vanilla : $color
    Source of Vanilla: $source
    """);
  }
  
  @override
  method() {
   print("Processing Vanilla icecream"); 
   almond();
   addonprop = aproperty;
   addonuse = ause;    
  }
  
}

class strawberry with ChocoChips,Almonds implements icecream  {
  String name = "Strawberry",color,source,addonprop,addonuse ; 
  strawberry(this.color,this.source) {
    print("""
    Color of Strawberry : $color
    Source of Strawberry: $source
    """);
  }
  @override
  method() {
    print("Processing Strawberry icecream");
    choco();
    addonprop = cproperty;
   addonuse = cuse;  
  }    
}


main() {
  var icevan = new vanilla("White","Orchids");
  var icestr = new strawberry("Pink","Strawberry Fruit");
  
  icevan.method();
  
  print("""
  The Add on for ${icevan.name} is ${icevan.addonname}
  with property ${icevan.addonprop} and used for ${icevan.addonuse}
  """);
  
  icestr.method();
  print("""
  The Add on for ${icestr.name} is ${icestr.addonname}
  with property ${icestr.addonprop} and used for ${icestr.addonuse}
  """);  
  
}
