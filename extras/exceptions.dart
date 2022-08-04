void main() {
  try {
    print((2 / 0).toInt());    
  } catch (e, stackStrace) {
    // print('printando erro $e');
    // rethrow; // propagar o erro
    // throw Exception("Ocorreu um erro");
  }

  try {
    Login login = Login();  
    login.logar();
  } on PasswordLengthException catch (e) {
    print("falhou ao logar");
  } catch(e) {
    print("outro erro");
  } finally {
    print("finalizou");
  }
}

class Login {
  void logar() {
    String user = "admin";
    String pass = "123";
    if (pass.length <= 6) {
      throw PasswordLengthException();
    }
  }
}

class PasswordLengthException implements Exception {
  PasswordLengthException();
}