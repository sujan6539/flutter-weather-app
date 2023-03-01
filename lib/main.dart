import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/dashboard.dart';
import 'package:flutter_weather_app/screens/pick_location.dart';
import 'package:flutter_weather_app/styles/colors.dart';
import 'package:flutter_weather_app/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static AppStyle get $style => _style;
  static AppStyle _style = AppStyle();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppColors().toThemeData(),
        home: Scaffold(
          body: Dashboard(),
        ));
  }
}
