/*class Erro{
  static bool _erro;
  static String _mens;

  static set error(bool erro){
    _erro = erro;
  }
  static set msg(String mens){
    _erro = true;
    _mens = mens;
  }
  static get error => _erro;
  static get msg => _mens;
}*/ // Exemplo do Livro com Erro

class Erro { //mudança aqui no inicio somente
  static bool _erro = false; // Inicializado como false para evitar valores nulos
  static String _mens = ""; // Inicializado como string vazia para evitar valores nulos

  static set error(bool erro) {
    _erro = erro;
  }

  static set msg(String mens) {
    _erro = true; // Configura erro automaticamente ao definir uma mensagem
    _mens = mens;
  }

  static bool get error => _erro; // Especificado tipo de retorno
  static String get msg => _mens; // Especificado tipo de retorno
}
