import 'package:flutter/material.dart';
import 'package:feedparser/feedparser.dart';

class _RssAppState extends State<RssApp> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
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
