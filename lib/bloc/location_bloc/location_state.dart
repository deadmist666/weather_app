part of 'location_bloc.dart';

@immutable
abstract class LocationState {}

class LocationInitialState extends LocationState {}

class LocationSavingState extends LocationState {}

class LocationSavedState extends LocationState {}

class LocationExtractingState extends LocationState {}

class LocationExtractedState extends LocationState {
  final List<LocationData> locationDataList;

  LocationExtractedState({this.locationDataList = const []});
}

class LocationErrorState extends LocationState {
  final String message;

  LocationErrorState(this.message);
}
