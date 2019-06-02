import 'package:flutter/material.dart';

class Chap13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Input Text , Alert & SnackBar",
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  String value1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Input Text, Alert Dialog & Snack Bar"),
        backgroundColor: Colors.purple,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: "Input Text",
              ),
              onChanged: (String str) {
                setState(() {
                  value1 = str;
                });
              },
            ),
            new Text(value1, style: new TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }
}
