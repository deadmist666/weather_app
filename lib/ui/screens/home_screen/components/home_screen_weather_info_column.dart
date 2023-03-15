import 'package:flutter/material.dart';

import 'package:weather_app/models/weather.dart';

class HomeScreenWeatherInfoColumn extends StatelessWidget {
  final Weather weatherInfo;

  const HomeScreenWeatherInfoColumn({Key? key, required this.weatherInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(weatherInfo.weatherImage),
        Text(weatherInfo.cityName),
        Text('${weatherInfo.temp}'),
        ElevatedButton(
            onPressed: () {
              print(size.height);
              print(size.width);
            },
            child: Text('size')),
      ],
    );
  }
}
