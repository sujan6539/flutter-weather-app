import 'package:flutter/material.dart';

class AppColors {

  Color primaryColor = const Color(0xFF00A8D4);
  Color onPrimary = const Color(0xFF0E1010);
  Color secondaryColor = const Color(0xFF00CCFF);
  Color surface = const Color(0x50A0A0A0);

  ThemeData toThemeData() {
    final colorScheme = ColorScheme(
        brightness: Brightness.dark,
        primary: primaryColor,
        onPrimary: onPrimary,
        secondary: secondaryColor,
        onSecondary: onPrimary,
        error: Colors.red,
        onError: Colors.white,
        background: onPrimary,
        onBackground: Colors.white,
        surface: surface,
        onSurface: Colors.white);
    return ThemeData.from(colorScheme: colorScheme);
  }
}