import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
        child: Text(
          "Show Dialog",
        ),
        onPressed: () {
          var dlg = AlertDialog(
            title: Text("Greeting"),
            content: Text("Hello World"),
          );
          showDialog(context: context, child: dlg);
        },
      )),
    );
  }
}
