import 'package:flrx/components/registrar/service_locator.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/navigation/route_retriever.dart';
import 'package:flrx_skeleton/tools/registrar/registrar.dart';

class AppRouterRegistrar extends Registrar {
  @override
  void register(ServiceLocator registrar) {
    AppRouter.init(AppRouteRetriever());
  }
}
