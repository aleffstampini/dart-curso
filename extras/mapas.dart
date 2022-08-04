void main() {
  // listas
  List<String> lista = ["Aleff", "Jefferson"];
  
  print(lista[0]);

  // mapas
  Map<String, String> mapa = {"chave": "valor", "chave2": "valor2"};
  
  print(mapa["chave"]);

  mapa["chave3"] = "valor3";
  mapa.putIfAbsent("chave4", () => "chave4");
  
  mapa.remove("chave");

  mapa.update("chave3", (value) => "valor3atualizada");
  mapa["chave4"] = "valor4atualizada";

  print(mapa);

  mapa.forEach((key, value) {
    print('chave: $key\nvalor: $value');
  });

  mapa.keys.forEach(print);
  mapa.values.forEach(print);
}