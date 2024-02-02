import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_cipta_puisi/src/config/routes.dart';
import 'package:mobile_cipta_puisi/src/config/themes/theme.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mobile Cipta Puisi",
      initialRoute: "/splash",
      routes: ConfigRoutes.routes,
      themeMode: ThemeMode.light,
      theme: ConfigTheme.themeLight,
      darkTheme: ConfigTheme.themeDark,
    );
  }
}
