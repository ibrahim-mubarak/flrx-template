import 'package:flrx/flrx.dart';
import 'package:flrx/widgets/flavor_app.dart';
import 'package:flrx_skeleton/app.dart';
import 'package:flrx_skeleton/config/flavors.dart';
import 'package:flrx_skeleton/modules/auth/auth.dart';
import 'package:flrx_skeleton/modules/common/common_module.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flrx_skeleton/store/store_retriever.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';

void main() {
  FlavorConfig(flavor: AppFlavors.COUNTER_DEV, configList: <Config>[]);
  Application.init(initApp, modules: [
    CommonModule(),
    AuthModule(),
  ]);
}

void initApp() async {
  Store<AppState> store = await AppStoreRetriever().retrieveStore();
  runApp(FlavoredApp(child: App(store: store)));
}
