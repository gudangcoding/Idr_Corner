import 'package:flutter/material.dart';

class Chap11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View Test",
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
        backgroundColor: Colors.red[900],
        title: new Text("리스트 view"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "HTML",),
          new ListTutor(subicon: "https://cdn0.iconfinder.com/data/icons/flat-file-format/100/css-512.png", subtitle: "CSS",),
          new ListTutor(subicon: "https://www.icone-png.com/png/52/52497.png", subtitle: "JavaScript",),
          new ListTutor(subicon: "http://pngimg.com/uploads/php/php_PNG36.png", subtitle: "PHP",),
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "Canvas",),
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "Bootstrap",),
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "CodeIgniter",),
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "Game",),
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "Illestrator",),
          new ListTutor(subicon: "http://www.sclance.com/pngs/html-logo-png/html_logo_png_685064.jpg", subtitle: "Flutter",),
        ],
      ),
    );
  }
}

class ListTutor extends StatelessWidget {

  ListTutor ({this.subicon, this.subtitle});

  final String subicon;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(
                  subicon),
              width: 100.0,
            ),
            Container(
              padding: new EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    new Text(
                      subtitle,
                      style: new TextStyle(fontSize: 20.0),
                    ),
                    new Text('아이콘 및 제목에 관한 디테일 설명')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
