
void main() {
  // classes e atributos
  Celular celular = Celular("azul", 4, 10.1, 45.16);

  print(celular.cor);
  print(celular);
  print(celular.calcValor(1000));

  // encapsulamento
  Carro mercedes = Carro("mercedes", 1200);
  Carro gol = Carro("gol", 1450);

  gol.setValor = 1111;

  print(gol.getValor);
  print(mercedes.getValor);

  // herança
  Aleff aleff = Aleff();
  print(aleff.falar());

  // polimorfismo
  Pagamento pagamento = Pix();
  pagamento.pagar();

  pagamento = Boleto();
  pagamento.pagar();
}

abstract class Pagamento {
  void pagar();
}

class Boleto implements Pagamento {
  @override
  void pagar() {
    print("pagamento com boleto!");
  }
}

class Pix implements Pagamento {
  @override
  void pagar() {
    print("pagamento com pix!");
  }
}

class Pai {
  String falar() {
    return "Oi";
  }
}

class Aleff extends Pai {}

// abstração
abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  String comunicar() {
    return "Hello World!";
  }  
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }  
}

class Carro {
  String _modelo;
  int _valor = 1000;

  Carro(this._modelo, this._valor);

  String get getModelo => _modelo;
  int get getValor => _valor;

  void set setModelo(String modelo) => _modelo = modelo;
  void set setValor(int valor) => _valor = valor;
}

class Celular {
  final String cor;
  final int qtdProcessadores;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdProcessadores, this.tamanho, this.peso);

  @override
  String toString() {
    return 'cor: $cor'
    +'\nquantidade de processadores: $qtdProcessadores'
    +'\ntamanho: $tamanho' 
    +'\npeso: $peso';
  }

  double calcValor(double valor) {
    return valor * qtdProcessadores;
  }
}