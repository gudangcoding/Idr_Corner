import 'package:flutter/material.dart';

class Chap05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bar',
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: Center(
            child: new Text('Idr Corner')
        ),
        actions: <Widget>[
          new Icon(Icons.search),
        ],
      ),
    );
  }
}
