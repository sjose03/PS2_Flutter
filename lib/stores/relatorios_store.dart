import 'package:mobx/mobx.dart';
import 'package:ps2/model/local.dart';
import 'package:ps2/model/medicao.dart';
import 'package:ps2/services/api_service.dart';
part 'relatorios_store.g.dart';

class RelatoriosStore = _RelatoriosStoreBase with _$RelatoriosStore;

abstract class _RelatoriosStoreBase with Store {
  ApiService _apiService = new ApiService();

  _RelatoriosStoreBase() {
    reload();
  }

  @observable
  ObservableFuture<List<String>> locais = ObservableFuture.value([]);

  @observable
  ObservableFuture<Medicao> minPh = ObservableFuture.value(Medicao(
      nome: '', cidade: '', co2Vol: 0.0, phVol: 0.0, medicaoDate: '', uf: ""));

  @observable
  ObservableFuture<Medicao> maxPh = ObservableFuture.value(Medicao(
      nome: '', cidade: '', co2Vol: 0.0, phVol: 0.0, medicaoDate: '', uf: ""));
  @observable
  ObservableFuture<Medicao> minCo2 = ObservableFuture.value(Medicao(
      nome: '', cidade: '', co2Vol: 0.0, phVol: 0.0, medicaoDate: '', uf: ""));
  @observable
  ObservableFuture<Medicao> maxCo2 = ObservableFuture.value(Medicao(
      nome: '', cidade: '', co2Vol: 0.0, phVol: 0.0, medicaoDate: '', uf: ""));

  @computed
  bool get loading =>
      (minPh.status == FutureStatus.pending) |
      (maxPh.status == FutureStatus.pending) |
      (minCo2.status == FutureStatus.pending) |
      (maxCo2.status == FutureStatus.pending) |
      (locais.status == FutureStatus.pending);

  @computed
  bool get hasError => minPh.error != null;

  @action
  void reload() {
    minPh = _apiService.fetchMinPH().asObservable();
    maxPh = _apiService.fetchMaxPH().asObservable();
    maxCo2 = _apiService.fetchMaxCo2().asObservable();
    minCo2 = _apiService.fetchMinCo2().asObservable();
    locais = _apiService.fetchLocais().asObservable();
  }

}
