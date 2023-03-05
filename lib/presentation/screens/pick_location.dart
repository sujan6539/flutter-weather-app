import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_weather_app/business/bloc/get_weather_bloc.dart';
import 'package:flutter_weather_app/business/bloc/get_weather_bloc.dart';
import 'package:flutter_weather_app/datalayer/https_weather_repository.dart';
import 'package:flutter_weather_app/datalayer/open_weather_map_api_service.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:flutter_weather_app/presentation/ui/hero_card.dart';
import 'package:flutter_weather_app/presentation/ui/rectangle_card.dart';
import 'package:flutter_weather_app/presentation/ui/search_bar.dart';
import 'package:flutter_weather_app/presentation/ui/square_card.dart';

import '../utils/datetime_utils.dart';

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
          BlocBuilder<GetWeatherBloc, GetWeatherState>(
            builder: (_, state) {
              if (state is GetWeather) {
                var weatherlist = (state as GetWeather).weatherResponse.list;
                return Expanded(
                  child: MasonryGridView.count(
                    itemCount: weatherlist?.length ?? 0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20,
                    itemBuilder: (context, index) {
                      if (index == 1) {
                        return Container(
                          height: 20,
                        );
                      }
                      var item = weatherlist?[index];
                      if (item?.temp != null) {
                        String date = DateTimeUtils.EpocToDateTimeMMMMEEEEd(
                            item?.dt?.toInt() ?? 0);
                        return SquareCard(
                          data: item!.temp?.day?.toString() ?? '',
                          type: item.weather?.first.main ?? '',
                          place: (state).weatherResponse.city?.name ?? "",
                          date: date,
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    ));
  }
}
