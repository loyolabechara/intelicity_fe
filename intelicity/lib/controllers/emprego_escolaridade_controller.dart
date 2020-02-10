import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class EmpregoEscolaridade {

  int tamanho = 0;
  var vagas = null;

  Future getVagas(int escolaridade) async{

    final String url = globals.url + 'bemprego/vagas/'+escolaridade.toString();

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    vagas = response.data;

  }

}