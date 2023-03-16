import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';


class GeolocatorApi extends ChangeNotifier {
  Future<Position> fetchCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    notifyListeners();

    return position;
  }
}
