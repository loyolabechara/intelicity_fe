// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drop_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DropMobx on _DropMobx, Store {
  final _$id_cidadeAtom = Atom(name: '_DropMobx.id_cidade');

  @override
  String get id_cidade {
    _$id_cidadeAtom.context.enforceReadPolicy(_$id_cidadeAtom);
    _$id_cidadeAtom.reportObserved();
    return super.id_cidade;
  }

  @override
  set id_cidade(String value) {
    _$id_cidadeAtom.context.conditionallyRunInAction(() {
      super.id_cidade = value;
      _$id_cidadeAtom.reportChanged();
    }, _$id_cidadeAtom, name: '${_$id_cidadeAtom.name}_set');
  }

  final _$id_bairroAtom = Atom(name: '_DropMobx.id_bairro');

  @override
  String get id_bairro {
    _$id_bairroAtom.context.enforceReadPolicy(_$id_bairroAtom);
    _$id_bairroAtom.reportObserved();
    return super.id_bairro;
  }

  @override
  set id_bairro(String value) {
    _$id_bairroAtom.context.conditionallyRunInAction(() {
      super.id_bairro = value;
      _$id_bairroAtom.reportChanged();
    }, _$id_bairroAtom, name: '${_$id_bairroAtom.name}_set');
  }

  final _$corAtom = Atom(name: '_DropMobx.cor');

  @override
  int get cor {
    _$corAtom.context.enforceReadPolicy(_$corAtom);
    _$corAtom.reportObserved();
    return super.cor;
  }

  @override
  set cor(int value) {
    _$corAtom.context.conditionallyRunInAction(() {
      super.cor = value;
      _$corAtom.reportChanged();
    }, _$corAtom, name: '${_$corAtom.name}_set');
  }

  final _$bairrosAtom = Atom(name: '_DropMobx.bairros');

  @override
  ObservableList<dynamic> get bairros {
    _$bairrosAtom.context.enforceReadPolicy(_$bairrosAtom);
    _$bairrosAtom.reportObserved();
    return super.bairros;
  }

  @override
  set bairros(ObservableList<dynamic> value) {
    _$bairrosAtom.context.conditionallyRunInAction(() {
      super.bairros = value;
      _$bairrosAtom.reportChanged();
    }, _$bairrosAtom, name: '${_$bairrosAtom.name}_set');
  }

  final _$_DropMobxActionController = ActionController(name: '_DropMobx');

  @override
  dynamic escolheIdCidade(dynamic valor) {
    final _$actionInfo = _$_DropMobxActionController.startAction();
    try {
      return super.escolheIdCidade(valor);
    } finally {
      _$_DropMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic escolheIdBairro(dynamic valor) {
    final _$actionInfo = _$_DropMobxActionController.startAction();
    try {
      return super.escolheIdBairro(valor);
    } finally {
      _$_DropMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mudacor(int valor) {
    final _$actionInfo = _$_DropMobxActionController.startAction();
    try {
      return super.mudacor(valor);
    } finally {
      _$_DropMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<void> carrega_bairro(dynamic id_cidade) {
    final _$actionInfo = _$_DropMobxActionController.startAction();
    try {
      return super.carrega_bairro(id_cidade);
    } finally {
      _$_DropMobxActionController.endAction(_$actionInfo);
    }
  }
}
