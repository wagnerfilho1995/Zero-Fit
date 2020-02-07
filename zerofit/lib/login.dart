import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final bool login;
  Login(this.login);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool wrongPasswordControl;
  bool is_visible = false;
  TextEditingController _user;
  TextEditingController _passw;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text("Vistoria SMTT"),
      //),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: <Widget>[
          ],
        ),
        ),
      )
    );
  }
}