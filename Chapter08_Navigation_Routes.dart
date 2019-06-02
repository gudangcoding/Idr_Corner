import 'package:flutter/material.dart';

class Chap08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Routes',
      home: new MyHome(),
      routes: <String, WidgetBuilder>{
        '/MyHome' : (BuildContext context) => new MyHome(),
        '/MyHome2nd' : (BuildContext context) => new MyHome2nd(),
      },
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
      appBar: new AppBar(
        title: new Text('Music'),
      ),
      body: new Center(
        child: new IconButton(
            icon: new Icon(
              Icons.headset,
              size: 50.0,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/MyHome2nd');
            },),
      ),
    );
  }
}

class MyHome2nd extends StatefulWidget {
  @override
  _MyHome2ndState createState() => _MyHome2ndState();
}

class _MyHome2ndState extends State<MyHome2nd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Speaker'),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/MyHome');
          },),
      ),
    );
  }
}

