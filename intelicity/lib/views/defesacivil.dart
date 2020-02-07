import 'package:flutter/material.dart';
import 'package:intelicity/controllers/defesa_civil_controller.dart';

class DefesaCivilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    DefesaCivil defesaCivil = DefesaCivil();

    return Scaffold(
      appBar: AppBar(
        title: Text('Defesa Civil'),
      ),
      body: FutureBuilder(
          future: defesaCivil.getSituacao(),
          builder: (context, snapshot) {

            if (snapshot.hasData) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 50, 25, 150),
                  child: Container(
//                  height: 350,
                    decoration: new BoxDecoration(
                      color: Colors.black12,
                      borderRadius: new BorderRadius.circular(30.0),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          height: 50,
                        ),

                        Text(
                          'Estamos em estágio de:',
                          style: TextStyle(fontSize: 25),
                        ),

                        Text(
                            snapshot.data['alerta_name'],
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),

                        Text(
                            'desde:',
                            style: TextStyle(fontSize: 25),
                        ),

                        Text(
                            snapshot.data['dt_inclusao'],
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),

                        Container(
                          height: 30,
                        ),

                        RaisedButton(
                            child: Text('Pontos de Apoio'),
                            onPressed: () => {
                              Navigator.pushNamed(context, '/PontosDeApoio')
                            },
                        ),

                        Container(
                          height: 20,
                        ),

                        RaisedButton(
                          child: Text('Histórico de Alertas'),
                          onPressed: () => {
                            Navigator.pushNamed(context, '/PontosDeApoio')
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )

    );

  }

}