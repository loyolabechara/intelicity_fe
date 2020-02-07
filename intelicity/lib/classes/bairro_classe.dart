import 'dart:convert';
import 'package:intelicity/models/globals.dart' as globals;
import 'package:http/http.dart' as http;


class Bairro {

  Future carregaBairro(_id_cidade) async {
    final String url = globals.url + 'bairros/'+_id_cidade;
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

    print('Credenciais: '+globals.credenciais);

    final response = await http.get(
      url,
      headers: {"Authorization": "token " + globals.credenciais},
    );

    if (response.statusCode == 200) {

      print(response.body);

      String x = '{"id":0,"cidade_id":0,"nome":"Selecionar"}';


      var teste = json.decode(response.body);

      print(teste.runtimeType);
      teste.insert(0, json.decode(x));
      print (teste);

      return teste;

    } else {
      throw Exception('Failed to load bairros');
    }





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