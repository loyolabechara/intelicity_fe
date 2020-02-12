import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class Telefone {

  int tamanho = 0;
  var telefones = null;

  Future getTelefones(int indice) async{

    print ('indice');
    print(indice);

    final String url = globals.url + 'comum/telefones/'+indice.toString();

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    telefones = response.data;

  }

}