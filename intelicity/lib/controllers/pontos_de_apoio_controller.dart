import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class PontosDeApoio {

  int tamanho = 0;
  var pontos = null;

  Future getPontos() async{

    final String url = globals.url + 'dcivil/pontosapoio/0';

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    pontos = response.data;

  }

}