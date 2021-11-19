import 'package:mobx/mobx.dart';
part 'local_store.g.dart';

class LocalStore = LocalStoreBase with _$LocalStore;

abstract class LocalStoreBase with Store {
  @observable
  String local = "Ilha de Fernando de Noronha";
  List<String> locais = [
    "Ilha de Fernando de Noronha",
    "Ilha de Itaparica",
    "Ilha de Marajo",
    "Ilha de Santana"
  ];
  @action
  changeLocal(String newLocal) {
    local = newLocal;
  }
}
