import 'dart:ui';

/// TODO(ibrahim-mubarak): Need better way of formatting languages
class AppConfig {
  static const List<String> _supportedLocales = <String>[
    "en",
    "fr",
    "it",
    "de"
  ];
  static List<Locale> get supportedLocales =>
      _supportedLocales.map((String code) => Locale(code)).toList();
}
