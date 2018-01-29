import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
      child: new RaisedButton(
        child: new Text(
        "Good morning Tarakan",
      ),
        onPressed: (){
          var dlg = new AlertDialog(
            title: new Text("Greeting"),
            content: new Text("Hello World"),
          );
          showDialog(context:context, child: dlg);
        },
      )
    ),
    ) ;
  }
}

var x = new MaterialApp(
      home: new Home(),
    );

void main() {
  runApp(
    x
  );
}

void onPressed() {
}
