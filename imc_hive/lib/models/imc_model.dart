import 'package:hive/hive.dart';

part 'imc_model.g.dart';

@HiveType(typeId: 0)
class ImcModel extends HiveObject {
  @HiveField(0)
  double? peso;

  @HiveField(1)
  double? altura;

  ImcModel();

  ImcModel.vazio() {
    peso = 0;
    altura = 0;
  }
}