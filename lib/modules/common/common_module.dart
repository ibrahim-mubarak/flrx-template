import 'package:flrx/components/modules/module.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/modules/common/pages/counter_page.dart';

class CommonModule extends Module {
  @override
  String get name => "common";

  @override
  bool get shouldNamespaceRoutes => false;

  @override
  Map<String, RouteWidgetBuilder> routes() {
    return {
      "/": (args) => CounterPage(),
    };
  }

  @override
  Future<void> onInit() async {
    locator.registerSingleton<Logger>(ConsoleLogger());
    locator.registerSingleton<ErrorReporter>(SentryErrorReporter(dsn: "dsn"));
    locator.registerLazySingleton<Localizer>(
      () => JsonLocalizer(
          fallbackFile: 'en', path: "assets/i18n", useCountryCode: false),
    );
  }
}
