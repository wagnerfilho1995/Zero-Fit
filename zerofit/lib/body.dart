import 'package:flutter/material.dart';

class Corpo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CorpoState();
  }
}

class _CorpoState extends State<Corpo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Pag do corpo.'),
      )
    );
  }
}