import 'package:flutter/material.dart';

class Computer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Computer", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image(image: new NetworkImage("http://www.ciokorea.com/sites/default/files/image/VPULSE.png"),width: 200.0,)
          ],
        ),
      ),
    );
  }
}
