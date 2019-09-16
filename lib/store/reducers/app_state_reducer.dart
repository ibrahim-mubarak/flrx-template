import 'package:flrx_skeleton/store/actions/actions.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';

class AppStateReducer {
  static AppState reduce(AppState prevState, dynamic action) {
    if (action is IncrementAction) {
      return AppState(prevState.counter + 1);
    }
    return prevState;
  }
}
