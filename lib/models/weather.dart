class Weather {
  final int temp;
  final String weatherImage;
  final String cityName;

  Weather({required this.weatherImage, required this.temp, required this.cityName});
}

List<Weather> fooWeatherList = [
  Weather(weatherImage: 'sun_img', temp: 24, cityName: 'Zhytomyr'),
  Weather(weatherImage: 'cloudy_img',temp: 10, cityName: 'Kaniv'),
];
