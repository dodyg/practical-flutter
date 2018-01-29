import 'package:flutter/material.dart';
import 'pages/alert_dialog_page.dart';
import 'pages/hello_world_page.dart';

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
      ),
    ),
    ) ;
  }
}

var x = new MaterialApp(
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/hello-world' : (BuildContext context) => new HelloWorldPage(),
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
