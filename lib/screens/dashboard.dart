import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/hero_card.dart';
import 'package:flutter_weather_app/ui/stacked_hero_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        HeroCard(),
        StackedHeroCard(
          heroCardList: [HeroCard(), HeroCard()],
        ),
      ],
    ));
  }
}
