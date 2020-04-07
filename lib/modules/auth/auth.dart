import 'package:flrx/components/modules/module.dart';
import 'package:flrx/navigation/widget_route.dart';
import 'package:flrx_skeleton/modules/auth/pages/login_page.dart';

class AuthModule extends Module {
  @override
  String get name => "auth";

  @override
  Map<String, WidgetRoute> routes() {
    return {
      "login/:id": WidgetRoute((Map<String, List<String>> args) => LoginPage(args: args)),
      "register": WidgetRoute((args) => LoginPage()),
    };
  }
}
