import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/historico_alertas_controller.dart';

class HistoricoAlertasPage extends StatefulWidget {

  @override
  _HistoricoAlertasPageState createState() => _HistoricoAlertasPageState();
}

class _HistoricoAlertasPageState extends State<HistoricoAlertasPage> {

  HistoricoAlertas historicoAlertas = HistoricoAlertas();

  var alertas = [];

  void initState() {

    super.initState();

    historicoAlertas.getAlertas().then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Defesa Civil'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Histórico de Alertas', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
          ),

          Container(
            height: 15,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: historicoAlertas.tamanho,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            historicoAlertas.pontos[index]['alerta_name'],
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          Container(height: 10,),
                          Text(
                            'Data/Hora: '+historicoAlertas.pontos[index]['dt_inclusao'],
                          ),
                        ],
                      ),
                    ),
                  ),
                );

              },
            ),
          )
        ],
      ),
    );
  }
}