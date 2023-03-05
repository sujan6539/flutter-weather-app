import 'package:chopper/chopper.dart';

abstract class WeatherRepository {
  Future<Response<dynamic>> getWeather(
      {required double latitude, required double longitude});

  Future<Response<dynamic>> getGeocodeFromLocation({
    required String location
  });

}
