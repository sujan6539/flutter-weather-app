import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../datalayer/https_weather_repository.dart';
import '../../datalayer/open_weather_map_api_service.dart';
import '../../domain/model/WeatherResponse.dart';

part 'get_weather_event.dart';

part 'get_weather_state.dart';

class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  late HttpWeatherRepository httpWeatherRepository;

  GetWeatherBloc({required this.httpWeatherRepository})
      : super(GetWeatherInitial()) {
    on<GetWeatherEvent>((event, emit) {});
  }

  void _mapGetWeatherEventToState(
      GetWeatherEvent event, Emitter<GetWeatherState> emit) async {
    emit(GetWeather(GetWeatherStateEnum.LOADING));
    try {
      final Response<dynamic> response =
          await HttpWeatherRepository(api: OpenWeatherMapAPIService.create())
              .getWeather(latitude: 44.34, longitude: 10.99);

      if (response.isSuccessful) {
        // Successful request
        final body = response.body;
        var result = WeatherResponse.fromJson(body);
        debugPrint(result.toString());
        emit(GetWeather(GetWeatherStateEnum.SUCCESS));
      } else {
        // Error code received from server
        final code = response.statusCode;
        final error = response.error;
        debugPrint(null);
        emit(GetWeather(GetWeatherStateEnum.FAILURE));
      }
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(GetWeather(GetWeatherStateEnum.FAILURE));
    }
  }
}
