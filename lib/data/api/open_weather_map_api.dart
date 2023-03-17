import 'dart:convert';

import 'package:http/http.dart' as http;

class OpenWeatherMapApi {
  static const apiKey = '75a63f7421744b5d5f76aca3a94a6ae3';

  String weatherDataUrlByLatLong(double latitude, double longitude) {
    return 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';
  }

  String weatherDataUrlByCityName(String cityName) {
    return 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey';
  }

  Future<dynamic> fetchWeatherDataByLatLong(
      {double latitude = 0.0, double longitude = 0.0}) async {
    final response =
        await http.get(Uri.parse(weatherDataUrlByLatLong(latitude, longitude)));
    return jsonDecode(response.body);
  }

  Future<dynamic> fetchWeatherDataByCityName(String cityName) async {
    final response =
        await http.get(Uri.parse(weatherDataUrlByCityName(cityName)));
    return jsonDecode(response.body);
  }
}
