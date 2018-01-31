import 'package:flutter/material.dart';


class ColumnPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text('Column 1'),
        new Text('Column 2'),
        new Text('Column 3')
      ],
    );
  }
}