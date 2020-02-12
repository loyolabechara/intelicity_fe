import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class MinhasSolicitacoes {

  int tamanho = 0;
  var solicitacoes = null;

  Future getSolicitacoes() async{

    final String url = globals.url + 'solicitacao/solicitacoes';

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    solicitacoes = response.data;

  }

}