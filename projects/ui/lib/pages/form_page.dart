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
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Form(
                key: _formKey,
                child: new ListView(
                  children: <Widget>[
                    new TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(labelText: "Name"),
                    ),
                    new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(labelText: "Age"),
                    ),
                    new TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(labelText: "Email"),
                    ),
                    new TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: new InputDecoration(labelText: "Password")),
                    new Container(
                        child: new RaisedButton(
                      child: new Text("Register"),
                      onPressed: null,
                    ))
                  ],
                ))));
  }
}
