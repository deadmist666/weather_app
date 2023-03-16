import 'package:weather_app/data/api/open_weather_map_api.dart';

class OpenWeatherMapRepository {
  Future<dynamic> fetchWeatherDataByLatLong(String latitude, String longitude) async{
    return OpenWeatherMapApi().fetchWeatherDataByLatLong(latitude, longitude);
  }
  Future<dynamic> fetchWeatherDataByCityName(String cityName) async {
    return OpenWeatherMapApi().fetchWeatherDataByCityName(cityName);
  }
}