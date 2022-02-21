import 'package:flrx_skeleton/modules/common/store/reducers/counter_state_reducer.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';

class AppStateReducer {
  static AppState reduce(AppState prevState, dynamic action) {
    var counterState = CounterStateReducer.reduce(prevState.counterState, action);

    return AppState(counterState);
  }
}
