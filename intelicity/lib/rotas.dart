import 'package:flutter/material.dart';
import 'package:intelicity/buscaativa.dart';
import 'package:intelicity/cadastro/cadastro.dart';
import 'package:intelicity/cevest.dart';
import 'package:intelicity/defesacivil.dart';
import 'package:intelicity/emprego.dart';
import 'package:intelicity/inicio.dart';
import 'package:intelicity/sobre.dart';
import 'package:intelicity/solicitacao.dart';
import 'package:intelicity/calendario.dart';
import 'package:intelicity/telefone.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(builder: (_) => InicioPage());

      case '/DefesaCivil':
        return MaterialPageRoute<dynamic>(builder: (_) => DefesaCivilPage());

      case '/BuscaAtiva':
        return MaterialPageRoute<dynamic>(builder: (_) => BuscaAtivaPage());

      case '/Cevest':
        return MaterialPageRoute<dynamic>(builder: (_) => CevestPage());

      case '/Calendario':
        return MaterialPageRoute<dynamic>(builder: (_) => CalendarioPage());

      case '/Solicitacao':
        return MaterialPageRoute<dynamic>(builder: (_) => SolicitacaoPage());

      case '/Emprego':
        return MaterialPageRoute<dynamic>(builder: (_) => EmpregoPage());

      case '/Cadastro':
        return MaterialPageRoute<dynamic>(builder: (_) => CadastroPage());

      case '/Telefones':
        return MaterialPageRoute<dynamic>(builder: (_) => TelefonePage());

      case '/Sobre':
        return MaterialPageRoute<dynamic>(builder: (_) => SobrePage());

    }
  }

  static Route<dynamic> _errorRoute() {

//    print (settings.name);
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}