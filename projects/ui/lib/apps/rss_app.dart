import 'package:flutter/material.dart';
import 'package:feedparser/feedparser.dart';
import 'dart:io';

class _RssAppState extends State<RssApp> {
  int _counter = 0;
  
  void increment() async {
    var client = new HttpClient();
    var req = await client.get("www.scripting.com", 80, "rss.xml");
    var res = await req.close();
    setState(() {
      _counter = res.statusCode + res.contentLength;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RSS"),
      ),
      body: new Column(
        children: <Widget>[
          new Center(
            child: new FlatButton(
              child: new Text("Load"),
              onPressed: this.increment,
            ),
          ),
          new Center(child: new Text("$_counter"))
        ],
      ),
    ); // TODO: implement build
  }
}

class RssApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RssAppState();
  }
}
