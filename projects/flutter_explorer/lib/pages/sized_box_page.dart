import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Sized Box")),
        body: new Column(children: [
          new SizedBox(height: 100.0),
          new SizedBox(
            child: new Card(
              color: Colors.red,
            ),
            height: 300.0,
            width: 300.0,
          )
        ]));
  }
}
