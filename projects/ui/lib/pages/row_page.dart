import 'package:flutter/material.dart';

//You will see visual errors if the device screen cannot show all the text on the screen
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