import 'package:flutter/material.dart';

class Chap07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '카드 그리고 데이터 파싱',
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
      appBar: new AppBar(
        title: new Text('카드 그리고 파싱'),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Card(
              child: Column(
                children: <Widget>[
                  CardStyle(
                    icon: Icons.home,
                    iconColor: Colors.brown,
                    text: "Home",
                  ),
                  CardStyle(
                    icon: Icons.favorite,
                    iconColor: Colors.pink,
                    text: "Favorite",
                  ),
                  CardStyle(
                    icon: Icons.place,
                    iconColor: Colors.blue,
                    text: "Place",
                  ),
                  CardStyle(
                    icon: Icons.settings,
                    iconColor: Colors.black45,
                    text: "Home",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardStyle extends StatelessWidget {
  CardStyle({this.icon, this.text, this.iconColor});

  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Icon(
                icon,
                size: 50.0,
                color: iconColor,
              ),
              new Text(
                text,
                style: new TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
