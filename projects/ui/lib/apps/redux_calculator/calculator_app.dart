import 'package:flutter/material.dart';
import 'redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'button_panels.dart';

loggingMiddleware(Store<AppState> store, action, NextDispatcher next) {
  next(action);
  var act = action as CalculateAction;
  print('${new DateTime.now()}: ${act.op} : ${store.state.currentInput}');
}

class CalculatorApp extends StatelessWidget {
  final store = new Store<AppState>(appStateReducer,
      initialState: new AppState(), middleware: [loggingMiddleware]);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Calculator")),
        body: new StoreProvider(
            store: store,
            child: new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                  children: [new CalculatorScreen(), new CalculatorPanel()]),
            )));
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, String>(
      converter: (store) => store.state.currentInput.toString(),
      builder: (BuildContext context, String output) {
        return new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Text(output),
        );
      },
    );
  }
}
