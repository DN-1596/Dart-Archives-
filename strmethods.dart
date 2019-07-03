
// Various string method Regexp not included

main () {
  var str = "a b c d rty f g h";
  print(str.contains('rty',6));              

  print(str.indexOf('rty',1));                  
  
  print(str.replaceAll('rty f g h', 'e'));
  var y = str.replaceAll('rty f g h', 'e');
  print("Length of \"" + str + "\" is ${str.length}"); 
  print("Length of Modified \"" + y + "\" is ${y.length}"); 
  
}