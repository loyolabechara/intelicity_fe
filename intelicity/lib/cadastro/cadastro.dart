import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intelicity/cadastro/cadastro_controle.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:date_format/date_format.dart';
import 'package:intelicity/classes/cidade_classe.dart';
import 'package:intelicity/classes/drop_mobx.dart';
import 'package:intelicity/globals.dart' as globals;
import 'package:dio/dio.dart';

class CadastroPage extends StatelessWidget {
  String nome,
      email,
      celular,
      cpf,
      endereco,
      numero,
      complemento,
      bairro,
      cidade_id,
      cidade,
      cep,
      dt_nascimento;

  List<dynamic> lista;

  var controller_cpf = new MaskedTextController(mask: '000.000.000-00');
  var controller_cel = new MaskedTextController(mask: '(00)0 0000-0000');

  final cadastrocontrole = CadastroControle();

  GlobalKey<FormState> _key = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Formulario(context);
  }

  /////////////////////////////

  Widget Formulario(BuildContext context) {
    bool _validate = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            autovalidate: _validate,
            child: _formUI(context),
          ),
        ),
      ),
    );
  }

  ////////////////////////////

  Widget _formUI(BuildContext context) {
    DateTime hoje = new DateTime.now();
    DateTime hoje_15 = new DateTime(hoje.year - 15, hoje.month, hoje.day);

    cadastrocontrole.cadastrovalida.dt_nascimento =
        formatDate(hoje_15, [dd, '/', mm, '/', yyyy]);

    Cidade cidade = Cidade();
    DropMobx dropMobx = DropMobx();

    var _cidades = cidade.carregaCidade();

    return Column(
      children: <Widget>[
        SizedBox(height: 15.0),

        Observer(builder: (_) {
          return _textField(
            labelText: "Nome Completo",
            onChanged: cadastrocontrole.cadastrovalida.changeNome,
            errorText: cadastrocontrole.validaNome,
          );
        }),

        SizedBox(height: 15.0),

        Observer(builder: (_) {
          return _textField(
            labelText: "CPF",
            onChanged: cadastrocontrole.cadastrovalida.changeCpf,
            errorText: cadastrocontrole.validaCpf,
            controller: controller_cpf,
            keyboardtype: TextInputType.phone,
          );
        }),

        SizedBox(height: 15.0),

        Observer(builder: (_) {
          return _textField(
            labelText: "Celular",
            onChanged: cadastrocontrole.cadastrovalida.changeCelular,
            errorText: cadastrocontrole.validaCelular,
            controller: controller_cel,
            keyboardtype: TextInputType.phone,
          );
        }),

        SizedBox(height: 15.0),

        Observer(
          builder: (_) {
            return _textField(
              labelText: "E-Mail",
              onChanged: cadastrocontrole.cadastrovalida.changeEmail,
              errorText: cadastrocontrole.validaEmail,
              keyboardtype: TextInputType.emailAddress,
            );
          },
        ),

        SizedBox(height: 15.0),

        Observer(
          builder: (_) {
            return Row(
              children: <Widget>[
                Text('Sexo:'),
                Expanded(
                  child: new RadioListTile<String>(
                    title: const Text('Feminino'),
                    dense: true,
                    value: 'f',
                    groupValue: cadastrocontrole.cadastrovalida.sexo,
                    onChanged: (String value) {
                      cadastrocontrole.cadastrovalida.changeSexo(value);
                    },
                  ),
                ),
                Expanded(
                  child: new RadioListTile<String>(
                    title: const Text('Masculino'),
                    dense: true,
                    value: 'm',
                    groupValue: cadastrocontrole.cadastrovalida.sexo,
                    onChanged: (String value) {
                      cadastrocontrole.cadastrovalida.changeSexo(value);
                    },
                  ),
                ),
              ],
            );
          },
        ),

        SizedBox(height: 15.0),

        Row(
          children: <Widget>[
            Text('Data Nascimento: '),
            Observer(
              builder: (_) {
                return RaisedButton(
                  onPressed: () =>
                  {
                    _selectDate(context, hoje, hoje_15),
                  },
                  child: Text(
                      "${cadastrocontrole.cadastrovalida.dt_nascimento}"),
                );
              },
            ),
          ],
        ),

        SizedBox(height: 15.0),

        Observer(
          builder: (_) {
            return _textField(
              labelText: "Endereço",
              onChanged: cadastrocontrole.cadastrovalida.changeEndereco,
              errorText: cadastrocontrole.validaEndereco,
            );
          },
        ),

        SizedBox(height: 15.0),

        Observer(
          builder: (_) {
            return _textField(
              labelText: "Número",
              onChanged: cadastrocontrole.cadastrovalida.changeNumero,
              errorText: cadastrocontrole.validaNumero,
            );
          },
        ),

        SizedBox(height: 15.0),

        Observer(
          builder: (_) {
            return _textField(
              labelText: "Complemento",
              onChanged: cadastrocontrole.cadastrovalida.changeComplemento,
            );
          },
        ),

        SizedBox(height: 15.0),

        Observer(
            builder: (_) {

                return FutureBuilder(
                    future: _cidades,

                    builder: (context, snapshot) {
                        if (snapshot.hasData) {
                            return DropdownButton(
                                items: snapshot.data.map<DropdownMenuItem<String>>((cidade) {
                                    return DropdownMenuItem<String>(
                                        child: Text(cidade['nome']),
                                        value: cidade['id'].toString(),
                                    );
                                }).toList(),

                                onChanged: (value){
                                    dropMobx.escolheIdCidade(value);
                                    print(value);
                                },
                                value: dropMobx.id_cidade,
                            );


                        } else {
                            return Center(
                                child: CircularProgressIndicator(),
                            );
                        }
                    },
                );
            },
        ),

        SizedBox(height: 15.0),
/*
        FutureBuilder(
            future: cidade.carregaCidade(),

            builder: (context, snapshot) {
                if (snapshot.hasData) {
                    return DropdownButton(
                      hint: Observer(
                          builder: (_) {
                              return Text(dropMobx.nome_cidade);
                          }

                      ),
                      items: snapshot.data.map<DropdownMenuItem<String>>((cidade) {
                        return DropdownMenuItem<String>(
                          child: Text(cidade['nome']),
                          value: cidade['nome'],
                        );
                      }).toList(),

                      onChanged: (value){
                        dropMobx.escolheCidade(value);
                        print(value);
                      },

                    );


                } else {
                    return Center(
                        child: CircularProgressIndicator(),
                    );
                }
            },
        ),

        SizedBox(height: 15.0),
*/
        SizedBox(height: 15.0),

        RaisedButton(
          onPressed: null,
//          onPressed: cadastrovalida.sendForm(_key),
          child: Text('Enviar'),
        )
      ],
    );
  }

  ////////////////////////////////////////////

  _textField({String labelText,
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

  ///////////////////////

  Future<Null> _selectDate(BuildContext context, hoje, hoje_15) async {

    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: hoje_15,
      firstDate: DateTime(1920, 1),
      lastDate: hoje,
    );

    cadastrocontrole.cadastrovalida.dt_nascimento =
        formatDate(picked, [dd, '/', mm, '/', yyyy]);

  }

}