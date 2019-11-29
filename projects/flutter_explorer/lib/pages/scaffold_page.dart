import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
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
        new BottomNavigationBarItem(
          icon: new Icon(Icons.access_time), 
          title: new Text("Add")
        ),
        new BottomNavigationBarItem(icon: new Icon(Icons.access_alarm), title: new Text("Alarm"))
      ],
      onTap: (idx) {
            var dlg = new AlertDialog(
              title: new Text("Greeting"),
              content: new Text("Tapped $idx"),
            );
            showDialog(context: context, child: dlg);
      },
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          child: new Icon(Icons.add)),
    );
  }
}
