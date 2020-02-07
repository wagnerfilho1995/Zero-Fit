import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Ficha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FichaState();
  }
}

class _FichaState extends State<Ficha> {

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  bool exdone = false;
  
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Leg 45°", textAlign: TextAlign.center ,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Séries: 3"),
              Divider(),
              Text("Repetições: 10"),
              Divider(),
              Text("Peso: 100kg\n"),
              Divider(),
            ]
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.pop(context, '');
              },
            ),
          ],
        );
      },
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Ficha de Treinamento', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: FlipCard(
                  key: cardKey,
                  flipOnTouch: false,
                  direction: FlipDirection.HORIZONTAL,
                  front: Container(
                    color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/leg45.jpg')
                            ),
                            title: Text('Leg 45°', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('Programa: perna', style: TextStyle(fontSize: 14, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                            onTap: (){
                              _showDialog();
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/supino-inclinado.jpg')
                            ),
                            title: Text('Supino Inclinado', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/extensora.jpg')
                            ),
                            title: Text('Extensora', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/supino-reto.jpg')
                            ),
                            title: Text('Supino Reto', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/hack.jpg')
                            ),
                            title: Text('Hack', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/rosca-direta.jpg')
                            ),
                            title: Text('Rosca Direta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/panturilha.jpg')
                            ),
                            title: Text('Panturrilha', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/rosca-alternada.jpg')
                            ),
                            title: Text('Rosca Alternada', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          FlatButton(
                            onPressed: () => cardKey.currentState.toggleCard(),
                            child: Text('Virar', style: TextStyle(color: Colors.white)),
                          ),
                        ]
                      ),
                      /*child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/leg/leg45.jpg')
                        ),
                        title: Text('Leg 45°', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                      )*/
                  ),
                  back: Container(
                    color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/flexora.jpg')
                            ),
                            title: Text('Flexora', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('Programa: perna', style: TextStyle(fontSize: 14, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/remada.jpg')
                            ),
                            title: Text('Remada', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/tri-corda.jpg')
                            ),
                            title: Text('Tríceps Corda', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/aducao.jpg')
                            ),
                            title: Text('Adução', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/puxada-peito.jpg')
                            ),
                            title: Text('Puxada ao peito', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/leg/abducao.jpg')
                            ),
                            title: Text('Abdução', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/tri-frances.jpg')
                            ),
                            title: Text('Tríceps Francês', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            child: Divider(
                              thickness: 1,
                              height: 5,
                              color: Colors.white,) 
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/flexao-lat-tronco.jpg')
                            ),
                            title: Text('Rosca Alternada', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            subtitle: Text('3x', style: TextStyle(fontSize: 18, color: Colors.white)),
                            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                          ),
                          FlatButton(
                            onPressed: () => cardKey.currentState.toggleCard(),
                            child: Text('Virar', style: TextStyle(color: Colors.white),),
                          ),
                        ]
                      ),
                  ),
                )
              )
          ],
        ),
      )
    );
  }
}