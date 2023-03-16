import 'package:geolocator/geolocator.dart';
import 'package:weather_app/data/api/geolocator_api.dart';

class CurrentLocationRepository {
  Future<Position> fetchCurrentLocation() async {
    final currentPosition = await GeolocatorApi().fetchCurrentLocation();
    return currentPosition;
  }
}