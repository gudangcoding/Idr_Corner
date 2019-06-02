import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Head Set", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Image(image: new NetworkImage("https://img.lovepik.com/element/40029/0243.png_860.png"),width: 200.0,)
          ],
        ),
      ),
    );
  }
}
