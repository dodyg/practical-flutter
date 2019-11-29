import 'package:flutter/material.dart';
import 'pages/alert_dialog_page.dart';
import 'pages/hello_world_page.dart';
import 'pages/row_page.dart';
import 'pages/column_page.dart';
import 'pages/container_page.dart';
import 'pages/list_page.dart';
import 'pages/scaffold_page.dart';
import 'pages/form_page.dart';
import 'pages/sized_box_page.dart';
import 'pages/combo_box_page.dart';

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
      body: new ListView(children: [
        new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              navigateTo(context, "Hello World", "/hello-world"),
              navigateTo(context, "Show Dialog Page", "/dialog/alert"),
              navigateTo(context, "Show Rows", "/layouts/rows/simple"),
              navigateTo(context, "Show Columns", "/layouts/columns/simple"),
              navigateTo(context, "Container", "/layouts/containers/simple"),
              navigateTo(
                  context, "Container Square", "/layouts/containers/square"),
              navigateTo(context, "List", "/layouts/list/simple"),
              navigateTo(context, "Form", "/layouts/form/simple"),
              navigateTo(context, "RSS", "/apps/rss"),
              navigateTo(context, "Scaffold", "/layouts/scaffold/simple"),
              navigateTo(context, "Calculator", "/apps/calculator"),
              navigateTo(context, "SizedBox", "/layouts/sized_box/simple"),
              navigateTo(context, "Counter", "/apps/redux_counter_app"),
              navigateTo(context, "Combo Box", "/elements/combobox/simple")
            ])
      ]),
    );
  }
}

var x = new MaterialApp(home: new HomeScreen(), routes: <String, WidgetBuilder>{
  '/hello-world': (context) => new HelloWorldPage(),
  '/dialog/alert': (context) => new AlertDialogPage(),
  '/layouts/rows/simple': (context) => new RowPage(),
  '/layouts/columns/simple': (context) => new ColumnPage(),
  '/layouts/containers/simple': (context) => new ContainerPage(),
  '/layouts/containers/square': (context) => new ContainerSquare(),
  '/layouts/list/simple': (context) => new ListPage(),
  '/layouts/scaffold/simple': (context) => new ScaffoldPage(),
  '/layouts/form/simple': (context) => new FormPage(),
  '/layouts/sized_box/simple': (context) => new SizedBoxPage(),
  '/elements/combobox/simple': (context) => new ComboBoxPage()
});

void main() {
  runApp(x);
}
