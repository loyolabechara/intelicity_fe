import 'package:flutter/material.dart';

class SolicitacaoNovaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Solicitação'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Cadastrar Solicitação:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _textField(
              labelText: "Descrição",
//          onChanged: cadastrocontrole.cadastrovalida.changeEndereco,
//          errorText: cadastrocontrole.validaEndereco,
            ),
          ),
          _textField(
            labelText: "Endereço",
//          onChanged: cadastrocontrole.cadastrovalida.changeEndereco,
//          errorText: cadastrocontrole.validaEndereco,
          ),
          _textField(
            labelText: "Número",
//          onChanged: cadastrocontrole.cadastrovalida.changeEndereco,
//          errorText: cadastrocontrole.validaEndereco,
          ),
          _textField(
            labelText: "Complemento",
//          onChanged: cadastrocontrole.cadastrovalida.changeEndereco,
//          errorText: cadastrocontrole.validaEndereco,
          ),
          Container(
            height: 80,
          ),
          RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/MinhasSolicitacoes');
              },
              child: Text('Minhas solicitações'))
        ],
      ),
    );
  }

  ////////////////////////////////////////////

  _textField(
      {String labelText,
      onChanged,
      controller,
      keyboardtype,
      String Function() errorText}) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }
}
