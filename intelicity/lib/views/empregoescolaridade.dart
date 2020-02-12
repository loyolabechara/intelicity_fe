import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/emprego_escolaridade_controller.dart';

class EmpregoEscolaridadePage extends StatefulWidget {

  final int indice;

  const EmpregoEscolaridadePage({
    Key key,
    @required this.indice,
  }) : super(key: key);

  @override
  _EmpregoEscolaridadePageState createState() => _EmpregoEscolaridadePageState();
}

class _EmpregoEscolaridadePageState extends State<EmpregoEscolaridadePage> {

  EmpregoEscolaridade empregoEscolaridade = EmpregoEscolaridade();

  var vagas = [];

  void initState() {

    super.initState();

    empregoEscolaridade.getVagas(widget.indice).then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Vagas'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Relação de Vagas', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
          ),

          Container(
            height: 15,
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {

                String _sexo;

                if(empregoEscolaridade.vagas[index]['sexo'] == 'M'){
                  _sexo = 'Masculino';
                } else
                  if(empregoEscolaridade.vagas[index]['sexo'] == 'F') {
                    _sexo = 'Feminino';
                  } else {
                    _sexo = 'Ambos';
                  }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            empregoEscolaridade.vagas[index]['cargo']['nome'],
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          Text(
                            'Sexo: ' + _sexo,
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          Text(
                            'Data Inclusão: ' + empregoEscolaridade.vagas[index]['dt_inclusao'],
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                        ],
                      ),
                    ),
                  ),
                );

              },
              itemCount: empregoEscolaridade.tamanho,
            ),
          )
        ],
      ),
    );
  }
}