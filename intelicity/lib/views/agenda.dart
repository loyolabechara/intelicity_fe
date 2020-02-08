import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/agenda_controller.dart';

class AgendaPage extends StatefulWidget {
  @override
  _AgendaPageState createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {

  Agenda agenda = Agenda();

  var assuntos = [];

  void initState() {

    super.initState();

    agenda.getAssuntos().then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
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
                  child: GestureDetector(
                    onTap: (){
                      print (agenda.assuntos[index]['id']);
                      Navigator.pushNamed(context, '/AgendaAssunto', arguments: agenda.assuntos[index]['id']);
                    },
                    child: Card(
                      color: Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              agenda.assuntos[index]['descricao'],
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );

              },
              itemCount: agenda.tamanho,
            ),
          )
        ],
      ),
    );
  }
}