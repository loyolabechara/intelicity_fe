import 'dart:convert';
import 'package:intelicity/globals.dart' as globals;
import 'package:http/http.dart' as http;


class Cidade {

  Future carregaCidade() async {
    final String url = globals.url + 'cidades/';
 //   try{

      print('1------  ${url}');

//      Response response;

//      print('2------');

//      Dio dio = Dio();

//      print('2------ depois dio');

//      response = await dio.get(url, options: Options(headers: {
//        "Authorization": "token 4e311a012c9297992d409407e86ba40a08521986"
//      }));

////////////////////

      final response = await http.get(
          url,
        headers: {"Authorization": "token 4e311a012c9297992d409407e86ba40a08521986"},
      );

      if (response.statusCode == 200) {

        return json.decode(response.body);

      } else {
        throw Exception('Failed to load photos');
      }
      print(response.statusCode);





      //////////////

//      print('vai notificar===========' + response.data.toString());

//      var x = [{"nome":"Nova Friburgo"}];
//      var x = ["Nova Friburgo"];

//      print (x);

//     return x;
//      print(response.data);
//      var decodeJson = jsonDecode(response.data);

      print('Tipo1:');
//      print(response.data.runtimeType);
      print('Tipo2:');
//      print(jsonDecode(response.data).runtimeType);
//      return jsonDecode(response.data);
//      return jsonDecode(response.data);
//    } catch(error) {
//      print('Erro no acesso a cidades: ' + error.toString());
    }
//  }

}