part of 'location_bloc.dart';

@immutable
abstract class LocationEvent {}

class LocationImportEvent  extends LocationEvent {
 final LocationData importedLocationDataList;

  LocationImportEvent(this.importedLocationDataList);
}

class LocationExportEvent extends LocationEvent {}