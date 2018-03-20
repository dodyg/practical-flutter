import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

enum Actions { Increment, Decrement, Multiply, Divide, Set, Reset }

enum AppOperation { Increment, Decrement, Multiply, Divide, Set, Reset, None }

@immutable
class AppState {
  final int total;
  final int currentValue;
  final AppOperation op;

  AppState(
      {this.total = 0, this.currentValue = 0, this.op = AppOperation.None});

  AppState copyWith({int total, int currentValue, AppOperation op}) {
    return new AppState(
        total: total ?? this.total,
        currentValue: currentValue ?? this.currentValue,
        op: op ?? this.op);
  }

  @override
  String toString() => 'total:$total, currentValue:$currentValue, op:$op';
}

class CalculateAction {
  final int inputValue;
  final Actions op;

  CalculateAction({this.inputValue, this.op});
}

int totalReducer(int total, CalculateAction action) {
  switch (action.op) {
    case Actions.Decrement:
      return total - action.inputValue;
    case Actions.Increment:
      return total + action.inputValue;
    case Actions.Divide:
      return total ~/ action.inputValue;
    case Actions.Multiply:
      return total * action.inputValue;
    case Actions.Reset:
      return 0;
    case Actions.Set:
      return action.inputValue;
    default:
      throw new Exception();
  }
}

AppOperation appOperationReducer(Actions action) {
  var table = {
    Actions.Increment: AppOperation.Increment,
    Actions.Decrement: AppOperation.Decrement,
    Actions.Divide: AppOperation.Divide,
    Actions.Multiply: AppOperation.Multiply,
    Actions.Reset: AppOperation.Reset,
    Actions.Set: AppOperation.Set
  };

  return table[action];
}

AppState appStateReducer(AppState state, CalculateAction action) {
  return state.copyWith(
      total: totalReducer(state.total, action),
      currentValue: action.inputValue,
      op: appOperationReducer(action.op));
}

class CalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CalculatorAppState();
  }
}

class CalculatorAppState extends State<CalculatorApp> {
  int _number = 0;

  Widget createBtn(int number) {
    return new Container(
        padding: new EdgeInsets.all(8.0),
        child: new FlatButton(
            color: Colors.green,
            child: new Text("$number"),
            onPressed: () {
              setState(() {
                _number = number;
              });
            }));
  }

  List<Widget> createButtons() {
    return [
      new Row(children: <Widget>[createBtn(1), createBtn(2), createBtn(3)]),
      new Row(children: <Widget>[createBtn(4), createBtn(5), createBtn(6)]),
      new Row(children: <Widget>[createBtn(7), createBtn(8), createBtn(9)]),
      new Row(children: <Widget>[createBtn(101)])
    ];
  }

  List<Widget> create() {
    var items = <Widget>[new Center(child: new Text("$_number"))];
    items.addAll(createButtons());
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Calculator")),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.whatshot),
        ),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Column(children: create()),
        ));
  }
}
