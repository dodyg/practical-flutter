import 'package:flutter/material.dart';

class NavigateTo extends StatelessWidget {
  final String _text, _nav;

  NavigateTo(this._text, this._nav);

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
