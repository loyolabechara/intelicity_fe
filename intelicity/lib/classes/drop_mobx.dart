// import 'package:flutter/material.dart';
import 'package:intelicity/classes/bairro_classe.dart';
import 'package:mobx/mobx.dart';

part 'drop_mobx.g.dart';

class DropMobx = _DropMobx with _$DropMobx;

abstract class _DropMobx with Store{

  @observable
  String id_cidade = '1';

  @action
  escolheIdCidade(valor) {
    id_cidade = valor.toString();
//    print ('Cidade: '+id_cidade);
  }

  @observable
  String id_bairro;

  @action
  escolheIdBairro(valor) {
    id_bairro = valor.toString();
//    print ('Bairro--: '+id_cidade);
  }

  @observable
  int cor = 1;

  @action
  void mudacor(int valor) { cor = valor; }

  @observable
  ObservableList bairros = ObservableList<List>();

  @action
  Future<void>carrega_bairro(id_cidade){

    Bairro bairro = Bairro();

//    bairros = ObservableFuture(bairro.carregaBairro(id_cidade));
  }


}