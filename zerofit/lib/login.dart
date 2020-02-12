import 'package:flutter/material.dart';

class Login extends StatefulWidget {
 
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
              SizedBox(height: 30,),
              Image.asset('assets/gym-logo.jpg', width: 150.0, height: 160.0),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField()
              ),

          ],
        ),
        ),
      )
    );
  }
}