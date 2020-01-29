import 'package:flutter/material.dart';
import 'package:intelicity/classes/acessa_storage.dart';

import 'package:intelicity/inicio.dart';
import 'package:intelicity/cadastro/cadastro.dart';
import 'package:intelicity/rotas.dart';
import 'package:intelicity/tema/style.dart';

import 'package:intelicity/classes/cidade_classe.dart';

import 'globals.dart' as globals;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    AcessaStorage acessa_storage = AcessaStorage();

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,

        title: 'InteliCity',
        theme: appTheme(),
        home: FutureBuilder(
          future: acessa_storage.pega_usuario(),
          builder:  (ctx, snapshot) {
            if (!snapshot.hasData) {
              print("Erro.");
              return SizedBox(
                child: CircularProgressIndicator(),
                width: 60,
                height: 60,
              );
            } else {
              if (snapshot.data == 'n') {
                print(snapshot.data);
                return CadastroPage();
              } else {
                print(snapshot.data);
                return InicioPage();
              }
            }

          },
        ),
    );
  }
}