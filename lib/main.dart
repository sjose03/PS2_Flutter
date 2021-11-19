import 'package:flutter/material.dart';
import 'package:ps2/views/details.dart';
import 'package:ps2/views/home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:ps2/views/login.dart';
// import 'package:ps2/views/relatorios.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        // '/relatorios': (context) => RelatoriosView(),
        '/home': (context) => Home(),
        '/details': (context) => DetailsView()
      },
      title: 'Planeta Água',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds:Login(),
        imageBackground: new Image.asset('assets/splash.png').image,
        loaderColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
    );
  
  }
}