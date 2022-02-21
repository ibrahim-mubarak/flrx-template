import 'package:flrx_skeleton/modules/common/store/states/counter_state.dart';

class AppState {
  CounterState _counterState = CounterState.initialState();

  CounterState get counterState => _counterState;

  AppState(this._counterState);

  factory AppState.initialState() => AppState(CounterState.initialState());
}
