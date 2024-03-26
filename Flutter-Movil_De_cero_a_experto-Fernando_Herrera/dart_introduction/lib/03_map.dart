void maps(){
  final Map<String,dynamic> pokemon = {
    "name":"Ditto",
    "isAlive":true,
    "hp":100,
    "abilities": <String>['impostor'],
    "sprites": <int,String>{
      1:'sprite1',
      2:'sprite2',
      3:'sprite3'
    }
  };

  print(pokemon['name']);
  print(pokemon['sprites'][1]);
}