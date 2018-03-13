import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

enum Actions { Increment }

int countReducer(int state, action) {
  if (action == Actions.Increment) return state + 1;

  return state;
}

class ReduxCounterApp extends StatelessWidget {
  final store = new Store<int>(countReducer, initialState: 0);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Counter Redux",
        home: new StoreProvider(
          store: store,
          child: new Scaffold(
              appBar: new AppBar(title: new Text("Redux")),
              body: new Center(
                  child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('You have pushed the button this many times'),
                  new StoreConnector<int, String>(
                    converter: (store) => store.state.toString(),
                    builder: (context, count) => new Text(count),
                  ),
                ],
              )),
              floatingActionButton: new StoreConnector<int, VoidCallback>(
                converter: (store) {
                  return () => store.dispatch(Actions.Increment);
                },
                builder: (context, callback) => new FloatingActionButton(
                    onPressed: callback,
                    tooltip: "Increment",
                    child: new Icon(Icons.adb)),
              )),
        ));
  }
}
