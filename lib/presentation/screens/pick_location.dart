import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_weather_app/datalayer/https_weather_repository.dart';
import 'package:flutter_weather_app/datalayer/open_weather_map_api_service.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:flutter_weather_app/presentation/ui/hero_card.dart';
import 'package:flutter_weather_app/presentation/ui/rectangle_card.dart';
import 'package:flutter_weather_app/presentation/ui/search_bar.dart';
import 'package:flutter_weather_app/presentation/ui/square_card.dart';

class PickLocation extends StatelessWidget {
  const PickLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.fromLTRB(
          MyApp.$style.insets.sm,
          MyApp.$style.insets.md,
          MyApp.$style.insets.md,
          MyApp.$style.insets.sm),
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
          Container(
              margin: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 25.0),
              child: SearchBar()),
          Expanded(
            child: MasonryGridView.count(
              itemCount: 9,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 20,
              itemBuilder: (context, index) {
                if (index == 1) {
                  return Container(
                    height: 20,
                  );
                }
                return SquareCard();
              },
            ),
          )
        ],
      ),
    ));
  }
}
