import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Column(
        children: <Widget>[
          Text('Secretaria Municipal de Ciência, Tecnologia, Inovação e Educação Profissional e Superior', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}