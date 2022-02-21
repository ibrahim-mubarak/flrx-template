import 'package:flrx/pages/viewmodel.dart';
import 'package:flrx_skeleton/modules/common/store/actions/actions.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:redux/redux.dart';

class CounterPageVM extends ViewModel<AppState> {
  int counter = 0;

  /// TODO(ibrahim-mubarak): Dispatch should be a part of Base ViewModel
  late void Function(dynamic) dispatch;

  @override
  void init(Store<AppState> store) {
    dispatch = store.dispatch;
    counter = store.state.counterState.counter;
  }

  void incrementCounter() => dispatch(IncrementAction());
}
