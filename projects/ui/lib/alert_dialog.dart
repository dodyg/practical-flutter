import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
      child: new RaisedButton(
        child: new Text(
        "Show Dialog",
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
