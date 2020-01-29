import 'package:flutter/material.dart';

class DefesaCivilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Defesa Civil'),
      ),
      body: Column(
        children: <Widget>[
          Text('Estamos em estágio de ATENÇÃO desde: 23/11/2019 - 11:23'),
          RaisedButton(child: Text('Pontos de Apoio'), onPressed: null)
        ],
      ),
    );
  }
}
