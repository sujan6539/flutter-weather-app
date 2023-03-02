import 'package:chopper/chopper.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';

abstract class WeatherRepository {
  Future<Response<dynamic>> getWeather(
      {required double latitude, required double longitude});
}
