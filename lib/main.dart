import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_weather_app/presentation/screens/dashboard.dart';
import 'package:flutter_weather_app/presentation/screens/pick_location.dart';
import 'package:flutter_weather_app/presentation/styles/colors.dart';
import 'package:flutter_weather_app/presentation/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static AppStyle get $style => _style;
  static final AppStyle _style = AppStyle();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppColors().toThemeData(),
        home: const Scaffold(
          body: PickLocation(),
        ));
  }
}
