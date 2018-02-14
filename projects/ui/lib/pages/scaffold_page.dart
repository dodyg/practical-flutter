import 'package:flutter/material.dart';


class ScaffoldPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Scaffold"),
      ),
      body: new Text("This is body"),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
            var dlg = new AlertDialog(
            title: new Text("Greeting"),
            content: new Text("Hello World"),
          );
          showDialog(context: context, child: dlg);
        },
        child: new Icon(Icons.add)
      ),
    );
  }
}