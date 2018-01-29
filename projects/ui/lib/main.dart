import 'package:flutter/material.dart';
import 'alert_dialog.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
      child: new RaisedButton(
        child: new Text(
        "Show Dialog Sample",
      ),
        onPressed: (){
          Navigator.of(context).pushNamed('/dialog/alert');
        },
      )
    ),
    ) ;
  }
}

var x = new MaterialApp(
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/dialog/alert' : (BuildContext context) => new AlertDialogPage()
      }
    );

void main() {
  runApp(
    x
  );
}

void onPressed() {
}
