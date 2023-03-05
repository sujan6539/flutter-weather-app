part of 'get_weather_bloc.dart';

abstract class GetWeatherState {
  abstract GetWeatherStateEnum getWeatherStateEnum;
}

enum GetWeatherStateEnum { INITIAL, LOADING, SUCCESS, FAILURE }

class GetWeatherInitial extends GetWeatherState {
  @override
  GetWeatherStateEnum getWeatherStateEnum = GetWeatherStateEnum.INITIAL;
}

class GetWeatherLoading extends GetWeatherState {
  @override
  GetWeatherStateEnum getWeatherStateEnum = GetWeatherStateEnum.LOADING;
}

class GetWeather extends GetWeatherState {
  WeatherResponse weatherResponse;

  GetWeather(this.getWeatherStateEnum, {required this.weatherResponse});

  @override
  GetWeatherStateEnum getWeatherStateEnum = GetWeatherStateEnum.LOADING;
}

class GetWeatherFailure extends GetWeatherState {
  @override
  GetWeatherStateEnum getWeatherStateEnum = GetWeatherStateEnum.FAILURE;
}
