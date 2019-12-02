import 'package:flutter/material.dart';
import 'navigate_to.dart';

class UISamplesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
        Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigateTo("Hello World", "/hello-world"),
              NavigateTo("Show Dialog Page", "/dialog/alert"),
              NavigateTo("Show Rows", "/layouts/rows/simple"),
              NavigateTo("Show Columns", "/layouts/columns/simple"),
              NavigateTo("Container", "/layouts/containers/simple"),
              NavigateTo("Container Square", "/layouts/containers/square"),
              NavigateTo("List", "/layouts/list/simple"),
              NavigateTo("Form", "/layouts/form/simple"),
              NavigateTo("Scaffold", "/layouts/scaffold/simple"),
              NavigateTo("SizedBox", "/layouts/sized_box/simple"),
              NavigateTo("Combo Box", "/elements/combobox/simple"),
              NavigateTo("Basic Form Builder", "/extras/form-builder/basic")
            ])
      ]);
  }
}
