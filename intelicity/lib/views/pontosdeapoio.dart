import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/pontos_de_apoio_controller.dart';

class PontosDeApoioPage extends StatefulWidget {
  @override
  _PontosDeApoioPageState createState() => _PontosDeApoioPageState();
}

class _PontosDeApoioPageState extends State<PontosDeApoioPage> {

  PontosDeApoio pontosDeApoio = PontosDeApoio();

  var pontos = [];

  void initState() {

    super.initState();

    pontosDeApoio.getPontos().then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Pontos de Apoio'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Relação de Pontos de Apoio', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
          ),

          Container(
            height: 15,
          ),

          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        color: Colors.white70,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                  pontosDeApoio.pontos[index]['nome'],
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                              ),
                              Container(height: 10,),
                              Text(
                                pontosDeApoio.pontos[index]['endereco']+', '+pontosDeApoio.pontos[index]['numero'],
                              ),
                              Text(
                                'Bairro: '+pontosDeApoio.pontos[index]['bairro']['nome'],
                              ),
                              Text(
                                'Celular: '+pontosDeApoio.pontos[index]['celular'],
                              ),
                              FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(18.0),
                                  ),
                                  color: Colors.blue,
                                  onPressed: (){},
                                  child: Text(
                                      'Mapa'
                                  ),
                              )
                            ],
                          ),
                        ),
                    ),
                  );

                },
                itemCount: pontosDeApoio.tamanho,
            ),
          )
        ],
      ),
    );
  }
}