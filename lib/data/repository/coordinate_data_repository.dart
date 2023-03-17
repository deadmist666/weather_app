import 'package:weather_app/data/api/coordinate_data_handler.dart';
import 'package:weather_app/models/location.dart';

class CoordinateRepository {
  Future<void> saveCoordinateData(double latitude, double longitude) async {
    CoordinateHandler().saveCoordinateData(latitude, longitude);
  }

  Future<List<LocationData>> loadCoordinateData() async {
    List<LocationData> data = await CoordinateHandler().loadCoordinateData();
    return data;
  }
}
