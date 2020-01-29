import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuscaAtivaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Busca Ativa'),
      ),
      body: Column(
        children: <Widget>[
          Text('Cadastrar Aluno Fora da Escola'),
          RaisedButton(
              child: Text('Acessa site'),
              onPressed: () {
                launch('https://buscaativa.pmnf.rj.gov.br');
              }
          )
        ],
      ),
    );
  }
}