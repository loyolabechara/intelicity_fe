import 'package:flutter/material.dart';
import 'package:intelicity/inicio.dart';
import 'package:intelicity/rotas.dart';
import 'package:intelicity/tema/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,

      title: 'InteliCity',
      theme: appTheme(),
      home: InicioPage(),
    );
  }
}