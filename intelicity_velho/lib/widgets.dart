import 'package:flutter/material.dart';


Widget Corpo(BuildContext context) {
  return Column(
    children: <Widget>[

      BotaoDefesaCivil(context),

      LogoPMNF(context),

      Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: SizedBox(
          width: double.infinity,
          child: RaisedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/Solicitacao')
            },
            child: Text('Solicitação de Serviços', style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),

      Botoes1(context),

      Botoes2(context),

      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          width: double.infinity,
          child: RaisedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/Emprego')
            },
            child: Text('Balcão de Empregos', style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),

    ],
  );
}

Widget BotaoDefesaCivil(BuildContext context){
  return GestureDetector(
    onTap: () => {
      Navigator.pushNamed(context, '/DefesaCivil')
    },
    child: Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0, right: 6.0),
        child: Container(
          color: Colors.yellowAccent,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: <Widget>[
                Image.asset('images/defesacivil.png', width: 100,),
                Text('Atenção', style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget LogoPMNF(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 120.0,
      top: 10.0,
      right: 120.0,
      bottom: 40,
    ),
    child: Center(
      child: Image.asset('images/brasaorgb.png'),
    ),
  );
}

Widget Botoes1(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          width: 180,
          child: RaisedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/BuscaAtiva')
            },
            child: Text('Busca Ativa', style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),

        SizedBox(
          width: 180,
          child: RaisedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/Cevest')
            },
            child: Text('Cevest', style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),
      ]
  );
}

Widget Botoes2(BuildContext context){
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        SizedBox(
          width: 180,
          child: RaisedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/Calendario')
            },
            child: Text('Calendário', style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),

        SizedBox(
          width: 180,
          child: RaisedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/Telefones')
            },
            child: Text('Telefones Úteis', style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),

      ]
  );
}

/////////////////////////////////
// Hamburguer
/////////////////////////////////

Widget hamburguer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[

        Container(
          height: 100.0,
          child: DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          title: Text('Compartilhar APP'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Cadastro'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/Cadastro');
          },
        ),
        ListTile(
          title: Text('Sobre'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/Sobre');
          },
        ),
        ListTile(
          title: Text('Início'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );

}
