import 'package:flutter/material.dart';
import 'treinos.dart';            
import 'body.dart';
import 'aerobic.dart';
import 'login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
 
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool is_visible = false;

  Icon set_icon_visible(){
    if(is_visible){
      return Icon(Icons.visibility, color: Colors.blue,);
    }
    return Icon(Icons.visibility_off, color: Colors.blue,);
  }

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
              Image.asset('assets/logo.png', width: 150.0, height: 160.0),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: new TextStyle(fontSize: 20),
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email ou usuário",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.blue)),
                      suffixIcon: FlatButton(
                      child: Icon(Icons.person, color: Colors.blue,),
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
                  style: new TextStyle(fontSize: 20),
                  autofocus: true,
                  obscureText: is_visible == true? false : true,
                  decoration: InputDecoration(
                    labelText: "Digite sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.blue)),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ButtonTheme(
                  height: 60,
                  child: RaisedButton(
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
                child: Text('Criar conta', style: TextStyle(color: Colors.blue), textAlign: TextAlign.center,)
              )
          ],
        ),
        ),
      )
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  
  int _currentIndex = 0;
  final List<Widget> _children = [
    Treinos(),
    Aerobico(),
    Corpo()
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        backgroundColor: Colors.green,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center, color: Colors.white,),
            title: Text('Treinos', style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run, color: Colors.white,),
            title: Text('Aerobicos', style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white,),
            title: Text('Corpo', style: TextStyle(color: Colors.white),)
          )
        ] 
      ),
    );
  }
}