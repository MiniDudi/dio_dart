class Pessoa {
  Pessoa(String name, double peso, double altura) {
    _name = name;
    _peso = peso;
    _altura = altura;
  }

  String _name = "";
  double _peso = 0.0;
  double _altura = 0.0;

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return "Nome: $_name, Peso: $_peso, Altura: $_altura";
  }
}
