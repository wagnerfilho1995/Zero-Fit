import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';

class Login extends StatefulWidget {
 
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool is_visible = false;
  bool isSwitched = false;

  Icon set_icon_visible(){
    if(is_visible){
      return Icon(Icons.visibility, color: Colors.red,);
    }
    return Icon(Icons.visibility_off, color: Colors.red,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Image.asset('assets/logo-z.png', width: 100.0, height: 100.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text('Zerofit', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: new TextStyle(fontSize: 16, color: Colors.red),
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email ou usuário",
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                      suffixIcon: FlatButton(
                      child: Icon(Icons.person, color: Colors.red,),
                      onPressed: (){
                      },
                    )
                  )
                )
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: new TextStyle(fontSize: 16, color: Colors.blue),
                  autofocus: true,
                  obscureText: is_visible == true? false : true,
                  decoration: InputDecoration(
                    labelText: "Digite sua senha",
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                    suffixIcon: FlatButton(
                        onPressed: (){
                          setState(() {
                            is_visible = !is_visible;
                          });
                      }, 
                      child: set_icon_visible(),
                    )
                  )
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text('Manter conectado', style: TextStyle(color: Colors.red),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Switch(
                      value: isSwitched,
                      onChanged: (value){
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeTrackColor: Colors.red[300],
                      activeColor: Colors.red,
                    )
                    ]
                  ),
                ]
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ButtonTheme(
                  height: 60,
                  child: RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                    ),
                    child: Text('Entrar', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder : (context) => MyBottomNavigationBar()),
                      );
                    }
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Criar conta', style: TextStyle(color: Colors.red), textAlign: TextAlign.center,)
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text('Esqueceu a senha?', style: TextStyle(color: Colors.red), textAlign: TextAlign.center,),
                )
              )
          ],
        ),
        ),
      )
    );
  }
}

