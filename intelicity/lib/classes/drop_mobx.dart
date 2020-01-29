import 'package:mobx/mobx.dart';

part 'drop_mobx.g.dart';

class DropMobx = _DropMobx with _$DropMobx;

abstract class _DropMobx with Store{

  @observable
  String nome_cidade = 'xx';

  @action
  escolheCidade(valor) => nome_cidade = valor;

  @observable
  String id_cidade;

  @action
  escolheIdCidade(valor) {
    id_cidade = valor;
    print (id_cidade);
  }

}