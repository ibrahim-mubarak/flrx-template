import 'package:flrx/components/registrar/service_registrar.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx/widgets/flavor_app.dart';
import 'package:flrx_skeleton/app.dart';
import 'package:flrx_skeleton/config/flavors.dart';
import 'package:flrx_skeleton/navigation/route_retriever.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flrx_skeleton/store/store_retriever.dart';
import 'package:flrx_skeleton/tools/registrar/common.dart';
import 'package:flrx_skeleton/tools/registrar/registrar.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';

void main() {
  FlavorConfig(flavor: AppFlavors.COUNTER_DEV, configList: <Config>[]);
  Application.init(initApp, (ServiceRegistrar registrar) {
    CommonRegistrar().register(registrar);
  });
}

class AppRouterRegistrar extends Registrar {
  @override
  void register(ServiceRegistrar registrar) {
    AppRouter.init(AppRouteRetriever());
  }
}

void initApp() async {
  Store<AppState> store = await AppStoreRetriever().retrieveStore();
  runApp(FlavoredApp(child: App(store: store)));
}
