import 'package:imc_calculator/classes/pessoa.dart';
import 'package:imc_calculator/imc_calculator.dart' as imc;

void main(List<String> arguments) {
  print("Bem vindo a calculadora de IMC");

  String nome = imc.readConsole("Digite seu nome");
  double peso = imc.readConsoleDouble("Digite seu peso em metros");
  double altura = imc.readConsoleDouble("Digite sua altura em quilos");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  double pessoaPeso = pessoa.getPeso();
  double pessoaAltura = pessoa.getAltura();

  imc.imc(pessoaPeso, pessoaAltura);
}
