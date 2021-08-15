import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/app.dart';
import 'package:flrx_skeleton/config/app_config.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flrx_skeleton/store/store_retriever.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Application.init(initApp, config: AppConfig());
}

Future<void> initApp() async {
  Store<AppState> store = await AppStoreRetriever().retrieveStore();
  runApp(App(store: store));
}
