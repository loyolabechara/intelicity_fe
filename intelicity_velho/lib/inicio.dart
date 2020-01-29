import 'package:flutter/material.dart';
import 'widgets.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteliCity'),
      ),
      body: Corpo(context),
      drawer: hamburguer(context)
    );
  }
}