import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/agenda_assunto_controllers.dart';

class AgendaAssuntoPage extends StatefulWidget {

  final int indice;

  const AgendaAssuntoPage({
    Key key,
    @required this.indice,
  }) : super(key: key);

  @override
  _AgendaAssuntoPageState createState() => _AgendaAssuntoPageState();
}

class _AgendaAssuntoPageState extends State<AgendaAssuntoPage> {

  AgendaAssunto agendaAssunto = AgendaAssunto();

  var assuntos = [];

  void initState() {

    super.initState();

    agendaAssunto.getEventos(widget.indice).then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Assunto'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Relação de Assuntos', style: const TextStyle(
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
                            agendaAssunto.assuntos[index]['descricao'],
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          Text(
                            agendaAssunto.assuntos[index]['dt_evento'],
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                        ],
                      ),
                    ),
                  ),
                );

              },
              itemCount: agendaAssunto.tamanho,
            ),
          )
        ],
      ),
    );
  }
}