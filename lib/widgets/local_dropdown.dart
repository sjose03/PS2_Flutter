import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ps2/model/local.dart';
import 'package:ps2/stores/local_store.dart';
import 'package:ps2/stores/relatorios_store.dart';
import 'package:ps2/views/details.dart';

class LocalDropDown extends StatefulWidget {
  const LocalDropDown({Key? key}) : super(key: key);

  @override
  _LocalDropDownState createState() => _LocalDropDownState();
}

class _LocalDropDownState extends State<LocalDropDown> {
  late LocalStore _localStore;
  @override
  void initState() {
    _localStore = new LocalStore();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(

        children: [
                  Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text("Escolha uma ilha para analisar",style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 22,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                DropdownButton<String>(
                  value: _localStore.local,
                  items: _localStore.locais
                      .map((e) => DropdownMenuItem(child: Text(e), value: e))
                      .toList(),
                  onChanged: (value) {
                    _localStore.changeLocal(value!);
                  },
                ),
              ])),
              Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                              minWidth: 200,
                              height: 400,
                              child: ElevatedButton(
                                  onPressed: () => {
                                    
                                    Navigator.pushNamed(context, "/details",arguments: ScreenArguments(_localStore.local.replaceAll(" ", "+")))
                                  }, child: Text('Analisar')))
                        ],
                      ))
        ],
      );
    });
  }
}
