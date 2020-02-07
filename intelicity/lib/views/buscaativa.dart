import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuscaAtivaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Busca Ativa'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Container(height: 60,),

            Text('Sistema Busca Ativa',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Container(height: 20,),

            Text('Você será desviado para o site do Busca Ativa',
              style: TextStyle(fontSize: 15),
            ),

            Container(height: 20,),


            Text('Em breve, integração total ao sistema de gestão',
              style: TextStyle(fontSize: 15),
            ),

            Container(height: 30,),

            RaisedButton(
                child: Text('Acessa site'),
                onPressed: () {
                  launch('https://buscaativa.pmnf.rj.gov.br');
                }
            )
          ],
        ),
      ),
    );
  }
}