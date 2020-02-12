import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/telefone_controllers.dart';

import 'package:url_launcher/url_launcher.dart';

class TelefonePage extends StatefulWidget {
  final int indice;

  const TelefonePage({
    Key key,
    @required this.indice,
  }) : super(key: key);

  @override
  _TelefonePageState createState() => _TelefonePageState();
}

class _TelefonePageState extends State<TelefonePage> {
  Telefone telefone = Telefone();

  var telefones = [];

  void initState() {
    super.initState();

    print(widget.indice);

    telefone.getTelefones(widget.indice).then((onValue) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telefones'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Relação de Telefones',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Container(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () =>
                        {_launchURL(telefone.telefones[index]['numero'])},
                    child: Card(
                      color: Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              telefone.telefones[index]['nome'] + ': ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              telefone.telefones[index]['numero'],
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: telefone.tamanho,
            ),
          )
        ],
      ),
    );
  }

  _launchURL(listaNum) async {
    launch("tel://" + listaNum);
  }
}
