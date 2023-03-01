import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/rectangle_card.dart';
import 'package:flutter_weather_app/ui/square_card.dart';

import '../ui/hero_card.dart';

class PickLocation extends StatelessWidget {
  const PickLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pick Location",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Find the area or the city you want to know the detailed weather info at this time",
            textAlign: TextAlign.center,
          ),
        ),
        SquareCard(),
        RectangleCard(),
        HeroCard()
      ],
    ));
  }
}
