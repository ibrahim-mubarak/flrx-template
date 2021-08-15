import 'dart:ui';

import 'package:flrx/components/modules/module.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/modules/common/common_module.dart';

class AppConfig extends ApplicationConfig {
  static const apiUrl = String.fromEnvironment(
    "API_URL",
    defaultValue: "https://jsonplaceholder.typicode.com/",
  );

  static const List<String> _supportedLocales = <String>[
    "en",
    "fr",
    "it",
    "de"
  ];

  static List<Locale> get supportedLocales =>
      _supportedLocales.map((String code) => Locale(code)).toList();

  @override
  List<Module> get modules => [
        CommonModule(),
      ];
}
