import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CevestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cevest'),
      ),
      body: Column(
        children: <Widget>[
          Text('Matrícula Cevest'),
          RaisedButton(
            child: Text('Acessa site'),
              onPressed: () {
                launch('https://cevest.jlb.net.br');
              }
          )
        ],
      ),
    );
  }
}