import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/config/app_config.dart';
import 'package:flrx_skeleton/store/states/app_state.dart';
import 'package:flrx_skeleton/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class App extends StatelessWidget {
  App({this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        localizationsDelegates: <LocalizationsDelegate<Object>>[
          Application.get<Localizer>().getLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppConfig.supportedLocales,
        theme: AppTheme.getTheme(),
        onGenerateRoute: AppRouter.router.generator,
      ),
    );
  }
}
