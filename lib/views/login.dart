import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Login'),
        backgroundColor:  Color.fromRGBO(143, 210, 238, 1),
      ),
      backgroundColor: Color.fromRGBO(143, 210, 238, 1),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                  labelText:"Nome do Usuario",
                  labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.account_circle_outlined,color:Colors.white)
                )
           ), 
           Divider(),
              TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.blue, fontSize: 15),
                decoration: InputDecoration(
                  labelText:"Senha do usuário",
                  labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.vpn_key_outlined,color:Colors.white)
                )
              ),
              Divider(),
              ButtonTheme(
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false),
                 child: Text('Entrar'),
                 ),
                 shape:new RoundedRectangleBorder(borderRadius:
                          new BorderRadius.circular(30.0)) ,
                 )
          ],
        ),
      )
    );
  }
}
