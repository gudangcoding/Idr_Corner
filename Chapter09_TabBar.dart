import 'package:flutter/material.dart';

import './Chap09_Tab1.dart' as headset;
import './Chap09_Tab2.dart' as computer;
import './Chap09_Tab3.dart' as radio;
import './Chap09_Tab4.dart' as smartphone;


class Chap09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar',
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('다프트 일레트로닉'),
        backgroundColor: Colors.amber,
        bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.computer),text: '컴퓨터',),
              new Tab(icon: new Icon(Icons.headset),text: '헤드셑',),
              new Tab(icon: new Icon(Icons.radio),text: '라디오',),
              new Tab(icon: new Icon(Icons.smartphone),text: '스마트 폰',),
            ]
        ),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new computer.Computer(),
            new headset.Headset(),
            new radio.Radio(),
            new smartphone.SmartPhone(),
          ]
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.computer),),
              new Tab(icon: new Icon(Icons.headset),),
              new Tab(icon: new Icon(Icons.radio),),
              new Tab(icon: new Icon(Icons.smartphone),),
            ]
        ),
      ),
    );
  }
}
