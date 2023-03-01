import 'package:flutter/material.dart';
import 'package:flutter_weather_app/ui/hero_card.dart';

class StackedHeroCard extends StatefulWidget {
  StackedHeroCard({
    Key? key,
    required List<HeroCard> heroCardList,
    double spaceBetweenItems = 400,
    PageController? pageController,
  })  : assert(heroCardList.isNotEmpty),
        _items = heroCardList,
        _spaceBetweenItems = spaceBetweenItems,
        _pageController = pageController;

  final List<HeroCard> _items;
  final double _spaceBetweenItems;
  final PageController? _pageController;

  @override
  State<StackedHeroCard> createState() => _StackedHeroCardState();
}

class _StackedHeroCardState extends State<StackedHeroCard> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 2,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container();
        });
  }
}
