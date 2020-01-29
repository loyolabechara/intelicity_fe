// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DropMobx on _DropMobx, Store {
  final _$nome_cidadeAtom = Atom(name: '_DropMobx.nome_cidade');

  @override
  String get nome_cidade {
    _$nome_cidadeAtom.context.enforceReadPolicy(_$nome_cidadeAtom);
    _$nome_cidadeAtom.reportObserved();
    return super.nome_cidade;
  }

  @override
  set nome_cidade(String value) {
    _$nome_cidadeAtom.context.conditionallyRunInAction(() {
      super.nome_cidade = value;
      _$nome_cidadeAtom.reportChanged();
    }, _$nome_cidadeAtom, name: '${_$nome_cidadeAtom.name}_set');
  }

  final _$_DropMobxActionController = ActionController(name: '_DropMobx');

  @override
  dynamic escolheCidade(dynamic valor) {
    final _$actionInfo = _$_DropMobxActionController.startAction();
    try {
      return super.escolheCidade(valor);
    } finally {
      _$_DropMobxActionController.endAction(_$actionInfo);
    }
  }
}
