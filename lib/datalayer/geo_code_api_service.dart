import 'package:chopper/chopper.dart';
import 'package:flutter_weather_app/datalayer/api_constant.dart';

part 'geo_code_api_service.chopper.dart';

@ChopperApi(baseUrl: ApiConstant.geocodeBaseURL)
abstract class GeocodeAPIService extends ChopperService {

  @Get(path: ApiConstant.getGeocodeFromLocationPath)
  Future<Response<dynamic>> getGeocodeFromLocation(
      {@Query('appid') required String key,
      @Query('q') required String location});

  static GeocodeAPIService create() {
    final geocodeChopperClient = ChopperClient(
      services: [_$GeocodeAPIService()],
      converter: JsonConverter(),
    );
    return _$GeocodeAPIService(geocodeChopperClient);
  }
}
