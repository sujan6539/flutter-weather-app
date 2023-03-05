import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_weather_app/business/bloc/get_weather_bloc.dart';
import 'package:flutter_weather_app/datalayer/geo_code_api_service.dart';
import 'package:flutter_weather_app/datalayer/https_weather_repository.dart';
import 'package:flutter_weather_app/datalayer/open_weather_map_api_service.dart';
import 'package:flutter_weather_app/presentation/screens/dashboard.dart';
import 'package:flutter_weather_app/presentation/screens/pick_location.dart';
import 'package:flutter_weather_app/presentation/styles/colors.dart';
import 'package:flutter_weather_app/presentation/styles/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        home: Scaffold(
          body: BlocProvider(
            create: (_) => GetWeatherBloc(
                httpWeatherRepository: HttpWeatherRepository(
                    api: OpenWeatherMapAPIService.create(),
                    geocodeAPIService: GeocodeAPIService.create())),
            child: PickLocation(),
          ),
        ));
  }
}
