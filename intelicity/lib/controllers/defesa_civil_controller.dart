import 'package:intelicity/models/globals.dart' as globals;
import 'package:dio/dio.dart';

class DefesaCivil {

    Future getSituacao() async{

      final String url = globals.url + 'dcivil/situacao';

      Dio dio = Dio();

      Response response;
      print('2------ depois dio');

      response = await dio.get(url, options: Options(headers: {
        "Authorization": "token " + globals.credenciais
      }));


      print(response.data);

      return response.data;

    }
}