import 'package:flutter/material.dart';

class Chap04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text and icon Style',
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
      body: Center(
        child: new Container(
          color: Colors.blue[900],
          width: 200.0,
          height: 100.0,
          child: Center(
              child: new Icon(
                Icons.android,
                color: Colors.yellow,
                size: 70.0,
              )
          ),
        ),
      ),
    );
  }
}
