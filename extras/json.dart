
import 'dart:convert';

void main() {
  String json = '''
    {
      "usuario": "aleff.stampini",
      "senha": 1234,
      "permissoes": [
        "owner",
        "admin"
      ]
    }
  ''';  

  print(json);

  Map resultJson = jsonDecode(json);
  
  print(resultJson); 
  print(resultJson.runtimeType);
  print(resultJson["usuario"]);
  print(resultJson["permissoes"]);
  print(resultJson["permissoes"][0]);

  Map mapa = {
    "nome": "aleff",
    "pass": 123,
    "permissoes": ["owner", "admin"]
  };

  print(mapa);

  var result = jsonEncode(mapa);

  print(result);
}