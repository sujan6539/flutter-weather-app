import 'package:flutter/material.dart';
import 'package:flutter_weather_app/presentation/ui/hero_card.dart';
import 'package:flutter_weather_app/presentation/ui/stacked_hero_card.dart';

class Dashboard extends StatelessWidget {
  DashboardWeather dashboardWeather;

  Dashboard({Key? key, required this.dashboardWeather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        HeroCard(dashboardWeather: dashboardWeather,),
      ],
    ));
  }
}

class DashboardWeather {
  String date;
  String day;
  String temperature;
  IconData icon;
  String location;
  String weatherType;

  DashboardWeather(
      {required this.date,
      required this.day,
      required this.temperature,
      required this.icon,
      required this.location,
      required this.weatherType});
}
