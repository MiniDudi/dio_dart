import 'package:hive/hive.dart';
import 'package:imc_hive/models/imc_model.dart';

class ImcRepository {
  static late Box _box;

  ImcRepository._criar();

  static Future<ImcRepository> carregar() async {
    if (Hive.isBoxOpen('imcModel')) {
      _box = Hive.box('imcModel');
    } else {
      _box = await Hive.openBox('imcModel');
    }
    return ImcRepository._criar();
  }

  salvar(ImcModel imcModel) {
    _box.put('dadosCadastraisModel', imcModel);
  }

  ImcModel obterDados() {
    var imcModel = _box.get('dadosCadastraisModel');
    if (imcModel == null) {
      return ImcModel.vazio();
    }
    return imcModel;
  }
}