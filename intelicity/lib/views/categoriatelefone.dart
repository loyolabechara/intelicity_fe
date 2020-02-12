import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intelicity/controllers/categoria_telefone_controller.dart';

class CategoriaTelefonePage extends StatefulWidget {
  @override
  _CategoriaTelefonePageState createState() => _CategoriaTelefonePageState();
}

class _CategoriaTelefonePageState extends State<CategoriaTelefonePage> {

  CategoriaTelefone categoriaTelefone = CategoriaTelefone();

  var assuntos = [];

  void initState() {

    super.initState();

    categoriaTelefone.getCategorias().then((onValue){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Telefones Úteis'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Categorias de Telefones', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0),
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
                    onTap: (){
                      print (categoriaTelefone.categorias[index]['id']);
                      Navigator.pushNamed(context, '/Telefones', arguments: categoriaTelefone.categorias[index]['id']);
                    },
                    child: Card(
                      color: Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              categoriaTelefone.categorias[index]['descricao'],
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );

              },
              itemCount: categoriaTelefone.tamanho,
            ),
          )
        ],
      ),
    );
  }
}