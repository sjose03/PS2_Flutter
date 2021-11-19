import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ps2/model/local.dart';
import 'package:ps2/services/api_service.dart';
import 'package:ps2/stores/relatorios_store.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late RelatoriosStore _relatoriosStore;

  @override
  void initState() {
    _relatoriosStore = new RelatoriosStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title:Positioned(
                  top: 89,
                  left: 25,
                  child: Text(
                    'Medidas Atuais',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
        ),
        body: Container(
            width: 390,
            height: 944,
            decoration: BoxDecoration(
              color: Color.fromRGBO(143, 210, 238, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 484,
                  left: 91,
                  child: 
                  
                  ElevatedButton(onPressed: () => print("ok"), 
                      child: Text(
                    'Buscar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )
                  )
                  ),

              Positioned(
                  top: 168,
                  left: 0,
                  child: Container(
                      width: 195,
                      height: 229,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(176, 225, 245, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ))),
              Positioned(
                  top: 168,
                  left: 198,
                  child: Container(
                      width: 195,
                      height: 229,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(176, 225, 245, 1),
                         borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ))),
              
              Positioned(
                  top: 250,
                  left: 228,
                  child: Text(
                    'Max CO2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(196, 23, 12, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 281,
                  left: 261,
                  child: Text(
                    '0.13',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 178,
                  left: 230,
                  child: Text(
                    'Min CO2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(12, 196, 19, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 210,
                  left: 262,
                  child: Text(
                    '0.1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 240,
                  left: 195,
                  child:
                      Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 4)),
              Positioned(
                  top: 311,
                  left: 195,
                  child:
                      Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 4)),
              Positioned(
                  top: 313,
                  left: 258,
                  child: Text(
                    'Local',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(251, 245, 245, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 351,
                  left: 206,
                  child: 
                  Text(
                    'Ilha de Fernando de Noronha',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 250,
                  left: 33,
                  child: Text(
                    'Max PH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(196, 23, 12, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 276,
                  left: 62,
                  child: Text(
                    '0.13',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 178,
                  left: 35,
                  child: Text(
                    'Min PH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(12, 196, 19, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 205,
                  left: 67,
                  child: Text(
                    '0.1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 240,
                  left: 0,
                  child:
                      Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 4)),
              Positioned(
                  top: 311,
                  left: 0,
                  child:
                      Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 4)),
              Positioned(
                  top: 313,
                  left: 63,
                  child: Text(
                    'Local',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(251, 245, 245, 1),
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 351,
                  left: 45,
                  child: Text(
                    'Ilha de Marajo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
            ])));

    // Scaffold(
    //     appBar: AppBar(
    //       // Here we take the value from the MyHomePage object that was created by
    //       // the App.build method, and use it to set our appbar title.
    //       title: Text('Visão Geral'),
    //       backgroundColor: Color.fromRGBO(143, 210, 238, 1),
    //     ),
    //     backgroundColor: Color.fromRGBO(143, 210, 238, 1),
    //     body: Observer(builder: (_) {
    //       if (_relatoriosStore.hasError)
    //         return const Center(
    //           child: Text("Ocorreu um erro"),
    //         );
    //       else if (_relatoriosStore.loading)
    //         return const Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       else {
    //         print(_relatoriosStore.locais.value!);
    //         return Center(
    //           child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: <Widget>[
    //                 Text("Min PH"),
    //                 Divider(),
    //                 Text(
    //                   "PH: ${_relatoriosStore.minPh.value!.phVol}",
    //                 ),
    //                 Text("Dt: ${_relatoriosStore.minPh.value!.medicaoDate}"),
    //                 Text("Local: ${_relatoriosStore.minPh.value!.nome}"),

    //                 Divider(),

    //                 Text("Escolha um local para analisar os dados por data",
    //                   textAlign: TextAlign.center,
    //                 ),

    //                 DropdownButtonFormField<String>(
    //                     value: _relatoriosStore.locais.value![0],
    //                     items: _relatoriosStore.locais.value!
    //                         .map((e) =>
    //                             DropdownMenuItem(child: Text(e), value: e))
    //                         .toList(),
    //                     decoration: new InputDecoration(
    //                       alignLabelWithHint: true,
    //                       icon: const Icon(Icons.score),
    //                       hintText: 'Selecione o nível',
    //                       labelText: 'Nível',
    //                     ),
    //                     validator: (value) {
    //                       if ((value == null)) {
    //                         return 'Selecione o nível do curso!';
    //                       }
    //                       return null;
    //                     },
    //                     onSaved: (value) {
    //                       _relatoriosStore.localModel.local = value!;
    //                       print(_relatoriosStore.localModel.local);
    //                     },
    //                     onChanged: (value) {
    //                       _relatoriosStore.localModel.local = value!;
    //                     },
    //                   ),
    //                     ElevatedButton(onPressed: () => {
    //                      ApiService().fetchDatas(_relatoriosStore.formatLocal(_relatoriosStore.localModel.local))
    //                     }, child: Text('Teste'))
    //               ]

    //               ),
    //         );
    //       }
    //     }));
  }
}
