import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/models/location.dart';

class CoordinateHandler {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveCoordinateData(double latitude, double longitude) async {
    final prefs = await _prefs;
    await prefs.setString('location', '$latitude,$longitude');
  }

  Future<List<LocationData>> loadCoordinateData() async {
    final prefs = await _prefs;
    String locationString = prefs.getString('location') ?? '';
    List<String> parts = locationString.split(',');
    if (parts.length == 2) {
      final latitude = double.tryParse(parts[0]) ?? 0.0;
      final longitude = double.tryParse(parts[1]) ?? 0.0;
      final coordinate = LocationData(latitude, longitude);
      return [coordinate];
    }
    else{
      return [];
    }
  }
}