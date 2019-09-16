import 'package:flrx/flrx.dart';

class AppFlavors {
  static const Flavor COUNTER_DEV = Flavor("Counter Dev");
  static const Flavor COUNTER_PROD = Flavor("Counter Prod");

  static bool isProduction() =>
      FlavorConfig.instance.flavor == AppFlavors.COUNTER_PROD;

  static bool isDevelopment() =>
      FlavorConfig.instance.flavor == AppFlavors.COUNTER_DEV;
}
