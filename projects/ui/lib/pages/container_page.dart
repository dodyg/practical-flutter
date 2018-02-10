import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(color: const Color(0xFF00FF00));
}

class ContainerSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Center ( 
    child : new Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color(0xFF00FF00),
        width: 48.0,
        height: 48.0,
      ));
}
