import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/navigation/handler.dart';
import 'package:fluro/fluro.dart';

/// TODO(ibrahim-mubarak): Need better way of registering Handlers
class AppRouteRetriever extends RouteRetriever {
  @override
  Map<String, Handler> getCommonRoutes() {
    return <String, Handler>{
      "/": getRootHandler(),
    };
  }

  @override
  Map<String, Handler> getModuleRoutes() {
    return {};
  }

  @override
  Handler getRootHandler() {
    return homeHandler;
  }
}
