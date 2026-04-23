import 'package:imc_calculator/imc_calculator.dart' as imc;
import 'package:test/test.dart';

void main() {
  test('Calcular imc', () {
    expect(imc.imc(83, 1.87), 23.7);
  });

  test('Calcular imc com peso zero', () {
    expect(() => imc.imc(0, 1.87), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular imc com altura zero', () {
    expect(() => imc.imc(83, 0), throwsA(TypeMatcher<ArgumentError>()));
  });
}
