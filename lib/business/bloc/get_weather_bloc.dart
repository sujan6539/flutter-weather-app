import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/datalayer/geo_code_api_service.dart';
import 'package:flutter_weather_app/domain/model/GeocodeResponse.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';
import 'package:meta/meta.dart';

import '../../datalayer/https_weather_repository.dart';
import '../../datalayer/open_weather_map_api_service.dart';

part 'get_weather_event.dart';

part 'get_weather_state.dart';

class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  late HttpWeatherRepository httpWeatherRepository;

  GetWeatherBloc({required this.httpWeatherRepository})
      : super(GetWeatherInitial()) {
    on<GetWeatherEvent>((event, emit) async {
      try {
        final Response<dynamic> locationResponse = await httpWeatherRepository
            .getGeocodeFromLocation(location: (event as GetWeatherForLocation).location);
        if (locationResponse.isSuccessful) {
          final body = locationResponse.body[0];
          var result = GeocodeResponse.fromJson(body);
          if (result.lat != null && result.lon != null) {
            final Response<dynamic> response = await HttpWeatherRepository(
                api: OpenWeatherMapAPIService.create(),
                geocodeAPIService: GeocodeAPIService.create())
                .getWeather(
                latitude: result.lat!.toDouble(),
                longitude: result.lon!.toDouble());
            if (response.isSuccessful) {
              // Successful request
              final body = response.body;
              var result = WeatherResponse.fromJson(body);
              debugPrint(result.toString());
              emit(GetWeather(GetWeatherStateEnum.SUCCESS,
                  weatherResponse: result));
            } else {
              // Error code received from server
              final code = response.statusCode;
              final error = response.error;
              debugPrint(null);
              emit(GetWeatherFailure());
            }
          }
        }
      } catch (error, stacktrace) {
        debugPrint(stacktrace.toString());
        emit(GetWeatherFailure());
      }
    });
  }

  void _mapGetWeatherEventToState(
      GetWeatherForLocation event, Emitter<GetWeatherState> emit) async {
    emit(GetWeatherLoading());

    try {
      final Response<dynamic> locationResponse = await httpWeatherRepository
          .getGeocodeFromLocation(location: event.location);
      if (locationResponse.isSuccessful) {
        final body = locationResponse.body;
        var result = GeocodeResponse.fromJson(body);
        if (result.lat != null && result.lon != null) {
          final Response<dynamic> response = await HttpWeatherRepository(
                  api: OpenWeatherMapAPIService.create(),
                  geocodeAPIService: GeocodeAPIService.create())
              .getWeather(
                  latitude: result.lat!.toDouble(),
                  longitude: result.lon!.toDouble());
          if (response.isSuccessful) {
            // Successful request
            final body = response.body;
            var result = WeatherResponse.fromJson(body);
            debugPrint(result.toString());
            emit(GetWeather(GetWeatherStateEnum.SUCCESS,
                weatherResponse: result));
          } else {
            // Error code received from server
            final code = response.statusCode;
            final error = response.error;
            debugPrint(null);
            emit(GetWeatherFailure());
          }
        }
      }
    } catch (error, stacktrace) {
      debugPrint(stacktrace.toString());
      emit(GetWeatherFailure());
    }
  }
}
