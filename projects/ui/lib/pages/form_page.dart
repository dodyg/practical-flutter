import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FormPageState();
  }
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(child: new Form(key: _formKey, child: null)),
    );
  }
}
