import 'package:flrx/flrx.dart';
import 'package:flrx/pages/viewmodel.dart';
import 'package:flrx_skeleton/modules/common/models/post.dart';
import 'package:flrx_skeleton/modules/common/service/post_service.dart';
import 'package:flrx_skeleton/store/actions/actions.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_future_middleware/redux_future_middleware.dart';

class PostPageVM extends ViewModel<AppState> {
  late List<Post> posts;

  /// TODO(ibrahim-mubarak): Dispatch should be a part of Base ViewModel
  late void Function(dynamic) dispatch;

  @override
  void init(Store<AppState> store) {
    dispatch = store.dispatch;
    posts = store.state.posts;
  }

  void fetchPosts() => dispatch(
        FutureAction<FetchPostsAction, List<Post>>(
          future: Application.get<PostService>().getAll(),
        ),
      );
}
