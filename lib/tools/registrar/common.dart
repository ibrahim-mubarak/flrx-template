import 'package:flrx/components/logger/base_logger.dart';
import 'package:flrx/components/logger/console_logger.dart';
import 'package:flrx/components/registrar/service_locator.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/tools/registrar/registrar.dart';

class CommonRegistrar extends Registrar {
  @override
  void register(ServiceLocator locator) {
    locator.registerSingleton<Logger>(ConsoleLogger());
    locator.registerSingleton<ErrorReporter>(SentryErrorReporter(dsn: "dsn"));
    locator.registerLazySingleton<Localizer>(() => JsonLocalizer(
        fallbackFile: 'en', path: "assets/i18n", useCountryCode: false));
  }
}
