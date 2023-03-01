import 'package:flutter_weather_app/datalayer/open_weather_map_api_service.dart';
import 'package:flutter_weather_app/datalayer/weather_repository.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';

class HttpWeatherRepository extends WeatherRepository{

  HttpWeatherRepository({required this.api});

  // custom class defining all the API details
  final OpenWeatherMapAPIService api;
  // client for making calls to the API
  // final http.Client client;

  @override
  Future<WeatherResponse> getWeather({required double latitude, required double longitude}) {
    // TODO: implement getWeather
    throw UnimplementedError();
  }

}