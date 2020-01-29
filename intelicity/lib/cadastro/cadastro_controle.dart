import 'package:intelicity/cadastro/cadastro_valida.dart';
import 'package:mobx/mobx.dart';
import 'package:email_validator/email_validator.dart';

part 'cadastro_controle.g.dart';

class CadastroControle = _CadastroControle with _$CadastroControle;

abstract class _CadastroControle with Store{

    var cadastrovalida = CadastroValida();

    String validaNome (){
      if (cadastrovalida.nome == null || cadastrovalida.nome.isEmpty){
        return "Este campo é obrigatório";
      } else if (cadastrovalida.nome.length < 3){
        return "Seu nome deve ter mais de 3 caracteres";
      }
    }

    String validaCpf (){
      if (cadastrovalida.cpf == null || cadastrovalida.cpf.isEmpty){
        return "Este campo é obrigatório";
      } else if (cadastrovalida.cpf.length != 14){
        return "CPF inválido";
      }
    }

    String validaCelular (){
      if (cadastrovalida.celular == null || cadastrovalida.celular.isEmpty){
        return "Este campo é obrigatório";
      } else if (cadastrovalida.celular.length != 15){
        return "Número de celular inválido";
      }
    }

    String validaEmail (){
      if (cadastrovalida.email == null || cadastrovalida.email.isEmpty){
        return "Este campo é obrigatório";
      } else if (! EmailValidator.validate(cadastrovalida.email)){
        return "E-mail inválido";
      }
    }

    String validaSexo (){
      if (cadastrovalida.sexo == null || cadastrovalida.sexo.isEmpty){
        return "Este campo é obrigatório";
      } else if (cadastrovalida.sexo != 'f' && cadastrovalida.sexo != 'm'){
        return "Sexo inválido";
      }
    }

    String validaEndereco (){
      if (cadastrovalida.endereco == null || cadastrovalida.endereco.isEmpty){
        return "Este campo é obrigatório";
      } else if (cadastrovalida.endereco.length < 3){
        return "Seu nome deve ter mais de 3 caracteres";
      }
    }

    String validaNumero (){
      if (cadastrovalida.numero == null || cadastrovalida.numero.isEmpty){
        return "Este campo é obrigatório";
      } else if (cadastrovalida.numero.length < 3){
        return "Seu nome deve ter mais de 3 caracteres";
      }
    }

}