import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';

abstract class WeatherRepository {
  Future<WeatherResponse> getWeather(
      {required double latitude, required double longitude});
}
