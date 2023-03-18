part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final Weather weatherData;

  WeatherLoadedState(this.weatherData);
}

class WeatherErrorState extends WeatherState {
  final String message;

  WeatherErrorState(this.message);
}
