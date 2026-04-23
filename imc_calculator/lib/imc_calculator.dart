import 'dart:convert';
import 'dart:io';

double showConoleAndReturnDouble(String text, double num) {
  print(text);
  return num;
}

String readConsole(String text) {
  print(text);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double readConsoleDouble(String text) {
  var numero = double.tryParse(readConsole(text));
  if (numero == null || numero <= 0.0) {
    print("Número não deve ser nulo ou zero");
    return 0.0;
  } else {
    return numero;
  }
}

void imc(double peso, double altura) {
  double imcValue = peso / (altura * altura);
  print(imcValue.ceil());
  if (imcValue < 16.0) {
    showConoleAndReturnDouble("Magreza Grave / IMC: $imcValue", imcValue);
  } else if (imcValue == 16 || imcValue < 17) {
    showConoleAndReturnDouble("Magreza Moderada / IMC: $imcValue", imcValue);
  } else if (imcValue == 17 || imcValue < 18.5) {
    showConoleAndReturnDouble("Magreza Leve / IMC: $imcValue", imcValue);
  } else if (imcValue == 18.5 || imcValue < 25) {
    showConoleAndReturnDouble("Saudável / IMC: $imcValue", imcValue);
  } else if (imcValue == 25 || imcValue < 30) {
    showConoleAndReturnDouble("Sobrepeso / IMC: $imcValue", imcValue);
  } else if (imcValue == 30 || imcValue < 35) {
    showConoleAndReturnDouble("Obresidade Grau 1 / IMC: $imcValue", imcValue);
  } else if (imcValue == 35 || imcValue < 40) {
    showConoleAndReturnDouble("Obresidade Grau 2 / IMC: $imcValue", imcValue);
  } else if (imcValue >= 40) {
    showConoleAndReturnDouble("Obresidade Grau 3 / IMC: $imcValue", imcValue);
  }
}
