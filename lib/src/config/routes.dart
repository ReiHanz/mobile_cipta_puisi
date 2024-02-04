import 'package:flutter/material.dart';
import 'package:mobile_cipta_puisi/src/features/authentication/authentication.dart';

import '../features/home/home.dart';
import '../features/onboarding/onboarding.dart';
import '../features/splash/splash.dart';

class ConfigRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    "/splash": (_) => const SplashScreen(),
    "/onboarding": (_) => const OnBoardingScreen(),

    /// AUTHENTICATION
    "/login": (_) => const LoginScreen(),
    "/register": (_) => const RegisterScreen(),

    "/": (_) => const HomeScreen(),
  };
}
