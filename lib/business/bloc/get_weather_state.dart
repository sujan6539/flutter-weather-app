part of 'get_weather_bloc.dart';

abstract class GetWeatherState {
  abstract GetWeatherStateEnum getWeatherStateEnum;
}

enum GetWeatherStateEnum { INITIAL, LOADING, SUCCESS, FAILURE }

class GetWeatherInitial extends GetWeatherState {
  @override
  GetWeatherStateEnum getWeatherStateEnum = GetWeatherStateEnum.INITIAL;
}

class GetWeather extends GetWeatherState {

  GetWeather(this.getWeatherStateEnum);

  @override
  GetWeatherStateEnum getWeatherStateEnum = GetWeatherStateEnum.LOADING;


}
