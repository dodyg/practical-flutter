import 'package:flutter/material.dart';

class _NavigateTo extends StatelessWidget {
  final String _text, _nav;

  _NavigateTo(this._text, this._nav);

  @override
  Widget build(BuildContext context) => Container(
        child: ListTile(
          title: Text(_text),
          onTap: () {
            Navigator.of(context).pushNamed(_nav);
          },
        ),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black54))),
      );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(children: [
        new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _NavigateTo("Hello World", "/hello-world"),
              _NavigateTo("Show Dialog Page", "/dialog/alert"),
              _NavigateTo("Show Rows", "/layouts/rows/simple"),
              _NavigateTo("Show Columns", "/layouts/columns/simple"),
              _NavigateTo("Container", "/layouts/containers/simple"),
              _NavigateTo("Container Square", "/layouts/containers/square"),
              _NavigateTo("List", "/layouts/list/simple"),
              _NavigateTo("Form", "/layouts/form/simple"),
              _NavigateTo("Scaffold", "/layouts/scaffold/simple"),
              _NavigateTo("SizedBox", "/layouts/sized_box/simple"),
              _NavigateTo("Combo Box", "/elements/combobox/simple")
            ])
      ]),
    );
  }
}
