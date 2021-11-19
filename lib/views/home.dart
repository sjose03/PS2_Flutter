import 'package:flutter/material.dart';
import 'package:ps2/stores/local_store.dart';
import 'package:ps2/stores/relatorios_store.dart';
import 'package:ps2/views/details.dart';
import 'package:ps2/widgets/co2_widgets.dart';
import 'package:ps2/widgets/local_dropdown.dart';
import 'package:ps2/widgets/ph_wigdets.dart';

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
        title: Text('Medidas Atuais'),
      ),
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(143, 210, 238, 1),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PhNowWidgets(),
                      //Coluna dos indicadores d
                      Co2NowWidget()
                    ],
                  ),
                  LocalDropDown(),
                ],
              ))),
    );
  }
}
