
// Asynchrony support

import 'dart:async';


Future<void> lengthyprocess1(int n) async {
  var y = await lengthyprocess2(n); 
  print("Obtained Multiple: $y");
}


Future<int> lengthyprocess2(int n) async {
  n*=1000;
  Future.delayed(Duration(seconds: 10));
  return n;
}

process1() {
  print("Running process 1");
}

Future<int> process2(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> mystream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}


main() async {
  int n = 10 ;
  var stream = mystream(n);
  lengthyprocess1(n);
  process1();
  var sum = await process2(stream); 
  print("The sum is $sum");  
  
}