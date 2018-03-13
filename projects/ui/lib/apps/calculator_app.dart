import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CalculatorAppState();
  }
}

class CalculatorAppState extends State<CalculatorApp> {
  int _number = 0;

  Widget createBtn(int number) {
    return new Container(
        padding: new EdgeInsets.all(8.0),
        child: new FlatButton(
            color: Colors.green,
            child: new Text("$number"),
            onPressed: () {
              setState(() {
                _number = number;
              });
            }));
  }

  List<Widget> createButtons() {
    return [
      new Row(children: <Widget>[createBtn(1), createBtn(2), createBtn(3)]),
      new Row(children: <Widget>[createBtn(4), createBtn(5), createBtn(6)]),
      new Row(children: <Widget>[createBtn(7), createBtn(8), createBtn(9)]),
      new Row(children: <Widget>[createBtn(101)])
    ];
  }

  List<Widget> create() {
    var items = <Widget>[new Center(child: new Text("$_number"))];
    items.addAll(createButtons());
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Calculator")),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.whatshot),
        ),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Column(children: create()),
        ));
  }
}
