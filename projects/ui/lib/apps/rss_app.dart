import 'package:flutter/material.dart';
import 'package:feedparser/feedparser.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

class _RssAppState extends State<RssApp> {
  String _output = "Waiting";

  Future increment() async {
    var client = new HttpClient();
    var req = await client.get("www.scripting.com", 80, "rss.xml");
    var res = await req.close();

    var completer = new Completer();
    var contents = new StringBuffer();
    res.transform(UTF8.decoder).listen((String data) {
      contents.write(data);
    }, onDone: () => completer.complete(contents.toString()));

    String rss = await completer.future;

    var parsed = parse(rss);
    setState(() {
      _output = parsed.description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
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
          new Center(child: new Text("$_output"))
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
