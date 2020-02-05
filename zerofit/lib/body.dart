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
        child: ListView(
          children: <Widget>[ 
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: CircleAvatar(
                backgroundImage: AssetImage('assets/jackie.jpg'),
                radius: 150,
              )
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text('Jackie')
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text('28 anos')
              )
          ]
        ),
      )
    );
  }
}