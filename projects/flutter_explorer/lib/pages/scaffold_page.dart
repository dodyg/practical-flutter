import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Scaffold"),
      ),
      body: Text("This is body"),
      drawer: Container(
        key: Key("drawer"),
        decoration: BoxDecoration(color: Colors.redAccent),
        width: 300.0,
        child: Text("Drawer"),
      ),
      bottomNavigationBar: new BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.access_time), 
          title: new Text("Add")
        ),
        new BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("Alarm"))
      ],
      onTap: (idx) {
            var dlg = AlertDialog(
              title: Text("Greeting"),
              content: Text("Tapped $idx"),
            );
            showDialog(context: context, child: dlg);
      },
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          child: Icon(Icons.add)),
    );
  }
}
