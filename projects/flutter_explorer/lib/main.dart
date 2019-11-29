import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'theme.dart';
import 'routes.dart';

var x = new MaterialApp(title: "Flutter Explorer", home: Scaffold(
  appBar: AppBar(title: Text("Flutter Explorer")),
  body: HomeScreen(),
), routes: routes, theme: myTheme);

void main() {
  runApp(x);
}
