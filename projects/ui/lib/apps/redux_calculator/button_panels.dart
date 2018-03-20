import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'redux.dart';

class CalculatorPanel extends StatelessWidget {
  Widget createBtn(Store<AppState> store, int number) {
    return new Container(
        padding: new EdgeInsets.all(8.0),
        child: new FlatButton(
            color: Colors.green,
            child: new Text("$number"),
            onPressed: () {
              store.dispatch(
                  new CalculateAction(inputValue: number, op: Actions.Set));
            }));
  }

  List<Widget> createButtons(Store<AppState> store) {
    return [
      new Row(children: <Widget>[
        createBtn(store, 1),
        createBtn(store, 2),
        createBtn(store, 3)
      ]),
      new Row(children: <Widget>[
        createBtn(store, 4),
        createBtn(store, 5),
        createBtn(store, 6)
      ]),
      new Row(children: <Widget>[
        createBtn(store, 7),
        createBtn(store, 8),
        createBtn(store, 9)
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new StoreBuilder(
      builder: (BuildContext context, Store<AppState> store) {
        return new Container(
            child: new Column(
          children: createButtons(store),
        ));
      },
    );
  }
}
