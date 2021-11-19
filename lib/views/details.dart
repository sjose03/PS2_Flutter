import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ps2/stores/details_store.dart';

class ScreenArguments {
  final String formatString;

  ScreenArguments(this.formatString);
}

class Teste {
  bool teste;
  Teste(this.teste);
}

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  late DetailsStore _detailsStore;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    _detailsStore = new DetailsStore(args.formatString);
    print(args.formatString);
    var title = args.formatString.replaceAll("+", " ");
    var dataSelecionada = "";
    late Teste testes;

    return Observer(builder: (_) {
      if (_detailsStore.hasError)
        return const Center(
          child: Text("Ocorreu um erro"),
        );
      else if (_detailsStore.loading)
        return const Center(
          child: CircularProgressIndicator(),
        );
      else {
        _detailsStore.data.data = _detailsStore.datas.value![0];
        return Scaffold(
          appBar: AppBar(
            title: Text('Detalhes da $title'),
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text("Escolha uma data abaixo",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Roboto',
                          fontSize: 22,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1)),
                ),
                DropdownButton(
                  value: _detailsStore.data.data,
                  items: _detailsStore.datas.value!
                      .map((e) => DropdownMenuItem(child: Text(e), value: e))
                      .toList(),
                  onChanged: (value) => {
                    dataSelecionada = value.toString()
                    // _detailsStore.data.data = value.toString()
                  },
                ),
                ButtonTheme(
                    child: ElevatedButton(
                        onPressed: () => {
                          print(dataSelecionada),
                          _detailsStore.callApi(dataSelecionada),
                          print(_detailsStore.maxCo2.status)
                        },
                        child: Text("Pesquisar"))),
                
              ],
            ),
          ),
        );
      }
    });
  }
}
