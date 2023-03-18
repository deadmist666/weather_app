import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/models/weather.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/bloc/location_bloc/location_bloc.dart';
import 'package:weather_app/ui/screens/home_screen/components/home_screen_weather_info_column.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  PageController _pageController = PageController();
  late LocationBloc _locationBloc;

  @override
  void initState() {
    super.initState();
    _locationBloc = context.read<LocationBloc>();
  }

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
      body: BlocBuilder<LocationBloc, LocationState>(
          bloc: _locationBloc,
          builder: (context, state) {
            if (state is LocationInitialState) {
              _locationBloc.add(LocationExportEvent());
            } else if (state is LocationExtractingState) {
              return CircularProgressIndicator();
            } else if (state is LocationExtractedState) {
              return PageView.builder(
                  controller: _pageController,
                  itemCount: state.locationDataList.length,
                  itemBuilder: (context, index) {
                    return HomeScreenWeatherInfoColumn(
                        locationData: state.locationDataList[index]);
                  });
            }
            return Text('error');
          }),
    );
  }
}
