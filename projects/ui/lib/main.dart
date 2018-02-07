import 'package:flutter/material.dart';
import 'pages/alert_dialog_page.dart';
import 'pages/hello_world_page.dart';
import 'pages/row_page.dart';
import 'pages/column_page.dart';
import 'pages/container_page.dart';

const Inset = 8.0;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.all(Inset),
                child: new Center(
                  child: new RaisedButton(
                    child: new Text(
                      "Hello World Page",
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/hello-world');
                    },
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.all(Inset),
                child: new Center(
                  child: new RaisedButton(
                    child: new Text(
                      "Show Dialog Page",
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/dialog/alert');
                    },
                  ),
                )),
                new Padding(
                  padding: new EdgeInsets.all(Inset),
                  child: new Center(
                    child: new RaisedButton(
                      child: new Text("Show Rows"),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/layouts/rows/simple');
                      },
                    )
                  )
                ),
                new Padding(
                  padding: new EdgeInsets.all(Inset),
                  child: new Center(
                    child: new RaisedButton(
                      child: new Text("Show Columns"),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/layouts/columns/simple');   
                      },
                    )
                  )
                )
          ]),
    );
  }
}

var x = new MaterialApp(home: new HomeScreen(), routes: <String, WidgetBuilder>{
  '/hello-world': (context) => new HelloWorldPage(),
  '/dialog/alert': (context) => new AlertDialogPage(),
  '/layouts/rows/simple': (context) => new RowPage(),
  '/layouts/columns/simple' : (context) => new ColumnPage(),
  '/layouts/containers/simple' : (context) => new ContainerPage()
});

void main() {
  runApp(x);
}

void onPressed() {}
