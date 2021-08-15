import 'dart:io';

import 'package:dev_toolkit/dev_toolkit.dart';
import 'package:dio/dio.dart';
import 'package:flrx/components/modules/module.dart';
import 'package:flrx/flrx.dart';
import 'package:flrx_skeleton/config/app_config.dart';
import 'package:flrx_skeleton/modules/common/pages/posts_page.dart';
import 'package:flrx_skeleton/modules/common/service/post_service.dart';

class CommonModule extends Module {
  @override
  String get name => "common";

  @override
  bool get shouldNamespaceRoutes => false;

  @override
  Map<String, RouteWidgetBuilder> routes() {
    return {
      "/": (args) => PostPage(),
    };
  }

  @override
  Future<void> register() async {
    HttpOverrides.global = NetworkToolkitHttpOverrides();
    locator.registerSingleton<Logger>(Logger());
    var dio = Dio(BaseOptions(baseUrl: AppConfig.apiUrl));
    locator.registerSingleton<Dio>(dio);
    locator.registerSingleton<PostService>(PostService.newInstance(dio));
    locator.registerLazySingleton<Localizer>(
      () => JsonLocalizer(
        fallbackFile: 'en',
        path: "assets/i18n",
        useCountryCode: false,
      ),
    );
  }
}
