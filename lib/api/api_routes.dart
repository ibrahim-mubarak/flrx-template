/// TODO(ibrahim-mubarak): Need to add structure to API Routes
/// Proposed Format is as follows
/// import 'package:flrx_skeleton/service/AuthService.dart';
///
/// class ApiRoutes {
///  static const String LOGIN_ROUTE = "/login";
///
///  Map<String, Future Function()> register() {
///    var a = {'a': () {}};
///    return {LOGIN_ROUTE: AuthService.login, ...a};
///  }
///}
