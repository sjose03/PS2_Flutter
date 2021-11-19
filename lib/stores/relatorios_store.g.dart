// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relatorios_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RelatoriosStore on _RelatoriosStoreBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_RelatoriosStoreBase.loading'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_RelatoriosStoreBase.hasError'))
          .value;

  final _$locaisAtom = Atom(name: '_RelatoriosStoreBase.locais');

  @override
  ObservableFuture<List<String>> get locais {
    _$locaisAtom.reportRead();
    return super.locais;
  }

  @override
  set locais(ObservableFuture<List<String>> value) {
    _$locaisAtom.reportWrite(value, super.locais, () {
      super.locais = value;
    });
  }

  final _$minPhAtom = Atom(name: '_RelatoriosStoreBase.minPh');

  @override
  ObservableFuture<Medicao> get minPh {
    _$minPhAtom.reportRead();
    return super.minPh;
  }

  @override
  set minPh(ObservableFuture<Medicao> value) {
    _$minPhAtom.reportWrite(value, super.minPh, () {
      super.minPh = value;
    });
  }

  final _$maxPhAtom = Atom(name: '_RelatoriosStoreBase.maxPh');

  @override
  ObservableFuture<Medicao> get maxPh {
    _$maxPhAtom.reportRead();
    return super.maxPh;
  }

  @override
  set maxPh(ObservableFuture<Medicao> value) {
    _$maxPhAtom.reportWrite(value, super.maxPh, () {
      super.maxPh = value;
    });
  }

  final _$minCo2Atom = Atom(name: '_RelatoriosStoreBase.minCo2');

  @override
  ObservableFuture<Medicao> get minCo2 {
    _$minCo2Atom.reportRead();
    return super.minCo2;
  }

  @override
  set minCo2(ObservableFuture<Medicao> value) {
    _$minCo2Atom.reportWrite(value, super.minCo2, () {
      super.minCo2 = value;
    });
  }

  final _$maxCo2Atom = Atom(name: '_RelatoriosStoreBase.maxCo2');

  @override
  ObservableFuture<Medicao> get maxCo2 {
    _$maxCo2Atom.reportRead();
    return super.maxCo2;
  }

  @override
  set maxCo2(ObservableFuture<Medicao> value) {
    _$maxCo2Atom.reportWrite(value, super.maxCo2, () {
      super.maxCo2 = value;
    });
  }

  final _$_RelatoriosStoreBaseActionController =
      ActionController(name: '_RelatoriosStoreBase');

  @override
  void reload() {
    final _$actionInfo = _$_RelatoriosStoreBaseActionController.startAction(
        name: '_RelatoriosStoreBase.reload');
    try {
      return super.reload();
    } finally {
      _$_RelatoriosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locais: ${locais},
minPh: ${minPh},
maxPh: ${maxPh},
minCo2: ${minCo2},
maxCo2: ${maxCo2},
loading: ${loading},
hasError: ${hasError}
    ''';
  }
}
