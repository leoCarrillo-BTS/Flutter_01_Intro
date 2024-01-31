void main()async {
  
  print('inicio del programa');
  
  try {
    final value = await httpGet('http://www.google.com');  
    print(value);
  } catch(err){
    print('Error : $err');
  }
  
  /*
  httpGet('http://www.google.com')
    .then((value){
      print(value);
    })
    .catchError((err){
      print('Error : $err');
    });
  */
  
  print('fin del programa');
}


Future <String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds:2));
  //throw 'Error en la petición http';
  return 'Valor de la petición';
  
    /*
  return Future.delayed(const Duration(seconds:1),(){
    
    throw 'Error en la petición http';
    
    //return 'Respuesta http';
  });
  */
}