import 'package:flutter/material.dart';

import 'package:weather_app/models/weather.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/ui/screens/home_screen/components/home_screen_weather_info_column.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SmoothPageIndicator(
          controller: _pageController,
          count: fooWeatherList.length,
          effect: WormEffect(
            type: WormType.thin,
            activeDotColor: Colors.deepPurpleAccent,
            dotColor: Colors.black12,
            dotHeight: 10,
            dotWidth: 10,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: PageView.builder(
          itemCount: fooWeatherList.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            return HomeScreenWeatherInfoColumn(
              weatherInfo: fooWeatherList[index],
            );
          }),
    );
  }
}
