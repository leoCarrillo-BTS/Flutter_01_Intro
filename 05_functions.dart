void main(){
  print (greetEveryone());
  print (byEveryone());
  print ('suma : ${addTwoNumbers(10,20)}');
  print ('suma_arrow : ${addTwoNumbers(11,21)}');
  print (greetPerson(name:'Leo'));
  print (greetPerson(name:'Leo', message:'Hello'));
}

String greetEveryone (){
  return 'Hello everyone';
}

String byEveryone () => 'Bye Everyone';

int addTwoNumbers (int a, int b) {
  return a + b;
}

int addTwoNumbersArrow (int a, int b) => a + b; 

// Opcionales con llaves cuadradas
int addTwoNumbersOpytional (int a, [int? b]) {
  
  //b = b ?? 0;
  b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'Hola,'}){
  return '$message $name';
}
