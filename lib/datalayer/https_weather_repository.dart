import 'package:chopper/chopper.dart';
import 'package:flutter_weather_app/datalayer/geo_code_api_service.dart';
import 'package:flutter_weather_app/datalayer/open_weather_map_api_service.dart';
import 'package:flutter_weather_app/datalayer/weather_repository.dart';
import 'package:flutter_weather_app/domain/model/WeatherResponse.dart';
import 'package:flutter_weather_app/properties.dart';

class HttpWeatherRepository extends WeatherRepository {
  HttpWeatherRepository({required this.api, required this.geocodeAPIService});

  // custom class defining all the API details
  final OpenWeatherMapAPIService api;
  final GeocodeAPIService geocodeAPIService;

  @override
  Future<Response<dynamic>> getWeather(
      {required double latitude, required double longitude}) {
    return api.getCurrentWeather(
        key: weatherApiKey, lat: latitude, lon: longitude);
  }

  @override
  Future<Response> getGeocodeFromLocation({required String location}) {
    return geocodeAPIService.getGeocodeFromLocation(
        key: weatherApiKey, location: location);
  }
}