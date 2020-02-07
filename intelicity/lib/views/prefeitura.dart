import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrefeituraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prefeitura'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Container(height: 60,),

            Text('Prefeitura Municipal',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Container(height: 20,),

            Text('Você será desviado para o site da Prefeitura',
              style: TextStyle(fontSize: 15),
            ),

            Container(height: 20,),

            RaisedButton(
                child: Text('Acessa site'),
                onPressed: () {
                  launch('http://pmnf.rj.gov.br');
                }
            )
          ],
        ),
      ),
    );
  }
}