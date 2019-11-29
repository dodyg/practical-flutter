import 'package:flutter/material.dart';

ListTile navigateTo(BuildContext context, String text, String nav) =>
    new ListTile(
      title: Text(text),
      onTap: () {
        Navigator.of(context).pushNamed(nav);
      },
    );

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