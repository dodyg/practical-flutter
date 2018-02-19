import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Scaffold"),
      ),
      body: new Text("This is body"),
      drawer: new Container(
        key: new Key("drawer"),
        decoration: new BoxDecoration(color: Colors.redAccent),
        width: 300.0,
        child: new Text("Drawer"),
      ),
      bottomNavigationBar: new BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.access_time), title: new Text("Add")),
        new BottomNavigationBarItem(icon: new Icon(Icons.access_alarm), title: new Text("Alarm"))
      ],
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {
            var dlg = new AlertDialog(
              title: new Text("Greeting"),
              content: new Text("Hello World"),
            );
            showDialog(context: context, child: dlg);
          },
          child: new Icon(Icons.add)),
    );
  }
}
