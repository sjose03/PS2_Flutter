// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsStore on _DetailsStoreBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_DetailsStoreBase.loading'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_DetailsStoreBase.hasError'))
          .value;

  final _$datasAtom = Atom(name: '_DetailsStoreBase.datas');

  @override
  ObservableFuture<List<String>> get datas {
    _$datasAtom.reportRead();
    return super.datas;
  }

  @override
  set datas(ObservableFuture<List<String>> value) {
    _$datasAtom.reportWrite(value, super.datas, () {
      super.datas = value;
    });
  }

  final _$dataAtom = Atom(name: '_DetailsStoreBase.data');

  @override
  Data get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(Data value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$minPhAtom = Atom(name: '_DetailsStoreBase.minPh');

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

  final _$maxPhAtom = Atom(name: '_DetailsStoreBase.maxPh');

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

  final _$minCo2Atom = Atom(name: '_DetailsStoreBase.minCo2');

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

  final _$maxCo2Atom = Atom(name: '_DetailsStoreBase.maxCo2');

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

  final _$_DetailsStoreBaseActionController =
      ActionController(name: '_DetailsStoreBase');

  @override
  void callApi(String data) {
    final _$actionInfo = _$_DetailsStoreBaseActionController.startAction(
        name: '_DetailsStoreBase.callApi');
    try {
      return super.callApi(data);
    } finally {
      _$_DetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reload(String query) {
    final _$actionInfo = _$_DetailsStoreBaseActionController.startAction(
        name: '_DetailsStoreBase.reload');
    try {
      return super.reload(query);
    } finally {
      _$_DetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
datas: ${datas},
data: ${data},
minPh: ${minPh},
maxPh: ${maxPh},
minCo2: ${minCo2},
maxCo2: ${maxCo2},
loading: ${loading},
hasError: ${hasError}
    ''';
  }
}
