import 'package:weather_app/data/api/open_weather_map_api.dart';
import 'package:weather_app/models/weather.dart';

class OpenWeatherMapRepository {
  Future<dynamic> fetchWeatherDataByLatLong(
      {double latitude = 0.0, double longitude = 0.0}) async {
    final weatherData = await OpenWeatherMapApi()
        .fetchWeatherDataByLatLong(latitude: latitude, longitude: longitude);
    return Weather.fromJson(weatherData);
  }

  Future<dynamic> fetchWeatherDataByCityName(String cityName) async {
    return OpenWeatherMapApi().fetchWeatherDataByCityName(cityName);
  }
}
