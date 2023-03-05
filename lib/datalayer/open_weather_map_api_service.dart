import 'package:chopper/chopper.dart';
import 'package:flutter_weather_app/datalayer/api_constant.dart';

part "open_weather_map_api_service.chopper.dart";

@ChopperApi(baseUrl: ApiConstant.baseURL)
abstract class OpenWeatherMapAPIService extends ChopperService {
  @Get(path: ApiConstant.currentWeatherPath)
  Future<Response<dynamic>> getCurrentWeather(
      {@Query('lat') required double lat,
      @Query('lon') required double lon,
        @Query('appid') required String key,
      @Query('units')  String unit = 'metric',
      @Query('cnt')  String cnt = '9',});

  static OpenWeatherMapAPIService create() {
    final chopperClient = ChopperClient(services: [
      // Create and pass an instance of the generated service to the client
      _$OpenWeatherMapAPIService()
    ], converter: const JsonConverter());
    return _$OpenWeatherMapAPIService(chopperClient);
  }
}
