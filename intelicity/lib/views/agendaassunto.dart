import 'package:flutter/material.dart';

class AgendaAssuntoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      body: Column(
        children: <Widget>[
          Text('Pagamento de IPTU', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}