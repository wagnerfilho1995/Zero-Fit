import 'package:flutter/material.dart';
import 'treinos.dart';            
import 'body.dart';
import 'aerobic.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
      home: MyBottomNavigationBar(),
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