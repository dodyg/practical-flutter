import 'package:flutter/material.dart';
import 'package:flutter_explorer/app_samples_screen.dart';
import 'ui_samples_screen.dart';
import 'theme.dart';
import 'routes.dart';
// https://rxlabz.github.io/panache/#/editor for the theme

var home = DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
        ],
      ),
    ),
    body: TabBarView(
      children: <Widget>[
        UISamplesScreen(),
        AppSamplesScreen()
      ],
    ),
  ),
);

var x = new MaterialApp(title: "Flutter Explorer", home: home, routes: routes(), theme: myTheme);

void main() {
  runApp(x);
}
