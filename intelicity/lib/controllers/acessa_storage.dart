import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/globals.dart' as globals;


class AcessaStorage {
//  String id;
//  String token;

  Future<String> pega_usuario() async {
    // Verifica se dados do usuário estão salvos no Storage

    final storage = new FlutterSecureStorage();

    // Grava para teste

    await storage.write(key: 'id', value: '40');
    await storage.write(key: 'token', value: '7370ff9b19cb4a54783e395980c4e169dd5927a3');


    // Retirar essa linha
    // await storage.deleteAll();

    String id = await storage.read(key: 'id');

    if (id != null) {
      globals.id = id;
      globals.token = await storage.read(key: 'token');
      return 's';
    } else {
      return 'n';
    }
  }


}