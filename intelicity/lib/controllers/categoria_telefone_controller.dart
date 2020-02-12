import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class CategoriaTelefone {

  int tamanho = 0;
  var categorias = null;

  Future getCategorias() async{

    final String url = globals.url + 'comum/telefones';

    Dio dio = Dio();

    Response response;
    print('2------ depois dio');

    response = await dio.get(url, options: Options(headers: {
      "Authorization": "token " + globals.credenciais
    }));


    print(response.data);

    tamanho = response.data.length;
    categorias = response.data;

  }

}