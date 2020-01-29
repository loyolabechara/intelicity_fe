import 'package:mobx/mobx.dart';

part 'cadastro_valida.g.dart';

class CadastroValida = _CadastroBase with _$CadastroValida;

abstract class _CadastroBase with Store{

  @observable
  String nome;

  @action
  changeNome(String value) => nome = value;

  @observable
  String cpf;

  @action
  changeCpf(String value) => cpf = value;

  @observable
  String celular;

  @action
  changeCelular(String value) => celular = value;

  @observable
  String email;

  @action
  changeEmail(String value) => email = value;

  @observable
  String sexo = 'f';

  @action
  changeSexo(String value) => sexo = value;

  @observable
  String dt_nascimento;

  @action
  changeDtNascimento(String value) => dt_nascimento = value;

  @observable
  String endereco;

  @action
  changeEndereco(String value) => endereco = value;

  @observable
  String numero;

  @action
  changeNumero(String value) => numero = value;

  @observable
  String complemento;

  @action
  changeComplemento(String value) => complemento = value;

}