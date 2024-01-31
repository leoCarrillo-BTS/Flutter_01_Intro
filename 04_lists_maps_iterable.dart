void main(){
  final numbers = [1,2,3,3,3,4,5,6,7,8,8,9];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reversed ${numbers.reversed}');
  
  final reversed = numbers.reversed;
  print('Iterable $reversed');
  print('List ${reversed.toList()}');
  print('Set ${reversed.toSet()}');
  
  final greaterThanFive = numbers.where((num){
    return num > 5;
  });
  
  print('num > 5 ${greaterThanFive.toSet()}');
}