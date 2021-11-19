// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocalStore on LocalStoreBase, Store {
  final _$localAtom = Atom(name: 'LocalStoreBase.local');

  @override
  String get local {
    _$localAtom.reportRead();
    return super.local;
  }

  @override
  set local(String value) {
    _$localAtom.reportWrite(value, super.local, () {
      super.local = value;
    });
  }

  final _$LocalStoreBaseActionController =
      ActionController(name: 'LocalStoreBase');

  @override
  dynamic changeLocal(String newLocal) {
    final _$actionInfo = _$LocalStoreBaseActionController.startAction(
        name: 'LocalStoreBase.changeLocal');
    try {
      return super.changeLocal(newLocal);
    } finally {
      _$LocalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
local: ${local}
    ''';
  }
}
