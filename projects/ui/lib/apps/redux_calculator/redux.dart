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
