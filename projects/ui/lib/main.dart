import 'package:flutter/material.dart';
import 'pages/alert_dialog_page.dart';
import 'pages/hello_world_page.dart';
import 'pages/row_page.dart';
import 'pages/column_page.dart';
import 'pages/container_page.dart';

const Inset = 8.0;

Padding navigateTo(BuildContext context, String text, String nav) =>
    new Padding(
        padding: new EdgeInsets.all(Inset),
        child: new Center(
          child: new RaisedButton(
            child: new Text(
              text,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(nav);
            },
          ),
        ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            navigateTo(context, "Hello World", "/hello-world"),
            navigateTo(context, "Show Dialog Page", "/dialog/alert"),
            navigateTo(context, "Show Rows", "/layouts/rows/simple"),
            navigateTo(context, "Show Columns", "/layouts/columns/simple")
          ]),
    );
  }
}

var x = new MaterialApp(home: new HomeScreen(), routes: <String, WidgetBuilder>{
  '/hello-world': (context) => new HelloWorldPage(),
  '/dialog/alert': (context) => new AlertDialogPage(),
  '/layouts/rows/simple': (context) => new RowPage(),
  '/layouts/columns/simple': (context) => new ColumnPage(),
  '/layouts/containers/simple': (context) => new ContainerPage()
});

void main() {
  runApp(x);
}
