import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_bloc/weather_bloc.dart';
import 'package:weather_app/models/location.dart';

class HomeScreenWeatherInfoColumn extends StatefulWidget {
  final LocationData locationData;

  const HomeScreenWeatherInfoColumn({Key? key, required this.locationData})
      : super(key: key);

  @override
  State<HomeScreenWeatherInfoColumn> createState() => _HomeScreenWeatherInfoColumnState();
}

class _HomeScreenWeatherInfoColumnState extends State<HomeScreenWeatherInfoColumn> {
  late WeatherBloc _weatherBloc;

  @override
  void initState() {
    super.initState();
    _weatherBloc = context.read<WeatherBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
        bloc: _weatherBloc,
        builder: (context, state) {
          if (state is WeatherInitialState) {
            _weatherBloc.add(WeatherFetchedEvent(widget.locationData));
          } else if(state is WeatherLoadingState){
            return CircularProgressIndicator();
          } else if(state is WeatherLoadedState){
            final weatherData = state.weatherData;
            return Column(
              children: [
                Text(weatherData.cityName),
              ],
            );
          }
          return Text('Error');
        }
        );
  }
}
