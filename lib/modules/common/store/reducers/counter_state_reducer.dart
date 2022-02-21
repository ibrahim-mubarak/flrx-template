import 'package:flrx_skeleton/modules/common/store/actions/actions.dart';
import 'package:flrx_skeleton/modules/common/store/states/counter_state.dart';

class CounterStateReducer {
  static CounterState reduce(CounterState prevState, dynamic action) {
    if (action is IncrementAction) {
      return CounterState(prevState.counter + 1);
    }

    return prevState;
  }
}
