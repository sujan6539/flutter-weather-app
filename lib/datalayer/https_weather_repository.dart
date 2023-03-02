import 'package:chopper/chopper.dart';
import 'package:flutter_weather_app/datalayer/open_weather_map_api_service.dart';
import 'package:flutter_weather_app/datalayer/weather_repository.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';
import 'package:flutter_weather_app/properties.dart';

class HttpWeatherRepository extends WeatherRepository{

  HttpWeatherRepository({required this.api});

  // custom class defining all the API details
  final OpenWeatherMapAPIService api;
  // client for making calls to the API
  // final http.Client client;

  @override
  Future<Response<dynamic>> getWeather({required double latitude, required double longitude}) {
    return api.getCurrentWeather(key: weatherApiKey, lat: latitude, lon: longitude);
  }

}