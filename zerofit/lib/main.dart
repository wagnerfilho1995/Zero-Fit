import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: Login(),
    );
  }
}
