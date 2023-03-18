import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/models/location.dart';

class LocationHandler {
  static const keyLocation = 'location';
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveLocationData(double latitude, double longitude) async {
    final prefs = await _prefs;
    await prefs.setString(keyLocation, '$latitude,$longitude');
  }

  Future<List<LocationData>> loadLocationData() async {
    final prefs = await _prefs;
    String locationString = prefs.getString(keyLocation) ?? '';
    List<String> parts = locationString.split(',');
    List<LocationData> locationDataList = [];
    if (parts.length % 2 == 0 && parts.length >= 2) {
      for(int i = 0; i<parts.length; i+=2 ) {
        final latitude = double.tryParse(parts[i]) ?? 0.0;
        final longitude = double.tryParse(parts[i + 1]) ?? 0.0;
        final location = LocationData(latitude, longitude);
        locationDataList.add(location);
      }
    }
    return locationDataList;
  }
}