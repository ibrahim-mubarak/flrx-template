import 'package:flrx_skeleton/modules/common/models/post.dart';
import 'package:flrx_skeleton/store/actions/actions.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:redux_future_middleware/redux_future_middleware.dart';

class AppStateReducer {
  static AppState reduce(AppState prevState, dynamic action) {
    if (action is FutureSucceededAction<FetchPostsAction, List<Post>>) {
      return AppState(action.payload);
    }
    return prevState;
  }
}
