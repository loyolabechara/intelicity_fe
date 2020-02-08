import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class AgendaAssunto {

  int tamanho = 0;
  var assuntos = null;

  Future getEventos() async{

    final String url = globals.url + 'agenda/agendas';

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    assuntos = response.data;

  }

}