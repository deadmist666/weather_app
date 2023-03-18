part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class WeatherFetchedEvent extends WeatherEvent {
  final LocationData locationData;

  WeatherFetchedEvent(this.locationData);
}
