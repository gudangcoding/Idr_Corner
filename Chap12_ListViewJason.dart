// 아 너무 어렵다.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Chap12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Jason',
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List dataJSON;

  Future<String> getData() async {
    var hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJSON = jsonDecode(hasil.body);
    });
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("리스트 데이터 제이슨"),
      ),
      body: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return Container(
            padding: new EdgeInsets.all(20.0),
            child: new Card(
              child: Container(
                padding: new EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      dataJSON[i]['title'],
                      style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                    new Text(
                        dataJSON[i]['body']
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
