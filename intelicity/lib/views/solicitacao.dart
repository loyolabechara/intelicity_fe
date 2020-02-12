import 'package:flutter/material.dart';

class SolicitacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitação de Serviços'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 40,),

          Text('Procure dar o máximo de',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          Text('detalhes possível.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          Container(height: 15,),

          Text('Isso nos ajudará a resolver',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          Text('o problema.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          Container(height: 80,),

          RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/MinhasSolicitacoes');
              },
              child: Text('Minhas solicitações'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),    );
  }
}