class IMC {
  IMC(this._peso, this._altura);

  double _peso = 0.0;
  double _altura = 0.0;

  String calculateIMC() {
    if (_peso <= 0 || _altura <= 0) {
      throw ArgumentError("Valor não pode ser menor ou igual a zero");
    }

    double imc = _peso / (_altura * _altura);
    double imcValue = double.parse(imc.toStringAsFixed(1));

    if (imcValue < 16.0) {
      return "Magreza Grave / IMC: $imcValue";
    } else if (imcValue == 16 || imcValue < 17) {
      return "Magreza Moderada / IMC: $imcValue";
    } else if (imcValue == 17 || imcValue < 18.5) {
      return "Magreza Leve / IMC: $imcValue";
    } else if (imcValue == 18.5 || imcValue < 25) {
      return "Saudável / IMC: $imcValue";
    } else if (imcValue == 25 || imcValue < 30) {
      return "Sobrepeso / IMC: $imcValue";
    } else if (imcValue == 30 || imcValue < 35) {
      return "Obresidade Grau 1 / IMC: $imcValue";
    } else if (imcValue == 35 || imcValue < 40) {
      return "Obresidade Grau 2 / IMC: $imcValue";
    } else if (imcValue >= 40) {
      return "Obresidade Grau 3 / IMC: $imcValue";
    }
    return "IMC indisponível";
  }
}
