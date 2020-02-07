import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CevestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cevest'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Container(height: 60,),

            Text('Matrícula Cevest',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Container(height: 20,),

            Text('Você será desviado para o site de matrículas',
              style: TextStyle(fontSize: 15),
            ),

            Container(height: 20,),


            Text('Em breve, integração total ao sistema de gestão do CEVEST',
              style: TextStyle(fontSize: 15),
            ),

            Container(height: 30,),

            RaisedButton(
              child: Text('Acessa site'),
                onPressed: () {
                  launch('https://cevest.pmnf.rj.gov.br');
                }
            )
          ],
        ),
      ),
    );
  }
}