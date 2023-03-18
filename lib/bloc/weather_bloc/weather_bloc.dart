import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/repository/open_weather_map_repository.dart';
import 'package:weather_app/models/location.dart';
import 'package:weather_app/models/weather.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitialState()) {
    on<WeatherFetchedEvent>((event, emit) async {
      try {
        emit(WeatherLoadingState());
        final lat = event.locationData.latitude;
        final long = event.locationData.longitude;
        final weatherData = await _fetchWeatherDataByLatLong(lat, long);
        emit(WeatherLoadedState(weatherData));
      } catch (e) {
        emit(WeatherErrorState(e.toString()));
      }
    });
  }

  Future<Weather> _fetchWeatherDataByLatLong(double lat, double long) async {
    return await OpenWeatherMapRepository()
        .fetchWeatherDataByLatLong(latitude: lat, longitude: long);
  }
}
