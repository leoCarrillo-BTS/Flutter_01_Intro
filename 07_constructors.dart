void main(){
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'money',
    'isAlive': true
  };
  
  final ironMan = Hero.fromJson(rawJson);
  print (ironMan);
  
  final wolverine = Hero(
    name:'Logan', 
    power:'Regeneration',
    isAlive: true
  );
  
  print (wolverine);
  print (wolverine.name);
  print (wolverine.power);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  // Constructor corto
  Hero({
    required this.name, 
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No Name',
      power = json['power'] ?? 'No Power',
      isAlive = json['isAlive'] ?? true;
  
  /*
  // Constructor
  Hero(String pName, String pPower)
    : name = pName,
      power = pPower;
      */
  
  @override
  String toString(){
    return '$name - $power - ${isAlive? 'ALIVE': 'DEAD'}';
  }
}