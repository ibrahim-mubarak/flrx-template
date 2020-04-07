import 'package:flrx/components/modules/module.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx/navigation/widget_route.dart';
import 'package:flrx_skeleton/modules/common/pages/counter_page.dart';

class CommonModule extends Module {
  @override
  String get name => "common";

  @override
  bool get shouldNamespaceRoutes => false;

  @override
  Map<String, WidgetRoute> routes() {
    return {
      "/": WidgetRoute((args) => CounterPage()), // common/
    };
  }

  @override
  void onInit() {
    locator.registerSingleton<Logger>(ConsoleLogger());
    locator.registerSingleton<ErrorReporter>(SentryErrorReporter(dsn: "dsn"));
    locator.registerLazySingleton<Localizer>(
      () => JsonLocalizer(
          fallbackFile: 'en', path: "assets/i18n", useCountryCode: false),
    );
  }
}
