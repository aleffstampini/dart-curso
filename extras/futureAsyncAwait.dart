
void main() async {
  // Future, Async e Await
  Future<String> cepFuture = getCepByName("Rua ABC");
  late String cep;
  cep = await cepFuture;
  print(cep);
}

// external service
Future<String> getCepByName(String name) {
  // simulação requisição
  return Future.value("09361110");
}