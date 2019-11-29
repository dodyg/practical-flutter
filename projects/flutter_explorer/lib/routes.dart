import 'package:flutter/material.dart';
import 'pages/alert_dialog_page.dart';
import 'pages/column_page.dart';
import 'pages/combo_box_page.dart';
import 'pages/container_page.dart';
import 'pages/form_page.dart';
import 'pages/hello_world_page.dart';
import 'pages/list_page.dart';
import 'pages/row_page.dart';
import 'pages/scaffold_page.dart';
import 'pages/sized_box_page.dart';

final routes = <String, WidgetBuilder>{
  '/hello-world': (context) => HelloWorldPage(),
  '/dialog/alert': (context) => AlertDialogPage(),
  '/layouts/rows/simple': (context) => RowPage(),
  '/layouts/columns/simple': (context) => ColumnPage(),
  '/layouts/containers/simple': (context) => ContainerPage(),
  '/layouts/containers/square': (context) => ContainerSquare(),
  '/layouts/list/simple': (context) => ListPage(),
  '/layouts/scaffold/simple': (context) => ScaffoldPage(),
  '/layouts/form/simple': (context) => FormPage(),
  '/layouts/sized_box/simple': (context) => SizedBoxPage(),
  '/elements/combobox/simple': (context) => ComboBoxPage()
};
