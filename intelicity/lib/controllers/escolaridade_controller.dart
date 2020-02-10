import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class Escolaridade {

  int tamanho = 0;
  var escolaridades = null;

  Future getEscolaridades() async{

    final String url = globals.url + 'bemprego/escolaridades';

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    escolaridades = response.data;

  }

}