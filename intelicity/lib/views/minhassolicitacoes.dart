import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/minhas_solicitacoes_controller.dart';

class MinhasSolicitacoesPage extends StatefulWidget {

  @override
  _MinhasSolicitacoesPageState createState() => _MinhasSolicitacoesPageState();
}

class _MinhasSolicitacoesPageState extends State<MinhasSolicitacoesPage> {

  MinhasSolicitacoes minhasSolicitacoes = MinhasSolicitacoes();

  var alertas = [];

  void initState() {

    super.initState();

    minhasSolicitacoes.getSolicitacoes().then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Solicitações'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Histórico de Solicitações', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
          ),

          Container(
            height: 15,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: minhasSolicitacoes.tamanho,
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
                            minhasSolicitacoes.solicitacoes[index]['assuntosolicitacao']['descricao'],
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

                          ),
                          Container(height: 10,),
                          Text(
                            minhasSolicitacoes.solicitacoes[index]['descricao'],
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                          ),
                          Container(height: 10,),
                          Container(
//                            margin: EdgeInsets.all(100.0),

                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                minhasSolicitacoes.solicitacoes[index]['situacao']['descricao'],
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                              ),
                            ),

                            decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(25.0),
                                )
                            ),

                          ),
                          Container(height: 10,),
                          Text(
                            'Data/Hora: '+minhasSolicitacoes.solicitacoes[index]['dt_inclusao'],
                          ),
                        ],
                      ),
                    ),
                  ),
                );

              },
            ),
          )
        ],
      ),
    );
  }
}