import 'package:flutter/material.dart';
import 'package:intelicity/views/categoriatelefone.dart';
import 'package:intelicity/views/empregoescolaridade.dart';
import 'package:intelicity/views/agenda.dart';
import 'package:intelicity/views/agendaassunto.dart';
import 'package:intelicity/views/buscaativa.dart';
import 'package:intelicity/cadastro/cadastro.dart';
import 'package:intelicity/views/cevest.dart';
import 'package:intelicity/views/defesacivil.dart';
import 'package:intelicity/views/emprego.dart';
import 'package:intelicity/views/historicoalertas.dart';
import 'package:intelicity/views/inicio.dart';
import 'package:intelicity/views/minhassolicitacoes.dart';
import 'package:intelicity/views/pontosdeapoio.dart';
import 'package:intelicity/views/prefeitura.dart';
import 'package:intelicity/views/sobre.dart';
import 'package:intelicity/views/solicitacao.dart';
import 'package:intelicity/views/telefone.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(builder: (_) => InicioPage());

      case '/DefesaCivil':
        return MaterialPageRoute<dynamic>(builder: (_) => DefesaCivilPage());

      case '/Prefeitura':
        return MaterialPageRoute<dynamic>(builder: (_) => PrefeituraPage());

      case '/BuscaAtiva':
        return MaterialPageRoute<dynamic>(builder: (_) => BuscaAtivaPage());

      case '/Cevest':
        return MaterialPageRoute<dynamic>(builder: (_) => CevestPage());

      case '/Agenda':
        return MaterialPageRoute<dynamic>(builder: (_) => AgendaPage());

      case '/AgendaAssunto':
        final int args = settings.arguments;
        if (args is! String) {
          return MaterialPageRoute<dynamic>(
            builder: (_) => AgendaAssuntoPage(
              indice: args,
            ),
          );
        }
        return _errorRoute();

      case '/CategoriaTelefone':
        return MaterialPageRoute<dynamic>(builder: (_) => CategoriaTelefonePage());

      case '/Telefones':
        final int args = settings.arguments;
        if (args is! String) {
          return MaterialPageRoute<dynamic>(
            builder: (_) => TelefonePage(
              indice: args,
            ),
          );
        }
        return _errorRoute();

      case '/Solicitacao':
        return MaterialPageRoute<dynamic>(builder: (_) => SolicitacaoPage());

      case '/MinhasSolicitacoes':
        return MaterialPageRoute<dynamic>(builder: (_) => MinhasSolicitacoesPage());

      case '/Emprego':
        return MaterialPageRoute<dynamic>(builder: (_) => EmpregoPage());

      case '/EmpregoEscolaridade':
        final int args = settings.arguments;
        if (args is! String) {
          return MaterialPageRoute<dynamic>(
            builder: (_) => EmpregoEscolaridadePage(
              indice: args,
            ),
          );
        }
        return _errorRoute();

      case '/Cadastro':
        return MaterialPageRoute<dynamic>(builder: (_) => CadastroPage());

      case '/CategoriaTelefone':
        return MaterialPageRoute<dynamic>(builder: (_) => CategoriaTelefonePage());

      case '/PontosDeApoio':
        return MaterialPageRoute<dynamic>(builder: (_) => PontosDeApoioPage());

      case '/HistoricoAlertas':
        return MaterialPageRoute<dynamic>(builder: (_) => HistoricoAlertasPage());

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