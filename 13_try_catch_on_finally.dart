void main()async {
  
  print('inicio del programa');
  
  try {
    final value = await httpGet('http://www.google.com');  
    print('Success : $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch(err){
    print('Error : $err');
  } finally {
    print('Fin del try catch');
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
  //return 'Valor de la petición';
  throw Exception('No hay parametros en url');
  
    /*
  return Future.delayed(const Duration(seconds:1),(){
    
    throw 'Error en la petición http';
    
    //return 'Respuesta http';
  });
  */
}