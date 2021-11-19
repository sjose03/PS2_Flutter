import 'package:mobx/mobx.dart';
import 'package:ps2/model/local.dart';
import 'package:ps2/model/medicao.dart';
import 'package:ps2/services/api_service.dart';
part 'details_store.g.dart';

class DetailsStore = _DetailsStoreBase with _$DetailsStore;

class Data {
  String data;

  Data(this.data);
}

abstract class _DetailsStoreBase with Store {
  ApiService _apiService = new ApiService();

  _DetailsStoreBase(String query) {
    reload(query);
  }

  @observable
  ObservableFuture<List<String>> datas = ObservableFuture.value([]);

  @observable
  Data data = new Data("");

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
      (datas.status == FutureStatus.pending);

  @computed
  bool get hasError => datas.error != null;

  @action
  void callApi(String data) {
      minPh = _apiService.fetchMinPHData(data).asObservable();
      maxPh = _apiService.fetchMaxPHData(data).asObservable();
      maxCo2 = _apiService.fetchMaxCo2Data(data).asObservable();
      minCo2 = _apiService.fetchMinCo2Data(data).asObservable();
  }
  @action
  void reload(String query) {

    datas = _apiService.fetchDatas(query).asObservable();
  }
}
