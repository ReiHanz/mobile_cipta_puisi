import 'package:flutter/material.dart';

class ConfigTheme {
  static final ThemeData themeLight = ThemeData(
    fontFamily: "Balsamic",
    colorScheme: _colorSchemeLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: elevatedButtonStyle,
    ),
  );

  static final ThemeData themeDark = ThemeData(
    fontFamily: "Balsamic",
    colorScheme: _colorsSchemeDark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: elevatedButtonStyle,
    ),
  );

  // elevated button style
  static final ButtonStyle elevatedButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.all(16.0),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      _colorSchemeLight.primary,
    ),
    foregroundColor: MaterialStateProperty.all<Color>(
      _colorSchemeLight.onPrimary,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static const ColorScheme _colorSchemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xffF09F29),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffbde9ff),
    onPrimaryContainer: Color(0xff001f2a),
    secondary: Color(0xff4d616c),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffd0e6f2),
    onSecondaryContainer: Color(0xff081e27),
    tertiary: Color(0xff5d5b7d),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffe3dfff),
    onTertiaryContainer: Color(0xff191836),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff410002),
    background: Color(0xfffbfcfe),
    onBackground: Color(0xff191c1e),
    surface: Color(0xfffbfcfe),
    onSurface: Color(0xff191c1e),
    surfaceVariant: Color(0xffdce4e9),
    onSurfaceVariant: Color(0xff40484c),
    outline: Color(0xff70787d),
    outlineVariant: Color(0xffc0c8cd),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2e3132),
    onInverseSurface: Color(0xffeff1f3),
    inversePrimary: Color(0xff66d3ff),
    surfaceTint: Color(0xff006684),
  );

  static const ColorScheme _colorsSchemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffF09F29),
    onPrimary: Color(0xff003546),
    primaryContainer: Color(0xff004d64),
    onPrimaryContainer: Color(0xffbde9ff),
    secondary: Color(0xffb4cad6),
    onSecondary: Color(0xff1f333c),
    secondaryContainer: Color(0xff354a53),
    onSecondaryContainer: Color(0xffd0e6f2),
    tertiary: Color(0xffc6c2ea),
    onTertiary: Color(0xff2e2d4d),
    tertiaryContainer: Color(0xff454364),
    onTertiaryContainer: Color(0xffe3dfff),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffb4ab),
    background: Color(0xff191c1e),
    onBackground: Color(0xffe1e2e4),
    surface: Color(0xff191c1e),
    onSurface: Color(0xffe1e2e4),
    surfaceVariant: Color(0xff40484c),
    onSurfaceVariant: Color(0xffc0c8cd),
    outline: Color(0xff8a9297),
    outlineVariant: Color(0xff40484c),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe1e2e4),
    onInverseSurface: Color(0xff2e3132),
    inversePrimary: Color(0xff006684),
    surfaceTint: Color(0xff66d3ff),
  );
}
