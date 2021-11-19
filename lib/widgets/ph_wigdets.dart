import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ps2/stores/relatorios_store.dart';

class PhNowWidgets extends StatefulWidget {
  const PhNowWidgets({Key? key}) : super(key: key);

  @override
  _PhNowWidgetsState createState() => _PhNowWidgetsState();
}

class _PhNowWidgetsState extends State<PhNowWidgets> {
  late RelatoriosStore _relatoriosStore;

  @override
  void initState() {
    _relatoriosStore = new RelatoriosStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (_relatoriosStore.hasError)
        return const Center(
          child: Text("Ocorreu um erro"),
        );
      else if (_relatoriosStore.loading)
        return const Center(
          child: CircularProgressIndicator(),
        );
      else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 40),
              child: Container(
                  width: 170,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(176, 225, 245, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Min PH",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(12, 196, 19, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 3),
                            child: Text(
                                "${_relatoriosStore.minPh.value!.phVol}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.38),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Max PH",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(197, 23, 12, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 3),
                            child: Text(
                             "${_relatoriosStore.maxPh.value!.phVol}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.38),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Local",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 3),
                            child: 
                             Text(
                              "${_relatoriosStore.minPh.value!.nome}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                                  overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        );
      }
    });
  }
}
