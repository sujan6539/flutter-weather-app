part of 'get_weather_bloc.dart';

@immutable
abstract class GetWeatherEvent {}

class GetWeatherForLocation extends GetWeatherEvent {
  final String location;

  GetWeatherForLocation({required this.location});

  List<Object?> get props => [location];
}
