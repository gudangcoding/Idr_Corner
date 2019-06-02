import 'package:flutter/material.dart';

class Chap06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parks Application',
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
      backgroundColor: Colors.yellow[800],
      appBar: new AppBar(
        backgroundColor: Colors.pink[300],
        leading: new Icon(Icons.home),
        title: Center(child: new Text('Idr Corner')),
        actions: <Widget>[
          new Icon(Icons.search),
        ],
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            new Icon(
              Icons.local_pizza,
              size: 70.0,
              color: Colors.red,
            ),
              Row(
                children: <Widget>[
                  new Icon(Icons.donut_large, size: 70.0, color: Colors.red,),
                  new Icon(Icons.donut_large, size: 70.0, color: Colors.red,),
                  new Icon(Icons.donut_large, size: 70.0, color: Colors.red,),
                ],
              ),
            new Icon(Icons.cake, size: 70.0, color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
