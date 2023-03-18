import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/repository/coordinate_data_repository.dart';
import 'package:weather_app/data/repository/current_location_repository.dart';
import 'package:weather_app/models/location.dart';

part 'location_event.dart';

part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitialState()) {
    on<LocationImportEvent>((event, emit) async {
        try {
          emit(LocationSavingState());
           await _saveLocationData(event.importedLocationDataList.latitude, event.importedLocationDataList.longitude);
          emit(LocationSavedState());
        } catch (e) {
          emit(LocationErrorState(e.toString()));
        }
    });
    on<LocationExportEvent>((event, emit) async {
        try {
          emit(LocationExtractingState());
          final locationDataList = await _loadLocationData();
          if (locationDataList.length < 1) {
            final coordinateData =
                await CurrentLocationRepository().fetchCurrentLocation();
            final lat = coordinateData.latitude;
            final long = coordinateData.longitude;
            _saveLocationData(lat, long);
            emit(LocationExtractedState(
                locationDataList: [LocationData(lat, long)]));
          } else
            emit(LocationExtractedState(locationDataList: locationDataList));
        } catch (e) {
          LocationErrorState(e.toString());
        }
    });
  }

  Future<List<LocationData>> _loadLocationData() {
    return LocationRepository().loadLocationData();
  }
  Future<void> _saveLocationData(double lat, double long) {
    return LocationRepository().saveLocationData(lat, long);
  }
}