import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, email, celular, cpf, endereco, numero, complemento, bairro, cidade, cep;

  String _sexo = 'f';

  var controller = new MaskedTextController(mask: '000.000.000-00');
  var controller_cel = new MaskedTextController(mask: '(00)0 0000-0000');

  @override
  Widget build(BuildContext context) {
    return Formulario(context);
  }

  Widget Formulario(BuildContext context) {
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
              child: _formUI(),
            ),
          ),
        ));
  }

  Widget _formUI() {

    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(hintText: 'Nome Completo'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        TextFormField(
            controller: controller,
            decoration: InputDecoration(hintText: 'CPF'),
            keyboardType: TextInputType.phone,
            maxLength: 14,
            validator: _validarCpf,
            onSaved: (String val) {
              cpf = val;
            }
        ),
        TextFormField(
            controller: controller_cel,
            decoration: InputDecoration(hintText: 'Celular'),
            keyboardType: TextInputType.phone,
            maxLength: 15,
            validator: _validarCelular,
            onSaved: (String val) {
              celular = val;
            }
        ),
        TextFormField(
            decoration: InputDecoration(hintText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 40,
            validator: _validarEmail,
            onSaved: (String val) {
              email = val;
            }
        ),
        Row(
          children: <Widget>[
            Text('Sexo:'),

            Expanded(
                child: new RadioListTile<String>(
                    title: const Text('Feminino'),
                    dense: true,
                    value: 'f',
                    groupValue: _sexo,
                    onChanged: (String value) {
                      onChanged(value);
                    }
                 )
            ),
            Expanded(
                child: new RadioListTile<String>(
                    title: const Text('Masculino'),
                    dense: true,
                    value: 'm',
                    groupValue: _sexo,
                    onChanged: (String value) {
                      onChanged(value);
                    }
                 )
            ),
          ],
        ),

        TextFormField(
          decoration: InputDecoration(hintText: 'Endereço'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            endereco = val;
          },
        ),

        TextFormField(
          decoration: InputDecoration(hintText: 'Número'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            numero = val;
          },
        ),

        TextFormField(
          decoration: InputDecoration(hintText: 'Complemento'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            complemento = val;
          },
        ),

        TextFormField(
          decoration: InputDecoration(hintText: 'Bairro'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            bairro = val;
          },
        ),

        TextFormField(
          decoration: InputDecoration(hintText: 'Cidade'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            cidade = val;
          },
        ),

        TextFormField(
          decoration: InputDecoration(hintText: 'Cep'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            cep = val;
          },
        ),

        SizedBox(height: 15.0),
        RaisedButton(
          onPressed: _sendForm,
          child: Text('Enviar'),
        )
      ],
    );
  }

  String _validarNome(String value) {
    String patttern = r'(^[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]*$)';

    RegExp regExp = RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarCpf(String value) {
    String patttern = r'(^[0-9.-]*$)';
    RegExp regExp = RegExp(patttern);
    if (value.length == 0) {
      return "Informe o CPF";
    } else if (value.length != 14) {
      return "O CPF deve ter 11 dígitos";
    } else if (!regExp.hasMatch(value)) {
      return "O número do CPF so deve conter dígitos";
    }
    return null;
  }

  String _validarCelular(String value) {
    String patttern = r'(^[0-9() -]*$)';
    RegExp regExp = RegExp(patttern);
    if (value.length == 0) {
      return "Informe o celular";
    } else if (value.length != 15) {
      return "O celular deve ter 10 dígitos";
    } else if (!regExp.hasMatch(value)) {
      return "O número do celular so deve conter dígitos";
    }
    return null;
  }

  String _validarEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }

  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Ceclular $celular");
      print("Email $email");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
      });
    }
  }

  void onChanged(String value) {
    setState(() {
      _sexo = value;
    });
    print("Valor: $value");
  }

}
