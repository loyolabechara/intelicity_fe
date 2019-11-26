import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class TelefonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telefones Úteis'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Clique sobre o número para discar:',
                  style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 350,
              child: criaTabela(),
            )
          ],
        ),
      ),
    );
  }

  //////////////////////

  criaTabela() {
    return Table(
      defaultColumnWidth: FixedColumnWidth(150.0),
      border: TableBorder(
        horizontalInside: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        verticalInside: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      children: [
        _criarLinhaTable("Nome", "Número"),
        _criarLinhaTable("Prefeitura","2525-9100"),
        _criarLinhaTable("Polícia","190"),
        _criarLinhaTable("Bombeiro","193"),
        _criarLinhaTable("Defesa Civil","199"),
      ],
    );
  }
  _criarLinhaTable(String listaNome, String listaNum) {
    return TableRow(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            listaNome,
            style: TextStyle(fontSize: 20.0),
          ),
          padding: EdgeInsets.all(8.0),
        ),

        GestureDetector(
          onTap: () => { _launchURL(listaNum) },
          child: Container(
            alignment: Alignment.center,
            child: Text(
              listaNum,
              style: TextStyle(fontSize: 20.0),
            ),
            padding: EdgeInsets.all(8.0),
          ),
        ),

      ]
/*
      listaNomes.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 20.0),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),

 */
    );
  }

  _launchURL(listaNum) async {

    launch("tel://"+listaNum);
    print ('entrou');
    /*
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }

     */
  }

}