import 'package:weather_app/data/api/coordinate_data_handler.dart';
import 'package:weather_app/models/location.dart';

class LocationRepository {
  Future<void> saveLocationData(double latitude, double longitude) async {
    await LocationHandler().saveLocationData(latitude, longitude);
  }

  Future<List<LocationData>> loadLocationData() async {
    List<LocationData> data = await LocationHandler().loadLocationData();
    return data;
  }
}
