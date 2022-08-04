void main() {
  
  List<String> jogos = [];
  
  jogos.add("CS");
  jogos.add("Valorant");

  // estruturas de repetição
  int i = 1;
  while (i < 10) {
    print(i);
    i++;
  }

  for (var i = 0; i < 10; i++) {
    print(i);
  }

  jogos.forEach((jogo) {
    print('jogo: $jogo');
  });

}