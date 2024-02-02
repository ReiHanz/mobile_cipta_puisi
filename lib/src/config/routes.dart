import 'package:flutter/material.dart';

import '../features/home/home.dart';
import '../features/splash/splash.dart';

class ConfigRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    "/splash": (_) => const SplashScreen(),
    "/": (_) => const HomeScreen(),
  };
}
