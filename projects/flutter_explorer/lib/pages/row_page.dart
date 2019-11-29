import 'package:flutter/material.dart';

class RowPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(children: <Widget>[
     new Text("Row 1"),
     new Text("Row 2"),
     new Text("Row 3") 
    ]);
  }
}