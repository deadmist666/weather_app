class Weather {
  final double temp;
  final String weatherImage;
  final String cityName;

  Weather(
      {required this.weatherImage, required this.temp, required this.cityName});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temp: json['main']['temp'],
      weatherImage: json['weather'][0]['icon'],
      cityName: json['name'],
    );
  }
}

List<Weather> fooWeatherList = [
  Weather(weatherImage: 'sun_img', temp: 24, cityName: 'Zhytomyr'),
  Weather(weatherImage: 'cloudy_img', temp: 10, cityName: 'Kaniv'),
];
