import 'package:flutter/material.dart';

class Aerobico extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AerobicoState();
  }
}

class _AerobicoState extends State<Aerobico> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Pag dos aerobicos.'),
      )
    );
  }
}