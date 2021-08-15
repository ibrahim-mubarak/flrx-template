import 'package:dev_toolkit/dev_toolkit.dart';
import 'package:flrx/pages/page.dart';
import 'package:flrx_skeleton/modules/common/pages/viewmodels/post_page_vm.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flutter/material.dart' hide Page;

class PostPage extends StatelessWidget with Page<AppState, PostPageVM> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget buildContent(BuildContext context, PostPageVM vm) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('All Posts'),
        actions: [Container()],
      ),
      endDrawer: Drawer(child: DevToolkit()),
      body: ListView.builder(
        itemCount: vm.posts.length,
        itemBuilder: (BuildContext context, int index) {
          var post = vm.posts[index];
          return ListTile(
            key: Key(post.id.toString()),
            title: Text(post.title),
            subtitle: Text(post.body),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "Dev Toolkit",
            tooltip: "Dev Toolkit",
            onPressed: scaffoldKey.currentState?.openEndDrawer,
            child: Icon(Icons.build),
          ),
          SizedBox(width: 8),
          FloatingActionButton(
            onPressed: vm.fetchPosts,
            tooltip: 'Fetch Posts',
            child: Icon(Icons.download),
          ),
        ],
      ),
    );
  }

  @override
  PostPageVM initViewModel() => PostPageVM();
}
