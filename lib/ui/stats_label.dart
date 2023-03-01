import 'package:flutter/material.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatsLabel extends StatelessWidget {
  IconData icon;
  String stats;
  String description;

  StatsLabel(
      {Key? key,
      required this.icon,
      required this.stats,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          color: Colors.white.withOpacity(0.6),
          size: MyApp.$style.dimens.dimens_24,
        ),
        Padding(
          padding: EdgeInsets.all(MyApp.$style.insets.xxs),
          child: Text(
            stats,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          description,
          style: TextStyle(color: Colors.white.withOpacity(0.7)),
        )
      ],
    );
  }
}
