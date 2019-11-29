import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Sized Box")),
        body: Column(children: [
          SizedBox(height: 100.0),
          SizedBox(
            child: Card(
              color: Colors.red,
            ),
            height: 300.0,
            width: 300.0,
          )
        ]));
  }
}
