
void main() {

  // tipos
  String nome = "aleff";
  int idade = 20;
  double valorPagoMensalmente = 1601.01;
  bool maiorIdade = true;

  // listas
  List<String> jogos = [];
  
  // add lista
  jogos.add("CS");
  jogos.add("Valorant");

  // printar valores
  print(jogos);
  print('${jogos[0]} - ${jogos[1]}');

  // null-safety
  String? mensagem;
  late String descricao;

  mensagem = "hello world";
  descricao = "yeah!";

  // print(mensagem!);
  print(descricao);

  mensagem = null;

}