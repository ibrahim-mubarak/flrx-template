import 'package:flrx/components/logger/base_logger.dart';
import 'package:flrx/components/logger/console_logger.dart';
import 'package:flrx/components/registrar/service_registrar.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/tools/registrar/registrar.dart';

class CommonRegistrar extends Registrar {
  @override
  void register(ServiceRegistrar registrar) {
    registrar.registerSingleton<Logger>(ConsoleLogger());
    registrar.registerSingleton<ErrorReporter>(SentryErrorReporter(dsn: "dsn"));
    registrar.registerLazySingleton<Localizer>(() => JsonLocalizer(
        fallbackFile: 'en', path: "assets/i18n", useCountryCode: false));
  }
}
