import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/escolaridade_controller.dart';

class EmpregoPage extends StatefulWidget {
  @override
  _EmpregoPageState createState() => _EmpregoPageState();
}

class _EmpregoPageState extends State<EmpregoPage> {

  Escolaridade escolaridade = Escolaridade();

  var escolaridades = [];

  void initState() {

    super.initState();

    escolaridade.getEscolaridades().then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Balcão de Emprego'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Escolaridade', style: const TextStyle(
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
                  child: GestureDetector(
                    onTap: (){
                      print (escolaridade.escolaridades[index]['id']);
                      Navigator.pushNamed(context, '/EmpregoEscolaridade', arguments: escolaridade.escolaridades[index]['id']);
                    },
                    child: Card(
                      color: Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              escolaridade.escolaridades[index]['descricao'],
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );

              },
              itemCount: escolaridade.tamanho,
            ),
          )
        ],
      ),
    );
  }
}